<?php

namespace App\Http\Controllers\Front;

use App;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Facades\Voyager;
use View;
use App\Traits\Language;

use Illuminate\Support\Facades\Cache;

use TCG\Voyager\Models\Category as Category;
use App\Models\Social;
use App\Models\Benefit;


class HomeController extends Controller
{


    public function __construct() {
 
       View::share ( ['socials'=>Social::withTranslations(App::getLocale())->get()] );
    }
    
   
    public function home_page(){
        $benefits=Benefit::withTranslations(App::getLocale())->get();
        return view('front.home.home',compact(['benefits']));
    }
    
    
    
    
    public function test(){
        // return App::getLocale();
        $categories= Category::withTranslations()->get();
        $menu = Cache::remember('menu'.App::getLocale(), 1, function () use ($categories) {
            
            return menu('front','front.common.menu',['categories'=>$categories]);
        });
        return $menu;
       
       return $categories;
        // dd($categories);
       return view('home',compact('categories')); 
    }
}
            