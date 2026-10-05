<?php

namespace App\Http\Controllers;

use App\Models\Commentaire;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentaireController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        //
        $publication = $param->input('id_pub');
        // $user = $param->input('id_user');
        $commentaire = Commentaire::with(['Publication','User'])->where('Id_publication',$publication)->get();
        // dd($commentaire);
        return response()->json($commentaire); 
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        //
        $request->validate([
            'commentaire' => 'required|string',
            'idPub' => 'required|int',
        ]);
        // dd($request->commentaire);
        
        $id_Publication = $request->idPub;
        
        $commentaire = Commentaire::create([
            'content_com' => $request->commentaire,
            'Id_publication' => $id_Publication,
            'Id_user' => Auth::id(),
        ]);
        return response()->json($commentaire);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Commentaire $commentaire)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Commentaire $commentaire)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Commentaire $commentaire)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Commentaire $commentaire)
    {
        //
    }
}
