<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthentController extends Controller
{
    
    public function showSignup(){
        if(Auth::check()){
            return redirect()->route('home.page');
        }
        return view('authent.signup');
    }
    public function signupDomaine(){
        if(Auth::check()){
            return redirect()->route('home.page');
        }
        return view('authent.domain');
    }

    public function showFormLogin(){
        if(Auth::check()){
            return redirect()->route('home.page');
        }
        return view('authent.login');
    }

    public function login(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if(Auth::attempt($request->only('email', 'password'))){
            return redirect()->route('home.page');
        }
        return back()->withErrors([
            'email' => 'Email ou mot de passe incorrect',
        ]);
    }

    public function signup(Request $request){
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|string|min:6|confirmed',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect()->route('signupDomaine');
        //return redirect('/login')->with('success', 'Inscription réussie. Vous pouvez maintenant vous connecter.');
    }

    public function logout(){
        Auth::logout();
        return redirect('/login'); 
    }
}
