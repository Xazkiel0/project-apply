<?php

namespace App\Http\Controllers;

use App\Models\AppLog;
use App\Http\Requests\StoreAppLogRequest;
use App\Http\Requests\UpdateAppLogRequest;

class AppLogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreAppLogRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAppLogRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AppLog  $appLog
     * @return \Illuminate\Http\Response
     */
    public function show(AppLog $appLog)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AppLog  $appLog
     * @return \Illuminate\Http\Response
     */
    public function edit(AppLog $appLog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateAppLogRequest  $request
     * @param  \App\Models\AppLog  $appLog
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAppLogRequest $request, AppLog $appLog)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AppLog  $appLog
     * @return \Illuminate\Http\Response
     */
    public function destroy(AppLog $appLog)
    {
        //
    }
}
