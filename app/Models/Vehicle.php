<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    use HasFactory;


    public static function createLicense($length = 5)
    {
        $alphaNumeric = 'asdfghjklzxcvbnmqwertyuiop1234567890ZXCVBNMASDFGHJKLQWERTYUIOP';
        $license = '';

        for ($i = 0; $i < $length; $i++) {
            $license[$i] = $alphaNumeric[rand(0, strlen($alphaNumeric) - 1)];
        }

        if (Vehicle::find($license)) {
            return Vehicle::createLicense($length);
        }

        return strtoupper($license);
    }

    protected $fillable = [
        'id',
        'name',
        'owner',
        'image',
        'brand',
        'description',
        'carry',
        'service_date',
    ];
    public $incrementing = false;

    protected $keyType = 'string';
}
