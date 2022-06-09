<?php

namespace App\Http\Controllers;

use App\Models\AppLog;
use App\Models\OrderVeh;
use App\Models\Vehicle;
use App\Models\VehUse;
use DateInterval;
use DateTime;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home()
    {
        $data = [
                'logs' => AppLog::take(7)->get(),
                'count_veh' => Vehicle::all()->count(),
                'count_order' => OrderVeh::all()->count(),
                'fuel_history_count' => VehUse::where('type','fuel')->get()->count(),
                'repair_history_count' => VehUse::where('type','repair')->get()->count(),
                'other_history_count' => VehUse::where('type','other')->get()->count(),
                'order' => OrderVeh::whereBetween('created_at',[date('Y-m-d'),date('Y-m-d',strtotime('+1 day'))])->get(),
            ];
        return view('dashboard',compact('data'));
    }
}
