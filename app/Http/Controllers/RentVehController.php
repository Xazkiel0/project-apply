<?php

namespace App\Http\Controllers;

use App\Models\RentVeh;
use App\Http\Requests\StoreRentVehRequest;
use App\Http\Requests\UpdateRentVehRequest;
use App\Models\Vehicle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;

class RentVehController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = RentVeh::all();
        return view('aw.kendaraan.sewa',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('aw.kendaraan.createSewa');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreRentVehRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $dateAdded = Date::parse(date('Y-m-d H:i:s', strtotime(Date::now().' + '. 10 .' days')));
        $subReq = [
            'rent_till' => $dateAdded,
            'id' => Vehicle::createLicense(7),
        ];
        $request->request->add($subReq);
        
        $rentVeh = RentVeh::create($request->all());
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RentVeh  $rentVeh
     * @return \Illuminate\Http\Response
     */
    public function show(RentVeh $rentVeh)
    {
        return view('rentVeh.create',compact('rentVeh'));
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RentVeh  $rentVeh
     * @return \Illuminate\Http\Response
     */
    public function edit(RentVeh $rentVeh)
    {
        return view('rentVeh.create',compact('rentVeh'));
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateRentVehRequest  $request
     * @param  \App\Models\RentVeh  $rentVeh
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRentVehRequest $request, RentVeh $rentVeh)
    {
        $rentVeh->update($request->all());
        return $rentVeh;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RentVeh  $rentVeh
     * @return \Illuminate\Http\Response
     */
    public function destroy(RentVeh $rentVeh)
    {
        return $rentVeh->deleteOrFail();
    }
}
