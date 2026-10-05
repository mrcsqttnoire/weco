<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class contenir extends Model
{
    use HasFactory;

    protected $fillable = [
        'Id_domaine',
        'User_Id'
    ];

    public function domaine(){
        return $this->belongsTo(Domaines::class, 'Id_domaine');
    }
}
