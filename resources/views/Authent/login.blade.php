@extends('base')

@section('title', 'We-co Login')
@section('styles')
@vite(['resources/css/login.css'])
@endsection

@extends('header')
@section('text', "Vous n'avez pas de compte ?")
@section('BtnLink', "/signup")
@section('Btn', "S'inscrire")

@section('content')
  <body>
    <div class="wrapper">
      <div class="main">
        <span class="lighter-top"></span>
        <div class="loginForm">
          <div class="headForm">
              <h2>Bon retour !</h2>
              <p>Connectez-vous pour collaborer et partager</p>
          </div>
          <div class="mainForm">
            <form action="{{ route('login') }}" method="POST">
              @csrf
              <div class="email">
                <label for="email">Email</label>
                <div class="input">
                  <img src="{{ asset('icons/email.png') }}" alt="">
                  <input type="text" id="email" name="email" placeholder="nom@exemple.com">
                </div>
              </div>
              <div class="password">
                <label for="password">Mot de passe</label>
                <div class="input">
                  <img src="{{ asset('icons/mdp.png') }}" alt="">
                  <input type="password" id="password" name="password" placeholder="Entrez votre mot de passe" >
                </div>
              </div>
              <input type="submit" value="Se connecter">
            </form>
          </div>
          <div class="footForm">
            <p>Nouveau sur We-co ?</p>
            <a href="{{ route('Page.signup') }}">Créer un compte</a>
          </div>
        </div>
        <span class="lighter-bottom"></span>
      </div>
    </div>
  </body>
  <footer>
    <div class="wrapper">
      <p>projet laravel - We-co, tous droits réservés &copy; 2026 </p>
    </div>
  </footer>
@endsection