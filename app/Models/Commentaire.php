<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commentaire extends Model
{
    use HasFactory;
    
    protected $table = 'commentaires';

    protected $fillable = [
        'content_com',
        'Id_user',
        'Id_publication'
    ];

    public function Publication() {
        return $this->belongsTo(Publication::class, 'Id_publication');
    }
    public function User() {
        return $this->belongsTo(User::class, 'Id_user');
    }
}
