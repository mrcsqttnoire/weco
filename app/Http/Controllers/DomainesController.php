<?php

namespace App\Http\Controllers;

use App\Models\Domaines;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DomainesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function FormDomaineSelect(){
        if(Auth::check()){
            return redirect()->route('home.page');
        }
        return view('Authent.Domaine', [
            'Domaines' => Domaines::All(),
        ]);
    }

    public function DomaineSelect()
    {
        return [ 
            'Domaine' => Domaines::latest()->get(),
        ];
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $domain)
    {
        $domain->validate([
            'domaineName' => 'required|string',
        ]);
        Domaines::create([
            'Domaine' => $domain->domaineName,
        ]);
        return redirect()->route('home.page')->with('success', 'Domaine ajoutée avec succès !');
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
    public function show(Domaines $domaines)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Domaines $domaines)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Domaines $domaines)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Domaines $domaines)
    {
        //
    }
}
