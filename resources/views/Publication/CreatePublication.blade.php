@vite(['resources/css/FormPublication.css'])

<aside class="rightAside">
    <div class="headForm">
        <h3>Zone de Publication</h3>
    </div>
    <form action="{{ route('Domaine.Add') }}" method="POST" class="addDomain">
        @csrf
        <label for="domaine">Domaine</label>
        <input class="inputAddDomain" type="text" name="domaineName" id="domaine" placeholder="entrer un domaine" value="{{ old('domaineName') }}"/>
        <label href="" class="annulerAddDomain">annuler</label>
        <input type="submit" value="valider">
    </form>
    <form action="{{ route('Publication.publier') }}" method="POST" enctype="multipart/form-data" class="formPublication">
        @csrf
        <div class="titre">
            <label for="titrePublication">Titre</label>
            <input id="titrePublication" type="text" name="titre" value="{{ old('titre') }}"/>
        </div>
        <div class="Categorie">
            <label>Categorie</label>
            <div class="checkBox">
                <div for="article" class="check checkArticle">
                    <input checked id="article" name="categorie" type="radio"  hidden value="1"/>
                    <label class="pArticle" for="article">article</label>
                </div>
                <div class="check checkProblème">
                    <input id="problème" name="categorie" type="radio" hidden value="2"/>
                    <label class="pProblème" for="problème">problème</label>
                </div>
            </div>
        </div>

        <div class="Domaine">
            <div class="headDomain">
                <label >Domaine</label>
                <label class="labHeadDomain" for="CheckAddDomain">+ Ajouter une autre</label>
            </div>
            <select class="selectDomain" name="Domaine">
                @foreach($Domaines as $Domaine)
                <option value="{{ $Domaine->id }}">{{ $Domaine->Domaine }}</option>
                @endforeach
            </select>
        </div>
        <div class="Content">
            <label class="">Content</label>
            <textarea placeholder="Entrez les contenus ici..." rows="4" name="content">{{ old('content') }}</textarea>
        </div>
        <div class="image">
            <label>Media</label>
            <div class="Photo">
                <label for="photo" class="relativeLabel">
                    <input type="file" placeholder="Glisser déposer ou cliquez ici" id="photo" name="image" value="{{ old('image') }}">
                    <img src="{{ asset('icons/AddImage.png') }}" alt="" for="photo">
                    Glisser un fichier
                </label>
            </div>
        </div>
        <input class="Publier" type="submit" value="Publier">
    </form>
    <div class="footer">
        <span>© 2024 We-co Inc.</span>
    </div>
</aside>  
<script>
    const addDomain = document.querySelector('.labHeadDomain');
    const annulerAddDomain = document.querySelector('.annulerAddDomain');
    const addDomainForm = document.querySelector('.addDomain');
    const FormPricipal = document.querySelector('.formPublication'); ;
    addDomain.addEventListener('click', function() {
        addDomainForm.style.display = addDomainForm.style.display === 'flex' ? 'none' : 'flex';
        FormPricipal.style.filter = addDomainForm.style.display === 'flex' ? 'blur(5px)' : 'none';
    });
    annulerAddDomain.addEventListener('click', function(){
        addDomainForm.style.display = addDomainForm.style.display === 'flex' ? 'none' : 'flex';
        FormPricipal.style.filter = 'none';
    })
</script>