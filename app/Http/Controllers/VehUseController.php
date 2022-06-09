<?php

namespace App\Http\Controllers;

use App\Models\VehUse;
use App\Http\Requests\StoreVehUseRequest;
use App\Http\Requests\UpdateVehUseRequest;
use App\Models\OrderVeh;
use Illuminate\Http\Request;

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
        return view('aw.kendaraan.pengeluaran',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('aw.kendaraan.createVehUse');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreVehUseRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->request->add(['photo'=>'img']);
        VehUse::create($request->all());
        return redirect()->back();
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
    public function update(Request $request, VehUse $vehUse)
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

        $vehUse->deleteOrFail();
        return redirect()->back(); 
        
    }
}
