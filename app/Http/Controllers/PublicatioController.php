<?php

namespace App\Http\Controllers;

use App\Models\Catégorie;
use App\Models\Domaines;
use App\Models\Publication;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

use function PHPUnit\Framework\isNull;

class PublicatioController extends Controller
{
    //
    // public $domaines = 
    public function AffichePublication(Request $request)
    {

        if (!Auth::check()) {
            return redirect()->route('Page.login');
        }

        if ($request->boolean('commentaire')) {
            $id = $request->input('id');
            $publication = Publication::with(['User', 'domaine'])->find($id);
            return response()->json($publication);
        }

        $isExplorer = $request->boolean('explorer');
        $User = User::with('domaines')->find(Auth::id());
        $domainesValues = $User->domaines->pluck('id');

        if ($search = $request->search) {
            // $request->validate([
            //     'search' => 'required',
            // ]);
            $pub = Publication::with(['domaine', 'User'])
                ->where('title', 'LIKE', '%' . $search . '%')
                ->orWhereHas('domaine', function ($query) use ($search) {
                    $query->where('Domaine', 'LIKE', '%' . $search . '%');
                })
                ->orWhereHas('User', function ($query) use ($search) {
                    $query->where('name', 'LIKE', '%' . $search . '%');
                });

            // dd($pub->get());
            return view('acceuil', [
                'Publications' => $pub->paginate(5),
                'Categories'   => Catégorie::latest()->get(),
                'Domaines'     => Domaines::latest()->get(),
                'isExplorer'   => $isExplorer,
            ]);
        }
        // return back()->withErrors([
        //     'search' => 'Veuillez remplir le champ recherche',
        // ]);

        $query = Publication::with('User')->latest()
            ->where('id_categorie', 1);

        if (!$isExplorer) {
            $query->whereIn('id_domaine', $domainesValues);
        }

        return view('acceuil', [
            'Publications' => $query->paginate(5)->appends($request->query()),
            'Categories'   => Catégorie::latest()->get(),
            'Domaines'     => Domaines::latest()->get(),
            'isExplorer'   => $isExplorer,
        ]);
    }

    public function filtreCategorie(Request $cat)
    {
        if (Auth::check()) {
            $categorie = $cat->input('categorie');
            if ($categorie == "Article") {
                $id_cat = 1;
            } else {
                $id_cat = 2;
            }
            $User = User::with('domaines')->find(Auth::id());
            $domainesValues = $User->domaines->pluck('id');
            //dd($id_cat);
            return view('acceuil', [
                'Publications' => Publication::with(['categorie', 'domaine', 'User'])->latest()->where([
                    'id_categorie' => $id_cat,
                ])
                    ->whereIn('id_domaine', $domainesValues)
                    ->paginate(5)
                    ->appends($cat->query()),
                'Categories' => Catégorie::latest()->get(),
                'Domaines' => Domaines::latest()->get(),
            ]);
        }
    }

    public function filtreDomaine(Request $dom)
    {
        // dd($dom->domaine);
        $dom->validate([
            'domaine' => 'required',
        ]);
        if (Auth::check()) {
            $domaines = $dom->input('domaine');
            $url = $dom->fullUrl();
            // if(str_contains($url, "categorie")){
            // dd('ok');
            // }
            // dd($domaines);
            if (in_array('mes_domaines', $domaines)) {
                return redirect()->route('home.page');
            }
            return view('acceuil', [
                'Publications' => Publication::with(['categorie', 'domaine', 'User'])->latest()->whereIn('id_domaine', $domaines)->paginate(5)->appends(request()->query()),
                'Categories' => Catégorie::latest()->get(),
                'Domaines' => Domaines::latest()->get(),
            ]);
        }
    }

    public function Publier(Request $publication)
    {
        $publication->validate([
            'titre' => 'required|string',
            'content' => 'required|string',
            'categorie' => 'required|int',
            'Domaine' => 'required|string',
            'image' => ['required', 'image', 'mimes:jpeg,png,jpg,gif,webp', 'max:2048'],
        ]);
        //dd($publication->input('image'));
        //dd($publication->Domaine);
        if ($publication->hasFile('image') && $publication->file('image')->isValid()) {
            $path = $publication->file('image')->store('images', 'public');
        }
        //return dd($path);
        Publication::create([
            'title' => $publication->titre,
            'content' => $publication->content,
            'id_categorie' => $publication->categorie,
            'slug' => Str::slug($publication->titre),
            'id_domaine' => $publication->Domaine,
            'images' => $path,
            'user_id' => Auth::id()
        ]);
        return redirect()->route('home.page')->with('success', 'Votre article est publié avec succès !');
    }
}
