<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Domaines extends Model
{
    use HasFactory;
    protected $table = 'domaines';
    protected $fillable = [
        'Domaine',
    ];
    public function users()
    {
        return $this->belongsToMany(
            User::class,
            'contenirs',
            'Id_domaine',
            'User_Id'
        );
    }
}
