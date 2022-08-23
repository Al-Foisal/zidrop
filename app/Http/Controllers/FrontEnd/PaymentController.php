<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Merchant;
use App\Topup;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Paystack;

class PaymentController extends Controller {
    public function topup() {
        $merchant = Merchant::find(Session::get('merchantId'));
        $topup    = Topup::where('merchant_id', $merchant->id)->get();

        return view('frontEnd.layouts.pages.merchant.topup', compact('merchant', 'topup'));
    }

    public function verifypayment($reference) {
        $curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL            => "https://api.paystack.co/transaction/verify/$reference",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING       => "",
            CURLOPT_MAXREDIRS      => 10,
            CURLOTP_SSL_VERIFYHOST => 0,
            CURLOTP_SSL_VERIFYPEER => 0,
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST  => "GET",
            CURLOPT_HTTPHEADER     => [
                "Authorization: Bearer sk_live_c642c426956ec639d11d0c7bcbdf6f0bb41a1871",
                "Cache-Control: no-cache",
            ],
        ]);

        $response = curl_exec($curl);
        $err      = curl_error($curl);

        curl_close($curl);
        $new_data = json_decode($response);

        return [$new_data];
    }

    public function storePayment(Request $request) {
        Topup::create([
            'merchant_id' => Session::get('merchantId'),
            'email'       => $request->email,
            'message'     => $request->message,
            'amount'      => $request->amount,
            'reference'   => $request->reference,
            'status'      => $request->status,
            'channel'     => $request->channel,
            'currency'    => $request->currency,
            'created_at'  => $request->created_at,
        ]);

        $merchant          = Merchant::find(Session::get('merchantId'));
        $merchant->balance = $merchant->balance + $request->amount;
        $merchant->save();

        return response()->json(['status' => true]);
    }

    public function redirectToGateway(Request $request) {
        $data              = [];
        $data['amount']    = 9999 * 100;
        $data['reference'] = 999;
        $data['email']     = 'a@a.com';
        $data['currency']  = 'NGN';
        $data['orderID']   = 22;

        return paystack()->getAuthorizationUrl()->redirectNow();

    }

    /**
     * Obtain Paystack payment information
     * @return void
     */
    public function handleGatewayCallback() {
        dd(paystack()->getPaymentData());
    }

}
