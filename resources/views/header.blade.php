  <header>
    <div class="wrapper">
      <div class="header">
        <div class="logo">
          <img src="{{asset('icons/logo.png')}}" alt="We-co" title="We-co">
          <a href="#">We-co</a>
        </div>
          @if($errors->any())
              <div class="pop-up">
                  <strong>Erreur! : </strong>            
                  <span>{{$errors->first()}}</span>
              </div>
          @endif
          @if(session('success'))
          <div class="pop-up success-bg-color">
              <strong>Success! : </strong>            
              <span>{{ session('success') }}</span>
          </div>
          @endif
        <div class="btnSignup">
            <p> @yield('text') </p>
            <a href="@yield('BtnLink')"> @yield('Btn') </a>
        </div>
      </div>
    </div>
  </header>