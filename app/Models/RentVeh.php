<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentVeh extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'name',
        'owner',
        'brand',
        'rent_till',
        'contact',
    ];
    protected $keyType = "string";
    public $incrementing = false;
}
