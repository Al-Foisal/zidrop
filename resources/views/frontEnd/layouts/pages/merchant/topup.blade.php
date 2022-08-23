@extends('frontEnd.layouts.pages.merchant.merchantmaster')
@section('title', 'Topup')
@section('content')
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <section class="section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row addpercel-inner">
                        <div class="col-sm-12">
                            <div class="addpercel-top">
                                <h3>Top up</h3>
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="fraud-search">
                                <form id="paymentForm">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text"
                                                    class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                                    value="{{ $merchant->companyName }}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text"
                                                    class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" id="email" placeholder="Customer Email" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text"
                                                    class="form-control{{ $errors->has('amount') ? ' is-invalid' : '' }}" id="amount" placeholder="Amount" required>
                                            </div>
                                        </div>
                                        <button type="submit" onclick="payWithPaystack(event)">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- col end -->
                </div>
            </div>
        </div>
    </section>

    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="tab-inner">
            <h5>Wallet History</h5>
            <table id="" class="table  table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Transaction Date</th>
                        <th>Transaction Amount</th>
                        <th>Payment Reference</th>
                        <th>Payment Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($topup as $key => $item)
                        <tr>
                            <td>{{ ++$key }}</td>
                            <td>{{ $item->created_at }}</td>
                            <td>{{ $item->amount }}</td>
                            <td>{{ $item->reference }}</td>
                            <td>{{ $item->status }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <script src="https://js.paystack.co/v1/inline.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        const paymentForm = document.getElementById('paymentForm');
        paymentForm.addEventListener("submit", payWithPaystack, false);


        function payWithPaystack(e) {
            e.preventDefault();

            let handler = PaystackPop.setup({
                key: 'pk_live_a0b1cc8fdd4c9e71e02cafbdb3b0bca575dd92fe', // Replace with your public key
                email: document.getElementById("email").value,
                amount: document.getElementById("amount").value * 100,
                ref: 'Zi_' + Math.floor(Math.random() * 9999) + '_' + Math.floor(Math.random() * 99999999) + '_' +
                    Math.floor(Math.random() * 99999),

                onClose: function() {
                    alert('Window closed.');
                },
                callback: function(response) {
                    let reference = response.reference;
                    $.ajax({
                        type: "GET",
                        url: "{{ URL::to('merchant/get/verify-payment/') }}/" + reference,
                        success: function(response) {
                            console.log(response[0])
                            if (response[0].status === true) {
                                $.ajaxSetup({
                                    headers: {
                                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                                            'content')
                                    }
                                });
                                $.ajax({
                                    type: "post",
                                    url: "{{ URL::to('merchant/get/store-payment') }}",
                                    data: {
                                        email: response[0].data.customer.email,
                                        reference: response[0].data.reference,
                                        amount: response[0].data.amount,
                                        status: response[0].data.status,
                                        channel: response[0].data.channel,
                                        currency: response[0].data.currency,
                                    },
                                    success: function(res) {
                                        if (res.status == true) {

                                            $('tbody').prepend(`
                                                <tr>
                                                    <td>##</td>
                                                    <td>${res.top.created_at} </td>   
                                                    <td>${res.top.amount} </td>   
                                                    <td>${res.top.reference} </td>   
                                                    <td>${res.top.status} </td>   
                                                </tr>
                                            `);

                                            const Toast = Swal.mixin({
                                                toast: true,
                                                position: 'top-end',
                                                showConfirmButton: false,
                                                timer: 3000,
                                                timerProgressBar: true,
                                                didOpen: (toast) => {
                                                    toast.addEventListener(
                                                        'mouseenter',
                                                        Swal.stopTimer)
                                                    toast.addEventListener(
                                                        'mouseleave',
                                                        Swal.resumeTimer
                                                    )
                                                }
                                            })

                                            Toast.fire({
                                                icon: 'success',
                                                title: 'Your transaction completed successfully!!'
                                            })


                                        } else {
                                            const Toast = Swal.mixin({
                                                toast: true,
                                                position: 'top-end',
                                                showConfirmButton: false,
                                                timer: 3000,
                                                timerProgressBar: true,
                                                didOpen: (toast) => {
                                                    toast.addEventListener(
                                                        'mouseenter',
                                                        Swal.stopTimer)
                                                    toast.addEventListener(
                                                        'mouseleave',
                                                        Swal.resumeTimer
                                                    )
                                                }
                                            })

                                            Toast.fire({
                                                icon: 'error',
                                                title: 'Something went wrong! Please contact with service provider.'
                                            })
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            });

            handler.openIframe();
        }
    </script>
@endsection
