@extends('base')
@section('title', 'We-co signup')
@section('styles')
@vite(['resources/css/login.css'])
@endsection

@section('BtnLink', "/login")
@section('Btn', "Se connecter")

@section('content')

<span class="lighter-top"></span>
<div class="contetntFloatfen">
    <div class="floatFen">
        <div class="headFloatFen">
            <h3>we-co</h3>
            <h2>Qu'est-ce qui vous intéresse ?</h2>
            <p>Sélectionnez au moins 3 sujets pour personnaliser votre flux We-co.</p>
        </div>
        <form action="{{ route('createContenir') }}" method="POST">
            <div class="mainFloatFen">
                @csrf
                @foreach($Domaines as $Domaine)
                    <div class="discoverRadio">
                        <input hidden name="domaine[]" type="checkbox" id="{{ 'domaine'.$Domaine->id }}" value="{{ $Domaine->id }}" class="selectDomaine" />
                        <label for="{{ 'domaine'.$Domaine->id }}">{{ $Domaine->Domaine }}</label>
                    </div>
                @endforeach
            </div>
            <div class="commencer">
                <input type="submit" value="Commencer" disabled>
            </div>
        </form>
    </div>    
</div>
<span class="lighter-bottom"></span>
<script>
    var verification = 0;
    const btn = document.querySelector('input[type=submit]');
    document.querySelectorAll('.selectDomaine').forEach(function(checkbox) {
        checkbox.addEventListener('change', function() {            
            const parent = this.closest('.discoverRadio');
            const label = parent.querySelector('label');
            if (this.checked) {
                verification += 1;
                // console.log(verification);
                parent.classList.add('selected');
                label.style.color = '#137FEC';
            } 
            else {
                verification -= 1;
                // console.log(verification);
                parent.classList.remove('selected');
                label.style.color = '#92ADC9';
            }
            btn.disabled = verification >= 3 ? false : true
        });
    });
    btn.addEventListener('click', )
</script>
@endsection