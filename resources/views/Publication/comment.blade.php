@vite(['resources/css/comment.css'])
<div class="commentairefen">
    <div class="headComFen">
        <h1>Séction commentaire</h1>
        <img src="{{ asset('icons\x.svg') }}" alt="" width="32px" height="32px" id="exitComment">
    </div>
    <div class="commentContent">
        <div class="pubHead">
            <img src="{{ 'https://i.pravatar.cc/300?u=' . fake()->unique()->uuid() }}" alt="">
            <div class="infoPub">
                <!--<h4>{{fake('fr_FR')->name() }}</h4>-->
                <h4 id="dataName">chargement...</h4>
                <p>{{ rand(1, 30).'-'.rand(1, 3).'-2026'}}</p>
            </div>
            <div class="badgeDomaine">
                <p id="dataDomaine">...</p>
            </div>
        </div>
        <div class="pubMainCom">
            <h2 id="dataTitre">chargement...</h2>
            <p id="dataParagraphe">veuillez attendre 1s</p>
            <img src="" height="auto" id="dataImg">
        </div>
    </div>
    <div class="titreCom">
        <h3>discussion</h3>
        <p id="nombreCommentaires">0 commentaire</p>
    </div>
    <div class="commentaireForm">
        <img src="{{ 'https://i.pravatar.cc/300?u=' . fake()->unique()->uuid() }}" alt="">
        <input type="text" id="IdPubCom" name="idPub" hidden>
        <textarea name="commentaire" id="texteCommentaire" placeholder="Entrer votre commentaire ici..."></textarea>
        <input type="submit" value="Poster" id="PosterCom">
    </div>
    <div class="commentaireContent" id="listeCommentaires">
        <!-- <img src="{{ 'https://i.pravatar.cc/300?u=' . fake()->unique()->uuid() }}" alt="tt" width="">
        <div class="contentComment">
            <h4>Lorem ipsum dolor sit</h4>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Accusantium nostrum at similique itaque, eveniet delectus quas tempore dolores facere necessitatibus nam sequi reprehenderit iusto molestiae perferendis.</p>
        </div> -->
        <!-- <div class="option" hidden>
            <div class="action edit">
                <img src="{{ asset('icons/edit.svg') }}" alt="modifier" id="editComment">
                <p>Modifier</p>
            </div>
            <span class="OptionSéparation"></span>
            <div class="action delete">
                <img src="{{ asset('icons/trash.svg') }}" alt="supprimer" id="deleteComment">
                <p>Supprimer</p>
            </div>
        </div> -->
    </div>
</div>
<script>
    const action = document.querySelectorAll(".action");
    listenaction();

    function listenaction() {
        action.forEach(function(act) {
            act.addEventListener('mouseenter', function() {
                // this.style.backgroundColor = "#243241";
                this.classList.add('animate');
                this.classList.remove('reset');
            })
            act.addEventListener('mouseleave', function() {
                // this.style.backgroundColor = "transparent"
                this.classList.add('reset');
                this.classList.remove('animate');
            })
        })
    }
</script>