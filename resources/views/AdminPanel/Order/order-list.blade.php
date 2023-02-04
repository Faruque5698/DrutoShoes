@extends('AdminPanel.Master')

@section('title')
    Order List
@endsection



@section('content')

  <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><strong>Order List</strong></h1>
                       </i></a>
                    </div>

                    @if(Session::get('message'))

                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>{{Session::get('message')}}</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif

                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Order List</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>

                                    <tr>
                                        <th>Sl</th>
                                        <th>Order Id</th>
                                        <th>Product Name</th>
                                        <th>Item</th>
                                        <th>Price</th>
                                        <th>Payment Type</th>
                                        <th>Order Status</th>
                                        <th>Details</th>
                                        <th>Action</th>

                                    </tr>
                                    </thead>
                                    <tbody>

                                      @foreach($orders as $order)
                                                    <tr>
                                                        <td>{{ $loop->index +1 }}</td>
                                                        <td>{{ $order->order_id }}</td>
                                                        <td>
                                                            @foreach ($order->order_to_product as $product_name)
                                                                {{ $product_name->products->product_name ?? ''}}
                                                            @endforeach
                                                        </td>
                                                        <td>
                                                            {{ $order->order_to_product->count() }}
                                                        </td>
                                                        <td>
                                                            @php
                                                                $total_price = 0;

                                                            @endphp

                                                                @foreach($order->order_to_product as $product_price)
                                                                   <?php $total_price = $total_price + $product_price->total_price ?>
                                                                @endforeach
                                                                {{ $total_price }}


                                                        </td>
                                                        <td>{{ $order->payment_type == null ? "COD" : " " }}</td>
                                                        <!--  <td>{{ $order->status == 0? "Pending" : "Success"}}</td> -->
                                                        <td>
                                                            @if($order->status == 0)
                                                                <span>Pending</span>
                                                            @elseif($order->status == 1)
                                                                <span>Approve</span>
                                                            @elseif($order->status == 2)
                                                                <span>Success</span>

                                                            @elseif($order->status == 3)
                                                                <span>Cancel</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            <a href="{{ route('order.details', ["order_id"=> $order->order_id]) }}" class="btn btn-sm btn-warning"><i class="fa fa-info"></i></a>

                                                        </td>
                                                        <td>
                                                            @if($order->status == 0)
                                                            <a href="{{ route('order.cancel', ['order_id'=>$order->id]) }}" class="btn btn-danger mb-2">Order Cancel</a>
                                                            <a href="{{ route('order.approve', ['order_id'=>$order->id]) }}" class="btn btn-warning mb-2">Confiram</a>
                                                            @endif
                                                            @if($order->status == 1)
                                                            <a href="{{ route('order.success', ['order_id'=>$order->id]) }}" class="btn btn-success">Success</a>
                                                            @endif

                                                        </td>
                                                    </tr>




										@endforeach

                                    </tbody>

                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->


        <!-- /.modal -->



    </div>

@endsection
