@extends('frontEnd.layouts.pages.merchant.merchantmaster')
@section('title', 'Payments')
@section('content')
    <div class="profile-edit mrt-30">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-sm-12">
                        <h4 style="margin-bottom: 10px;">Payments</h4>
                    </div>
                    <div class="col-sm-12">
                        <div class="payments-inner table-responsive-sm">
                            <table class="table  table-striped">
                                <tr>
                                    <th>SL</th>
                                    <th>Date</th>
                                    <th>Total Invoice</th>
                                    <th>Total Payment</th>
                                    <th>More</th>
                                </tr>
                                @foreach ($merchantInvoice as $key => $value)
                                
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $value->updated_at }}</td>
                                        <td>{{ $value->total_parcel }}</td>
                                        <td>{{ $value->total }}N</td>
                                        <td>
                                            <form action="{{ url('merchant/payment/invoice-details') }}" method="post">
                                            @csrf
                                            <input type="hidden" value="{{ $value->updated_at }}" name="update">
                                                <button class="btn btn-primary" type="submit"><i class="fa fa-eye"></i> View</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- row end -->
    </div>


@endsection
