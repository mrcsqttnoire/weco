<?php

namespace App\Http\Controllers;

use App\Models\contenir;
use App\Models\User;
use Illuminate\Http\Request;

class ContenirController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $contenir = contenir::all();
        dd($contenir);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $domaines)
    {
        // dd($domaines->input('domaine'));
        $domaine = $domaines->input('domaine');
        $user = User::latest()->first();
        if($domaine == null){
            return back()->with('error', 'Veuillez choisir 3 domaines');
        }
        $domaines = collect($domaine);
        // dd($domaines);

        $domaines->each(fn ($domaine) => contenir::create([
            'Id_domaine' => $domaine,
            'User_Id' => $user->id,
        ]));
        return redirect()->route('home.page');
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
    public function show(contenir $contenir)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(contenir $contenir)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, contenir $contenir)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(contenir $contenir)
    {
        //
    }
}
