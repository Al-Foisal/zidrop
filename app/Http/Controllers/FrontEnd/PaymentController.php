<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Merchant;
use App\Topup;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PaymentController extends Controller {
    public function topup() {
        $merchant = Merchant::find(Session::get('merchantId'));
        $topup    = Topup::where('merchant_id', $merchant->id)->orderBy('id','desc')->get();

        return view('frontEnd.layouts.pages.merchant.topup', compact('merchant', 'topup'));
    }

    public function verifypayment($reference) {
        $curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL            => "https://api.paystack.co/transaction/verify/$reference",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING       => "",
            CURLOPT_MAXREDIRS      => 10,
            // CURLOTP_SSL_VERIFYHOST => 0,
            // CURLOTP_SSL_VERIFYPEER => 0,
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST  => "GET",
            CURLOPT_HTTPHEADER     => [
                "Authorization: Bearer sk_test_c4ba69de2d85d25cb43ea25f6a69a29eb52d43d2",
                "Cache-Control: no-cache",
            ],
        ]);

        $response = curl_exec($curl);
        $err      = curl_error($curl);

        curl_close($curl);
        $new_data = json_decode($response);
        $new_data = [$new_data];

        return $new_data;
    }

    public function storePayment(Request $request) {
        $topup = Topup::create([
            'merchant_id' => Session::get('merchantId'),
            'email'       => $request->email,
            'amount'      => $request->amount,
            'reference'   => $request->reference,
            'status'      => $request->status,
            'channel'     => $request->channel,
            'currency'    => $request->currency,
        ]);

        $merchant          = Merchant::find(Session::get('merchantId'));
        $merchant->balance = $merchant->balance + $request->amount;
        $merchant->save();

        $count = Topup::where('merchant_id', Session::get('merchantId'))->count();

        return response()->json(['status' => true, 'top' => $topup, 'count' => $count]);
    }
}
