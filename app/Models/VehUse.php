<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehUse extends Model
{
    use HasFactory;

    protected $fillable = [
        'order' ,
        'type' ,
        'spend' ,
        'fuel',
    ];

    public function vehicle()
    {
        return $this->hasOneThrough(Vehicle::class,OrderVeh::class);
    }
    public function order()
    {
        return $this->belongsTo(OrderVeh::class,'order_id');
    }
}
