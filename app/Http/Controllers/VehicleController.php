<?php

namespace App\Http\Controllers;

use App\Models\Vehicle;
use App\Http\Requests\StoreVehicleRequest;
use App\Http\Requests\UpdateVehicleRequest;
use App\Models\Driver;
use App\Models\RentVeh;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;

class VehicleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Vehicle::all();
        return view('aw.kendaraan.index',compact('data'));
    }

    public function order()
    {
        $tambang = [];
        for ($i=1; $i <= 6; $i++) { 
            array_push($tambang, 'Tambang '.$i);
        }
        $data = [
            'drivers' => Driver::get(['name','id']),
            'vehicle' => Vehicle::all(),
            'apprs' => User::where('role','approver')->get(['name','id']),
            'tambang' => $tambang,
        ];
        return view('aw.order.form',compact('data'));
    }
    public function order_sewa()
    {
        $tambang = [];
        for ($i=1; $i <= 6; $i++) { 
            array_push($tambang, 'Tambang '.$i);
        }
        $data = [
            'drivers' => Driver::get(['name','id']),
            'rent' => RentVeh::all(),
            'apprs' => User::where('role','approver')->get(['name','id']),
            'tambang' => $tambang,
        ];
        return view('aw.order.form2',compact('data'));
    }

    


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('aw.kendaraan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVehicleRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $dateAdded = Date::parse(date('Y-m-d H:i:s', strtotime(Date::now().' + '. 10 .' days')));
        $subReq = [
            'service_date' => $dateAdded,
            'id' => Vehicle::createLicense(7),
            'image' => 'img'
        ];
        $request->request->add($subReq);
        
        Vehicle::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vehicle  $vehicle
     * @return \Illuminate\Http\Response
     */
    public function show(Vehicle $vehicle)
    {
        return view('vehicle.create', compact('vehicle'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Vehicle  $vehicle
     * @return \Illuminate\Http\Response
     */
    public function edit(Vehicle $vehicle)
    {
        return view('vehicle.create', compact('vehicle'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVehicleRequest  $request
     * @param  \App\Models\Vehicle  $vehicle
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vehicle $vehicle)
    {
        $vehicle->update($request->all());
        return $vehicle;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vehicle  $vehicle
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vehicle $vehicle)
    {
        return $vehicle->deleteOrFail();
    }
}
