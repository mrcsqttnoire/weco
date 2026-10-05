<?php

use App\Http\Controllers\AuthentController;
use App\Http\Controllers\CommentaireController;
use App\Http\Controllers\ContenirController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\DomainesController;
use App\Http\Controllers\PublicatioController;
use App\Models\contenir;
use App\Models\Publication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::controller(AuthentController::class)->group(function (){
    Route::get('/signup', 'showSignup')->name('Page.signup');
    Route::post('/signup', 'signup')->name('signup');

    // Route::get('signup/domaine', 'signupDomaine')->name('signupDomaine');

    Route::get('/login', 'showFormLogin')->name('Page.login');
    Route::post('/login', 'login')->name('login');

    Route::get('/logout', 'logout')->name('logout');
});

Route::middleware(['auth', 'cache.headers:no_store'])->controller(PublicatioController::class)->group(function (){
    Route::get('/', 'AffichePublication')->name('home.page');
    Route::post('/', 'Publier')->name('Publication.publier');
    Route::get('/categorie', 'filtreCategorie')->name('Filtre.Categorie');
    Route::match(['get','post'], 'filtre/domaine', 'filtreDomaine')->name('Filtre.Domaine');
    Route::get('/Publication', 'AffichePublication')->name('Get.Publication');
    Route::get('/?explorer=true', 'AffichePublication')->name('explorer');
});

Route::middleware(['auth', 'cache.headers:no_store'])->controller(DomainesController::class)->group(function (){
    Route::get('/domaine', 'DomaineSelect')->name('Domaine.Select');
    Route::post('/domaine', 'create')->name('Domaine.Add');

    Route::get('/signup/domaine', 'FormDomaineSelect')->name('signupDomaine');
    });
    
Route::middleware(['auth', 'cache.headers:no_store'])->controller(ContenirController::class)->prefix('signup')->group(function () {
    Route::post('/domaine/create', 'create')->name('createContenir');
    Route::get('/contenir', 'index')->name('contenir.select');     
});

Route::controller(CommentaireController::class)->group(function () {
    Route::post('/Commentaire', 'create')->name('commentaire.create');
    Route::get('/ReadCommentaire', 'index')->name('commentaire.get');
});
