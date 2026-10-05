@extends('base')

@section('title', 'We-co Acceuil')
@section('styles')
@vite(['resources/css/acceuil.css'])
@endsection
@section('content')
<div class="wrapper">
    @extends('headerAcceuil')
</div>
@section('main')

<div class="commentSection" hidden>
    @include('Publication\comment')
</div>
<div class="mainContent">
    <div class="filter">
        @include('aside')
    </div>
    <span class="separation"></span>

    <div class="publications">
        {{ $Publications -> links() }}
        @foreach($Publications as $Publication)
        <div class="pubContent">
            <div class="pubHead">
                <img src="{{ 'https://i.pravatar.cc/300?u=' . $Publication->User->id }}" alt="">
                <div class="infoPub">
                    <!--<h4>{{fake('fr_FR')->name() }}</h4>-->
                    <h4>{{ $Publication->User->name }}</h4>
                    <p>{{ rand(1, 30).'-'.rand(1, 3).'-2026'}}</p>
                </div>
                <div class="badgeDomaine">
                    <p>{{ $Publication->Domaine->Domaine }}</p>
                </div>
            </div>
            <div class="pubMain">
                <h2>{{ $Publication->title }}</h2>
                <p>{!! nl2br(e($Publication->content)) !!}</p>
                <img src="{{ str_contains($Publication->images, 'https') ? $Publication->images : Storage::url($Publication->images) }}" height="auto">
            </div>
            <div class="pubFoot">
                <!-- <div class="action">
                    <img src="{{ asset('icons/like.svg') }}" alt="like" title="like">
                    <p>{{ rand(0, 900) }}</p>
                </div> -->
                <div class="action">
                    <img src="{{ asset('icons/comment.svg') }}" alt="commentaire" title="commentaire" class="OpenComment" data-idpub="{{ $Publication->id }}">
                    <!-- <p>{{ rand(0, 100) }}</p> -->
                    <p></p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <span class="separation"></span>
    <div class="formulaire">
        @include('Publication/CreatePublication')
    </div>
</div>
<script>
    function nl2br(str) {
        const escaped = str
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;');
        return escaped.replace(/\n/g, '<br>');
    }
    let idPub;
    const btnComment = document.querySelectorAll('.OpenComment');
    let mainContent = document.querySelector('.mainContent');
    let header = document.querySelector('.header');
    let commentSection = document.querySelector('.commentSection');
    btnComment.forEach(function(btn) {
        btn.addEventListener('click', function() {
            idPub = this.dataset.idpub;
            // alert(idPub);
            console.log(`Id pub : ${idPub}`)
            commentSection.hidden = false;
            mainContent.style.filter = 'blur(5px)';
            header.style.filter = 'blur(5px)';
            // console.log(mainContent);

            fetch(`/Publication?commentaire=true&id=${idPub}`)
                .then(res => res.json())
                .then(query => {
                    //console.log(query);
                    document.getElementById('dataName').textContent = query.user.name;
                    document.getElementById('dataDomaine').textContent = query.domaine.Domaine;
                    document.getElementById('dataTitre').textContent = query.title;
                    document.getElementById('dataParagraphe').innerHTML = nl2br(query.content);
                    const storageUrl = "{{ asset('storage') }}";
                    document.getElementById('dataImg').src = query.images.includes('http') ? query.images : `${storageUrl}/${query.images}`;
                    document.getElementById('IdPubCom').value = query.id;
                });

            refreshComment(idPub);
        });
    });

    const PosterCom = document.getElementById('PosterCom');
    PosterCom.addEventListener('click', function() {
        // const idPub = document.getElementById('IdPubCom').value;
        const comment = document.getElementById('texteCommentaire').value;
        // console.log(`Id pub : ${idPub}`)
        if (!comment.trim()) return alert('Le champ commentaire ne peut pas être vide');

        fetch(`/Commentaire`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}',
                },
                body: JSON.stringify({
                    idPub: idPub,
                    commentaire: comment
                })
            })
            .then(res => res.text())
            .then(data => {
                document.getElementById('texteCommentaire').value = '';

                refreshComment(idPub);
            });
    });

    function refreshComment(id) {
        fetch(`/ReadCommentaire?id_pub=${id}`)
            .then(res => res.json())
            .then(commentaires => {
                const container = document.getElementById('listeCommentaires');
                document.getElementById('nombreCommentaires').textContent =
                    commentaires.length + ' commentaire(s)';

                if (commentaires.length === 0) {
                    container.innerHTML = '<p class="aucunComment">Aucun commentaire pour le moment.</p>';
                    return;
                }
                // var laracode = "@if(" + id + "== Auth::id())";
                // console.log(laracode)
                // var endlaracode = `@endif`;
                // var html = "<img src="{{asset('icons/trash-2.svg')}}" alt="options" title = "options" class="moreOptions" data-idcommentaire = ${c.id}>"
                container.innerHTML = commentaires.map(c => `
                    <div class="commentaires">
                        <img 
                            src="https://i.pravatar.cc/300?u=${c.user.id}" 
                            alt="${c.user.name}"
                            width="40"
                        >
                        <div class="contentComment">
                            <div class="headContent">
                                <h4>${c.user.name}</h4>
                                
                            </div>
                            <p>${nl2br(c.content_com)}</p>
                        </div>
                    </div>
                `).join('');
                MoreOption();
            })
            .catch(err => {
                console.error(err);
            });

    }

    // function MoreOption() {
    //     const moreOptions = document.querySelectorAll('.moreOptions');
    //     moreOptions.forEach(function(mo) {
    //         mo.addEventListener('click', function(e) {
    //             e.stopPropagation(); // ← empêche le clic de se propager

    //             const option = this.closest('.contentComment').querySelector('.option');

    //             document.querySelectorAll('.option').forEach(o => {
    //                 if (o !== option) option.classList.remove('visible');
    //             });

    //             option.classList.toggle('visible');
    //         });
    //     });

    //     document.addEventListener('click', function() {
    //         document.querySelectorAll('.option').forEach(o => o.classList.remove('visible'));
    //     });
    // }

    const exitComment = document.getElementById('exitComment');
    exitComment.onclick = function() {
        commentSection.hidden = true;
        mainContent.style.filter = 'blur(0px)';
        header.style.filter = 'blur(0px)';
        document.getElementById('dataName').textContent = 'chargement...';
        document.getElementById('dataDomaine').textContent = '...';
        document.getElementById('dataTitre').textContent = 'chargement...';
        document.getElementById('dataParagraphe').innerHTML = 'veuillez attendre 1s';
        document.getElementById('dataImg').src = ' ';
    };
</script>

@endsection
@endsection