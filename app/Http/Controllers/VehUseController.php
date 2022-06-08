<?php

namespace App\Http\Controllers;

use App\Models\VehUse;
use App\Http\Requests\StoreVehUseRequest;
use App\Http\Requests\UpdateVehUseRequest;
use App\Models\OrderVeh;

class VehUseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = VehUse::all();
        dd($data);
        return $data;
        // return view('VehUse.index',compact('data'))
    }
    public function pengeluaran()
    {
        $data = VehUse::all();
        return view('aw.kendaraan.pengeluaran',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('VehUse.create');

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVehUseRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVehUseRequest $request)
    {
        $vehUse = VehUse::create($request->all());
        return $vehUse;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\VehUse  $vehUse
     * @return \Illuminate\Http\Response
     */
    public function show(VehUse $vehUse)
    {
        return view('VehUse.create',compact('VehUse'));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\VehUse  $vehUse
     * @return \Illuminate\Http\Response
     */
    public function edit(VehUse $vehUse)
    {
        return view('VehUse.create',compact('VehUse'));
     
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateVehUseRequest  $request
     * @param  \App\Models\VehUse  $vehUse
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVehUseRequest $request, VehUse $vehUse)
    {
        $vehUse->update($request->all());
        return $vehUse;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\VehUse  $vehUse
     * @return \Illuminate\Http\Response
     */
    public function destroy(VehUse $vehUse)
    {
        return $vehUse->deleteOrFail();
        
    }
}
