<?php

namespace App\Http\Controllers\Front;

use App;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Facades\Voyager;
use View;
use App\Traits\Language;

class HomeController extends Controller
{
    
    use Language;

    public function __construct() {

       
    $this->isRtl();

       View::share ( 'isRtl', $this->isRtl() );
    }
    
   
    public function home_page(){
        // $posts=Voyager::modelClass('MenuItem')::find(16);
        // // $posts = $posts->translate('pt', 'pt');
        // return $posts->getTranslatedAttribute('title');
        // return $posts->getTranslationsOf('title')[App::getLocale()];
        
        //  $menu_item=Voyager::modelClass('MenuItem')::with('translations')->whereTitle('Gallery')->first();
        // $menu_item = $menu_item->translate('ar');
        
        // // return $menu_item->getTranslatedAttribute('title');
        // return $menu_item->get();
        
        // $menu_items=Voyager::modelClass('Menu')::whereName('front')->with('items.translations')->get()->pluck('items')->collapse()->values();
        // foreach ($menu_items as $item){
        //     return $item->getTranslatedAttribute('title','en');
        // }
            
        // dd($menu);
        return view('front.home.home');
        
        
       
    }
}
