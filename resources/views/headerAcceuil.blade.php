<header>
    <div class="wrapper">
        <div class="header">
            <div class="right">
                <div class="logo">
                    <img src="{{asset('icons/logo.png')}}" alt="We-co" title="We-co">
                    <a href="#">We-co</a>
                </div>
                <div class="recherche">
                    <img src="{{ asset('icons/recherche.svg') }}" alt="recherche" title="recherche" id="search">
                    <input type="text" placeholder="Recherchez un thème, personne, problème..." id="searchValue">
                </div>
            </div>
            <div>
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
            </div>
            <nav class="nav-bar">
                <li>
                    <a href="{{ route('home.page') }}" class="pageActive">
                        <img src="{{ asset('icons/home.png') }}" alt="Acceuil" title="Acceuil" id="acceuil">
                        <h4 id="labelAcceuil">Acceuil</h4>
                    </a>
                </li>
                <li>
                    <a href="{{ route('explorer') }}">
                        <img src="{{ asset('icons/explorer.png') }}" alt="Explorer" title="Explorer" id="Explorer">
                        <h4 id="labelExplorer" {{ request()->is('*explorer*') ? 'selectedNav' : '' }}>Explorer</h4>
                    </a>
                </li>
                <!--            <li>
                <a href="#">
                    <img src="{{ asset('icons/notification.png') }}" alt="Notification" title="Notification">
                    <h4>Notifications</h4>
                </a>
            </li> -->
            </nav>
            <div class="account">
                <img src="{{ 'https://i.pravatar.cc/300?u=' . Auth::id() }}" alt="">
            </div>
        </div>
    </div>
</header>
<script>
    const iconeAcceuil = document.getElementById('acceuil');
    const btnExplorer = document.getElementById('Explorer');
    var urlParam = window.location.href;

    var urlParam = window.location.href;

    if(urlParam.includes('explorer')) {
        document.getElementById('labelExplorer').style.color = '#137FEC';
        document.getElementById('Explorer').classList.add('selected');
        document.getElementById('acceuil').classList.add('notSelected');
    } else {
        document.getElementById('labelAcceuil').style.color = '#137FEC';
        document.getElementById('acceuil').classList.add('selected');
    }

    if(urlParam.includes('explorer')){
        btnExplorer.classList.add('selected');
    }
    // console.log(iconeSelect);
    iconeAcceuil.onclick = function() {
        document.getElementById('labelAcceuil').classList.toggle('selectedNav');
    }
    const iconeExplorer = document.getElementById('Explorer');
    // console.log(iconeSelect);
    iconeExplorer.onclick = function() {
        //document.getElementById('labelExplorer').style.color = '#137FEC';
        document.getElementById('labelExplorer').classList.add('selectedNav');
        console.log(document.getElementById('labelExplorer'))
    }

    document.getElementById('search').onclick = function() {
        const valueSearch = document.getElementById('searchValue').value;
        // alert(valueSearch);
        const params = new URLSearchParams(window.location.search);
        params.set('search', valueSearch);
        window.location.href = '/?' + params.toString();
    }
</script>
@yield('main')