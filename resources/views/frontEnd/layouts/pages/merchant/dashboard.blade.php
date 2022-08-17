@extends('frontEnd.layouts.pages.merchant.merchantmaster')
@section('title', 'Dashboard')
@section('content')
    <!-- <section  class="section-padding dashboard-content">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-sm-12">
                      <div class="stats-reportList-inner">
                        <div class="row">
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-info">
                              <div class="stats-per-item">
                                <h5>Total Parcel</h5>
                                <h3>{{ $placepercel }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-secondary">
                              <div class="stats-per-item">
                                <h5>Total Pending</h5>
                                <h3>{{ $pendingparcel }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-danger">
                              <div class="stats-per-item">
                                <h5>In Transit</h5>
                                <h3>{{ $intransitparcel }}</h3>
                              </div>
                            </div>
                          </div>
                          
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-success">
                              <div class="stats-per-item">
                                <h5>Total Delivered</h5>
                                <h3>{{ $deliverd }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-danger">
                              <div class="stats-per-item">
                                <h5>Total Cancelled</h5>
                                <h3>{{ $cancelparcel }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-warning">
                              <div class="stats-per-item">
                                <h5>Returned To Merchant</h5>
                                <h3>{{ $parcelreturn }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-info">
                              <div class="stats-per-item">
                                <h5>Total Hold</h5>
                                <h3>{{ $totalhold }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-primary">
                              <div class="stats-per-item">
                                <h5>Collected Amount From DA</h5>
                                <h3>{{ $collectamount }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-success">
                              <div class="stats-per-item">
                                <h5>Total Paid</h5>
                                <h3>{{ $totalpaid }}</h3>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="dashboard-payment-info">
                        <div class="row">
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-dark">
                              <div class="stats-per-item">
                                <h5>Total Amount</h5>
                                <h3>{{ $totalamount }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-success">
                              <div class="stats-per-item">
                                <h5>Paid Amount</h5>
                                <h3>{{ $merchantPaid }}</h3>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 colo-md-4 col-sm-4 col-6">
                            <div class="stats-reportList bg-danger">
                              <div class="stats-per-item">
                                <h5>Unpaid Amount</h5>
                                <h3>{{ $merchantUnPaid }}</h3>
                              </div>
                            </div>
                          </div>
                          
                        </div>
                        <div class="row">
                          <div class="col-sm-12">
                           <div class="card">
                             <div class="card-header">
                               <h3>Parcel Statistics</h3>
                             </div>
                             <div class="card-body">
                               <canvas id="myChart"></canvas>
                             </div>
                           </div>
                          </div>
                        </div>
                      </div>
                      </div>
                    </div>
                  </div>
                </section> -->

    <section class="section-padding">
        <b style="text-decoration: underline">Transaction count for august, 2022</b>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 p-3 m-1 bg-primary">
                    <p class="text-center text-light">PENDING</p>
                    <p class="text-center text-light">55</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-info">
                    <p class="text-center text-light">DELIVERED</p>
                    <p class="text-center text-light">5</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-success">
                    <p class="text-center text-light">PICKUP</p>
                    <p class="text-center text-light">10</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-secondary">
                    <p class="text-center text-light">CANCEL</p>
                    <p class="text-center text-light">25</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-primary">
                    <p class="text-center text-light">WALLET BALANCE</p>
                    <p class="text-center text-light">33</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding">
        <b style="text-decoration: underline">TRANSACTION COUNT FROM INCEPTION</b>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 p-3 m-1 bg-primary">
                    <p class="text-center text-light">PENDING</p>
                    <p class="text-center text-light">55</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-info">
                    <p class="text-center text-light">DELIVERED</p>
                    <p class="text-center text-light">5</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-success">
                    <p class="text-center text-light">PICKUP</p>
                    <p class="text-center text-light">10</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-secondary">
                    <p class="text-center text-light">CANCEL</p>
                    <p class="text-center text-light">25</p>
                </div>
                <div class="col-md-2 p-3 m-1 bg-primary">
                    <p class="text-center text-light">WALLET BALANCE</p>
                    <p class="text-center text-light">33</p>
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

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">Handle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>



@endsection
