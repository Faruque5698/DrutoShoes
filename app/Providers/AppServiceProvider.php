<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\EmailSetting;
use Config;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $mailsetting = EmailSetting::find(1);

        if($mailsetting){
            $data = [
                'driver'            => $mailsetting->mail_transport,
                'host'              => $mailsetting->mail_host,
                'port'              => $mailsetting->mail_port,
                'encryption'        => $mailsetting->mail_encryption,
                'username'          => $mailsetting->mail_username,
                'password'          => $mailsetting->mail_password,
                'from'              => [
                    'address'=>$mailsetting->mail_from,
                    'name'   => 'Dutoshoes',
                ],
            ];

            Config::set('mail',$data);
        }

        
    }
}
