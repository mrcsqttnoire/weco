@extends('base')
@section('title', 'We-co signup')
@section('styles')
@vite(['resources/css/login.css'])
@endsection

@extends('header')
@section('BtnLink', "/login")
@section('Btn', "Se connecter")

@section('content')
<!--
<header>
  <div class="wrapper">
    <div class="header">
      <div class="logo">
        <img src="{{asset('icons/logo.png')}}" alt="We-co" title="We-co">
        <a href="#">We-co</a>
      </div>
      <div class="btnSignup">
          <a href="{{ route('Page.login') }}">Se connecter</a>
      </div>
    </div>

  </div>
</header>
-->
<body>
  <div class="wrapper">
    <div class="main">
      <span class="lighter-top"></span>
      <div class="loginForm">
        <div class="headForm">
            <h2>Bienvenue !</h2>
            <p>Créer un compte pour commencer à collaborer et partager</p>
        </div>
        <div class="mainForm">
          <form action="{{ route('signup') }}" method="POST">
            @csrf
            
            <div class="name">
              <label for="name">Nom</label>
              <div class="input">
                <img src="{{ asset('icons/email.png') }}" alt="">
                <input type="text" id="name" name="name" placeholder="Entrez votre nom" value="{{ old('name') }}">
              </div>
            </div>
            <div class="email">
              <label for="email">Email</label>
              <div class="input">
                <img src="{{ asset('icons/email.png') }}" alt="">
                <input type="text" id="email" name="email" placeholder="nom@exemple.com" value="{{ old('email') }}">
              </div>
            </div>
            <div class="password">
              <label for="password">Mot de passe</label>
              <div class="input">
                <img src="{{ asset('icons/mdp.png') }}" alt="">
                <input type="password" id="password" name="password" placeholder="Entrez votre mot de passe">
              </div>
            </div>
            <div class="confirmPassword">
              <label for="password_confirmation">Confirmation</label>
              <div class="input">
                <img src="{{ asset('icons/mdp.png') }}" alt="">
                <input type="password" id="password_confirmation" name="password_confirmation" placeholder="Confirmez votre Mot de passe">
              </div>
            </div>
            <input type="submit" value="S'inscrire">
          </form>
        </div>
        <div class="footForm">
          <p>Déjà un compte ?</p>
          <a href="{{ route('Page.login') }}">Se connecter</a>
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