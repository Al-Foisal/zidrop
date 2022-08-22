@extends('backEnd.layouts.master')
@section('title','Merchant payment history')
@section('content')
<style>
@media screen {
  #printSection {
      display: none;
  }
}

@media print {
  body * {
    visibility:hidden;
  }
  #printSection, #printSection * {
    visibility:visible !important;
  }
  #printSection {
    position:absolute !important;
    left:0;
    top:0;
  }
}
</style>
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
                          <h5>Merchant payment history</h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                      <form action="{{url('editor/merchant/payment')}}" class="filte-form">
                        {{-- @csrf --}}
                        <div class="row">
                          <input type="hidden" value="1" name="filter_id">
                          <div class="col-sm-2 mt-2">
                            <input type="date" class="flatDate form-control" placeholder="Create Date Form" name="startDate">
                          </div>
                          <!-- col end -->
                          <div class="col-sm-2 mt-2">
                            <input type="date" class="flatDate form-control" placeholder="Create Date To" name="endDate">
                          </div>
                          
                          <!-- col end -->
                          <div class="col-sm-2 mt-2">
                            <button type="submit" class="btn btn-success">Submit </button>
                          </div>
                          <!-- col end -->
                        </div>
                      </form>
                    </div>
                  <div class="card-body">
                      <form action="{{url('editor/merchant/confirm-payment')}}" method="POST" id="myform" class="bulk-status-form">
                      @csrf
                      
                        <input type="hidden" value="{{ request()->startDate }}" name="startDate">
                        <input type="hidden" value="{{ request()->endDate }}" name="endDate">
                      
                     <button type="submit" class="bulkbutton bulk-status-btn" onclick="return (confirm('Are sure??'))">Make Merchant Payment</button>
                     
                    <table id="" class="table table-bordered table-striped custom-table">
                      <thead>
                      <tr>
                         <th><input type="checkbox"  id="My-Button"></th>
                        <th>Id</th>
                        <th>Merchant</th>
                        <th>Payment Method</th>
                        <th>Total Due</th>
                      </tr>
                      </thead>
                      
                      <tbody>
                        @foreach($show_data as $key=>$value)
                        @php
                              $due = 0;
                              foreach ($value->parcels as $parcel) {
                                  if ($parcel->status == 4) {
                                      // $due = $due + ($parcel->codCharge + $parcel->deliveryCharge - $parcel->cod);
                                      $due=$due+$parcel->merchantDue;
                                  }
                              }
                          @endphp
                        @if($due>0)
                        <tr>
                          <td><input type="checkbox"  value="{{$value->id}}" name="parcel_id[]" form="myform">  
                          </form>
                          </td>
                          <td>{{ ++$key }}</td>
                          <td>{{ $value->companyName }}</td>
                          <td>{{ $value->paymentMethod ?? 'Not Set Yeat' }}</td>
                          
                          <td>{{ $due }}</td>
                        </tr>
                        @endif
                        @endforeach
                      </tbody>
                    </table>
                    
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
                
                {{-- <div class="py-3">{{$show_data->links()}}</div> --}}
                
            </div>
          </div>
        </div>
    </div>
  </section>

<!-- Modal Section  -->
@endsection
