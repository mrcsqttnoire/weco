@vite(['resources/css/aside.css'])
<aside>
    <div class="asideContent">
        <form action="{{ route('Filtre.Domaine') }}" method="GET">
            <div class="asideCategorie">
                @if(request('explorer'))
                <input type="hidden" name="explorer" value="true" />
                @endif
                @if(request('categorie'))
                <input type="hidden" name="categorie" id="categorieHidden" value="{{ request('categorie') }}" />
                @endif
                @foreach($Categories as $Categorie)
                <div class="{{ 'categorie'.$Categorie->categorie }} ParentCat">
                    <input id="{{ 'Idcategorie'.$Categorie->categorie }}" class="Cat" type="radio" value="{{ $Categorie->categorie }}" name="categorie" hidden @if(request('categorie', 'Article' )==$Categorie->categorie) checked @endif />
                    <label class="{{ 'label'.$Categorie->categorie }} " for="{{ 'Idcategorie'.$Categorie->categorie }}" onclick="changerCategorie('{{ $Categorie->categorie }}')">{{ $Categorie->categorie }}</label>
                </div>
                @endforeach
            </div>
            <div class="séparation"></div>
            <div class="asideDiscover">
                <div class="discoverHead">
                    <h3>Discover</h3>
                    <input class="validerFiltre" type="submit" value="Filtrer">
                </div>
                <div class="discoverContent">
                    <div class="discoverRadio">
                        <img src="{{ asset('icons/domaine.svg') }}" alt="domaine">
                        <input hidden name="domaine[]" type="checkbox" id="vosDomaine" value="mes_domaines" checked />
                        <label for="vosDomaine">Mes domaines</label>
                    </div>
                    @foreach($Domaines as $Domaine)
                    <div class="discoverRadio">
                        <img src="{{ asset('icons/domaine.svg') }}" alt="domaine">
                        <input hidden name="domaine[]" type="checkbox" id="{{ 'domaine'.$Domaine->id }}" value="{{ $Domaine->id }}" class="selectDomaine" />
                        <label for="{{ 'domaine'.$Domaine->id }}">{{ $Domaine->Domaine }}</label>
                    </div>
                    @endforeach
                </div>
            </div>
        </form>
        <span class="séparation"></span>
        <div class="asideFoot">
            <a href="{{ route('logout') }}">Se déconnecter</a>
        </div>
    </div>
    <script>
        const mesDomaines = document.getElementById('vosDomaine');
        document.querySelectorAll('.selectDomaine').forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                const parent = this.closest('.discoverRadio');
                if (this.checked) {
                    parent.classList.add('selected');
                    mesDomaines.checked = false
                } else {
                    parent.classList.remove('selected');
                }
            });
        });

        const urlParams = new URLSearchParams(window.location.search);
        let categorieActive = urlParams.get('categorie');
        let domaineActive = urlParams.getAll('domaine[]');

        // console.log(domaineActive);
        if (categorieActive == null) {
            categorieActive = 'Article';
            mesDomaines.checked = true
            // console.log(categorieActive);
        }

        domaineActive.forEach(function(dA) {
            let dom = document.getElementById('domaine' + (dA));
            // console.log(dom);
            dom.checked = true;
            mesDomaines.checked = false;
        })
        const label = document.querySelector('.label' + (categorieActive));
        label.classList.add('selectionné');

        function changerCategorie(categorie) {
            const params = new URLSearchParams(window.location.search);
            params.delete('page');
            params.set('categorie', categorie);
            window.location.href = '/categorie/?' + params.toString();
        }
    </script>
</aside>