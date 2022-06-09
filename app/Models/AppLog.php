<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'owner',
        'rent_till',
        'contact',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
