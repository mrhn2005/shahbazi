<?php 

namespace App\Helpers;

use App;

use Illuminate\Support\Facades\Cache;

use TCG\Voyager\Models\Category as Category;

class Helper
{
    //determine if right align language is used for styling and ordering, RTL language can be added in app/config
    public static function isRtl()
    {
        if(array_key_exists(App::getLocale(), config('app.rtlLocales'))){
            return true;
        }
        
        return false;
    }
    
    //Front end menu view
    public static function menu(){
        $minutes=1;
        $menu = Cache::remember('menu'.App::getLocale(), $minutes, function (){
            $categories= Category::withTranslations()->get();
            return menu('front','front.common.menu',['categories'=>$categories]);
        });
        
        return $menu;
    }
    
    
    
    public static function is_persian( $string ) {
    	$rtl_chars_pattern = '/[\x{0590}-\x{05ff}\x{0600}-\x{06ff}]/u';
    	return preg_match($rtl_chars_pattern, $string);
    }
}