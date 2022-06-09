<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderVeh extends Model
{
    use HasFactory;

    protected $fillable = [
        'driver_id',
        'tambang',
        'note',
        'approver_id',
        'rent_id',
        'vehicle_id',
        'progress',
        'accept',
    ];

    public function driver()
    {
        return $this->belongsTo(Driver::class);
    }
    public function approver()
    {
        return $this->belongsTo(User::class);
    }
    public function vehicle()
    {
        return $this->belongsTo(Vehicle::class);
    }
    public function rent()
    {
        return $this->belongsTo(RentVeh::class,'rent_id');
    }
    public function vehUses()
    {
        return $this->hasMany(VehUse::class,"order_id");
    }
}
