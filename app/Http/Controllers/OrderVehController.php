<?php

namespace App\Http\Controllers;

use App\Exports\LaporanExport;
use App\Models\OrderVeh;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\StoreOrderVehRequest;
use App\Http\Requests\UpdateOrderVehRequest;
use Illuminate\Http\Request;

class OrderVehController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = OrderVeh::all();
        return $data;
        // return view('OrderVeh.index',compact('data'));
    }
    public function applyOrder(Request $request)
    {
        OrderVeh::create($request->all());
        return redirect()->back();
    }
    public function laporan()
    {
        $data = OrderVeh::all();
        return view('aw.Order.index', compact('data'));
    }
    public function export()
    {
        try {
            return Excel::download(new LaporanExport, 'laporan.xlsx');
        } catch (\Throwable $th) {
            return redirect()->back();
        }
    }
    public function addProgress(OrderVeh $orderVeh)
    {
        $orderVeh->update(["progress" => intval($orderVeh->progress) + 1]);

        return redirect()->back();
        //
    }
    public function decline(OrderVeh $orderVeh)
    {
        $orderVeh->update(["progress" => -1]);

        return redirect()->back();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('OrderVeh.create');
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreOrderVehRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $OrderVeh = OrderVeh::create($request->all());
        return $OrderVeh;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\OrderVeh  $orderVeh
     * @return \Illuminate\Http\Response
     */
    public function show(OrderVeh $orderVeh)
    {
        return view('OrderVeh.create', compact('OrderVeh'));
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\OrderVeh  $orderVeh
     * @return \Illuminate\Http\Response
     */
    public function edit(OrderVeh $orderVeh)
    {
        return view('OrderVeh.create', compact('OrderVeh'));
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateOrderVehRequest  $request
     * @param  \App\Models\OrderVeh  $orderVeh
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderVeh $orderVeh)
    {
        $orderVeh->update($request->all());
        return $orderVeh;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\OrderVeh  $orderVeh
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderVeh $orderVeh)
    {
        return $orderVeh->deleteOrFail();
        //
    }
}
