<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\Relations\BelongsTo;
//use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Auth;

class Publication extends Model
{
    use HasFactory;

    protected $table = 'publications';

    protected $fillable = [
        'title',
        'content',
        'slug',
        'images',
        'id_categorie',
        'id_domaine',
        'user_id',
    ];
    public function User(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function Categorie(){
        return $this->belongsTo(Catégorie::class, 'id_categorie');
    }

    public function Domaine(){
        return $this->belongsTo(Domaines::class, 'id_domaine');
    }

    public function Commentaire(){
        return $this->hasMany(Commentaire::class, 'Id_publication');
    }

}
