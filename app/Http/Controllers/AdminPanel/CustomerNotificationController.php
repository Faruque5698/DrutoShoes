<?php

namespace App\Http\Controllers\AdminPanel;

use App\Models\User;
use App\Services\FCMService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CustomerNotification;

class CustomerNotificationController extends Controller
{
    public function index()
    {
        return view('AdminPanel.Notification.sendNotificationToCustomer');
    }

    public function store(Request $request){

        $request->validate([
            "title" => "required",
            "body" => "required",

        ]);



        $notification = CustomerNotification::create([
            "title" => $request->title,
            "body" =>  $request->body,
        ]);

        $users = User::all();


        foreach ($users as $user){
            FCMService::send(
                $user->device_token,
                [
                    'title' => $notification->title,
                    'body' => $notification->body,
                ]
            );
        }

        return back()->with('message', 'Notification Send Successfully');


    }
}
