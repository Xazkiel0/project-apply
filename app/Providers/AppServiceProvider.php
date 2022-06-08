<?php

namespace App\Providers;

use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

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
        Blade::if('admin', function () {            
            return (auth()->user() && auth()->user()->role=="Admin") ? 1: 0;
        });
        Blade::if('manager', function () {            
            return (auth()->user() && auth()->user()->role=="Manager") ? 1: 0;
        });
        Blade::if('Approver', function () {            
            return (auth()->user() && auth()->user()->role=="Approver") ? 1: 0;
        });
    }
}
