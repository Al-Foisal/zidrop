@extends('backEnd.layouts.master')
@section('title', 'Topup History')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="box-content">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card custom-card">
                            <div class="col-sm-12">
                                <div class="manage-button">
                                    <div class="body-title">
                                        <h4>
                                            <b>
                                                <p style="color:green">Topup History</P>
                                            </b>
                                        </h4>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <table id="merchantexample" class="table table-bordered table-striped custom-table">
                                    <thead>
                                        <tr>
                                            <th>Serial</th>
                                            <th>Merchant Name</th>
                                            <th>Merchant Company</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Amount</th>
                                            <th>Transaction Reference</th>
                                            <th>Transaction Channel</th>
                                            <th>Currency</th>
                                            <th>created_at</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($topup as $key => $value)
                                            <tr>
                                                <td>{{ ++$key }}</td>
                                                <td>{{ $value->merchant->firstName ?? '' }}</td>
                                                <td>{{ $value->merchant->companyName ?? '' }}</td>
                                                <td>{{ $value->email }}</td>
                                                <td>{{ $value->mobile }}</td>
                                                <td>{{ $value->amount }}</td>
                                                <td>{{ $value->reference }}</td>
                                                <td>{{ $value->channel }}</td>
                                                <td>{{ $value->currency }}</td>
                                                <td>{{ $value->created_at }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    {{ $topup->links() }}
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
