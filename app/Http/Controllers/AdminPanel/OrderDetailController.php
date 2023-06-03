<?php

namespace App\Http\Controllers\AdminPanel;

use App\Models\User;
use App\Models\Order;
use App\Services\FCMService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderDetailController extends Controller
{
    // ORDER DETAILS -----GET METHOD

    public function order()
    {



    	$orders = Order::with('order_to_product')->orderBy('id','DESC')->get();

        //return $orders;


    	return view('AdminPanel.Order.order-list', [
    		"orders" => $orders
    	]);
    }

    public function order_panding()
    {


        // fetch data order model
        $orders = Order::where('status', 0)->with('order_to_product','order_to_product.products')->orderBy('id','DESC')->get();

        //return $orders;
        // return view
        return view('AdminPanel.Order.pending-order', [
            "orders" => $orders
        ]);
    }

    public function order_cancel()
    {


        // fetch data order model
        $orders = Order::where('status', 3)->with('order_to_product','order_to_product.products')->orderBy('id','DESC')->get();

        //return $orders;
        // return view
        return view('AdminPanel.Order.cancel-order', [
            "orders" => $orders
        ]);
    }

    public function order_confirm()
    {


        // fetch data order model
        $orders = Order::where('status', 1)->with('order_to_product','order_to_product.products')->orderBy('id','DESC')->get();

        //return $orders;
        // return view
        return view('AdminPanel.Order.confirma-order', [
            "orders" => $orders
        ]);
    }

      public function order_success()
    {


        // fetch data order model
        $orders = Order::where('status', 2)->with('order_to_product','order_to_product.products')->orderBy('id','DESC')->get();

        //return $orders;
        // return view
        return view('AdminPanel.Order.success-order', [
            "orders" => $orders
        ]);
    }


    // defaults order status = 0

    //order status  confirm = 1

    public function approve($order_id){
    	$order = Order::find($order_id);

        // return $orders;

        if ($order->status == 0) {

                Order::where('id',$order->id)->update([
                    'status' => 1
                ]);

                $user = User::find($order->user_id);

                FCMService::send(
                    $user->device_token,
                    [
                        'title' => "Approve Order",
                        'body' => "Your Order Successfully Approve!",
                    ]
                );
        }


        return back()->with('message', 'Order Approve Successfully!');


    }


      //order status success = 2

    public function success($order_id){
    	$order = Order::find($order_id);
            if ($order->status == 1) {
                Order::where('id',$order->id)->update([
                    'status' => 2
                ]);

                $user = User::find($order->user_id);

                FCMService::send(
                    $user->device_token,
                    [
                        'title' => "Success",
                        'body' => "Your Order Successfully Delivered!",
                    ]
                );
            }


        return back()->with('message', 'Order Delivery Successfully!');


    }

    // order status  cancel = 3

    public function cancel($order_id){
    	$order = Order::find($order_id);


        if ($order->status == 0) {
            Order::where('id',$order->id)->update([
                'status' => 3
            ]);

            $user = User::find($order->user_id);

                FCMService::send(
                    $user->device_token,
                    [
                        'title' => "Cancel Order",
                        'body' => "Your Order Successfully Cancel!",
                    ]
                );
        }

   		return back()->with('message', 'This Order cancle Successfully!');

    }

    public function details($order_id)
    {

        $order_details = Order::with('order_to_product')->where('order_id',$order_id)->first();
        return view('AdminPanel.Order.order_details', compact('order_details'));
    }
}
