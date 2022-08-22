@extends('frontEnd.layouts.pages.merchant.merchantmaster')
@section('title', 'Dashboard')
@section('content')
    <section class="section-padding">
        <b style="text-decoration: underline;text-transform:uppercase;">Transaction count for august, 2022</b>
        <div class="container-fluid">
            <div class="d-flex justify-content-between">
                <div class="col-md-2 p-3 m-1" style="background-color:#1d2941">
                    <p class="text-center text-light">Pending</p>
                    <p class="text-center text-light">{{ $m_pending == 0 ? null : $m_pending }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#5f45da">
                    <p class="text-center text-light">Picked Up</p>
                    <p class="text-center text-light">{{ $m_pick == 0 ? null : $m_pick }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#670a91">
                    <p class="text-center text-light">Awaiting</p>
                    <p class="text-center text-light">{{ $m_await == 0 ? null : $m_await }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#096709">
                    <p class="text-center text-light">Delivered</p>
                    <p class="text-center text-light">{{ $m_deliver == 0 ? null : $m_deliver }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#9a8309">
                    <p class="text-center text-light">Returned</p>
                    <p class="text-center text-light">{{ $m_return == 0 ? null : $m_return }}</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-secondary">
                    <p class="text-center text-light">WALLET BALANCE</p>
                    <p class="text-center text-light">{{ $m_wallet == 0 ? null : $m_wallet }}</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding">
        <b style="text-decoration: underline">TRANSACTION COUNT FROM INCEPTION</b>
        <div class="container-fluid">
            <div class="d-flex justify-content-between">
                <div class="col-md-2 p-3 m-1" style="background-color:#1d2941;">
                    <p class="text-center text-light">Pending</p>
                    <p class="text-center text-light">{{ $t_pending == 0 ? null : $t_pending }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#5f45da;">
                    <p class="text-center text-light">Picked Up</p>
                    <p class="text-center text-light">{{ $t_pick == 0 ? null : $t_pick }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#670a91;">
                    <p class="text-center text-light">Awaiting</p>
                    <p class="text-center text-light">{{ $t_await == 0 ? null : $t_await }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#096709;">
                    <p class="text-center text-light">Delivered</p>
                    <p class="text-center text-light">{{ $t_deliver == 0 ? null : $t_deliver }}</p>
                </div>
                <div class="col-md-2 p-3 m-1" style="background-color:#9a8309;">
                    <p class="text-center text-light">Returned</p>
                    <p class="text-center text-light">{{ $t_return == 0 ? null : $t_return }}</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-secondary" style="background-color:#1d2941;">
                    <p class="text-center text-light">WALLET BALANCE</p>
                    <p class="text-center text-light">{{ $merchant->balance ?? 0 }}</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="stats-all-top">
                        <h2>All Reports</h2>
                    </div>
                </div>
                <!-- column end -->
                <div class="col-sm-12">
                    <div class="stats-reportList-inner">
                        <div class="row">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">S.N.</th>
                                        <th scope="col">Recipient Name</th>
                                        <th scope="col">Recipient Address</th>
                                        <th scope="col">Tracking Code</th>
                                        <th scope="col">Parcel Weight</th>
                                        <th scope="col">Total</th>
                                        <th scope="col">Delivery Charge</th>
                                        <th scope="col">Payment Option</th>
                                        <th scope="col">Parcel Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($parcels as $key => $parcel)
                                        <tr>
                                            <th scope="row">{{ ++$key }}</th>
                                            <td>{{ $parcel->recipientName }}</td>
                                            <td>{{ $parcel->recipientAddress }}</td>
                                            <td>{{ $parcel->trackingCode }}</td>
                                            <td>{{ $parcel->productWeight }}</td>
                                            <td>{{ $parcel->cod }}</td>
                                            <td>{{ $parcel->deliveryCharge }}</td>
                                            <td>{{ $parcel->payment_option == 1 ? 'Prepaid':'Pay on Delivery' }}</td>
                                            <td>{{ $parcel->parceltype->title }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>



    <form id="paymentForm">
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" value="al@al.com" id="email-address" required />
        </div>
        <div class="form-group">
            <label for="amount">Amount</label>
            <input type="tel" value="9999" id="amount" required />
        </div>
        <div class="form-group">
            <label for="first-name">First Name</label>
            <input type="text" value="Al" id="first-name" />
        </div>
        <div class="form-group">
            <label for="last-name">Last Name</label>
            <input type="text" value="Foisal" id="last-name" />
        </div>
        <div class="form-submit">
            <button type="submit" onclick="payWithPaystack(event)"> Pay </button>
        </div>
    </form>
    <script src="https://js.paystack.co/v1/inline.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        const paymentForm = document.getElementById('paymentForm');
        paymentForm.addEventListener("submit", payWithPaystack, false);

        function payWithPaystack(e) {
            e.preventDefault();

            let handler = PaystackPop.setup({
                key: 'pk_test_6527a8b7ab7c95b81c381662f70f7423842f83b5', // Replace with your public key
                email: document.getElementById("email-address").value,
                amount: document.getElementById("amount").value * 100,
                currency: 'NGN',
                ref: '' + Math.floor((Math.random() * 1000000000) +
                1), // generates a pseudo-unique reference. Please replace with a reference you generated. Or remove the line entirely so our API will generate one for you
                // label: "Optional string that replaces customer email"
                onClose: function() {
                    alert('Window closed.');
                },
                callback: function(response) {
                    let message = response.reference;
                    alert(message);
                }
            });

            handler.openIframe();
        }
    </script>
@endsection
