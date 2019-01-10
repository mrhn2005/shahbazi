<?php

namespace App\Http\Controllers\Front;

use App;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Facades\Voyager;
use View;
use App\Traits\Language;
// use Webpatser\Uuid\Uuid;
use Illuminate\Support\Facades\Cache;

use TCG\Voyager\Models\Category as Category;
use TCG\Voyager\Models\Page as Page;
use TCG\Voyager\Models\Post as Post;

use App\Models\Social;
use App\Models\Benefit;
use App\Models\Banner;
use App\Models\Request as Req;

class HomeController extends Controller
{
    private $per_page=6;
    private $post_per_home=5;
    private $banner_per_home=3;
    public function __construct() {
       
       View::share ( ['socials'=>Social::withTranslations(App::getLocale())->get()] );
    }
    
   
    public function home_page(){
        $benefits=Benefit::withTranslations(App::getLocale())->get();
        $posts=Post::withTranslations(App::getLocale())->limit($this->post_per_home)->get();
        $banners=Banner::withTranslations(App::getLocale())->limit($this->banner_per_home)->get();
        return view('front.home.home',compact(['benefits','posts','banners']));
    }
    
    
    public function pages_show($slug){
        $page=Page::where('slug',$slug)->firstOrFail();
        
        return view('front.pages.'.$slug.'.index',compact('page'));
    }
    
    
    public function blog_index(){
        $posts=Post::with('authorId')->withTranslations(App::getLocale())->paginate($this->per_page);
        return view('front.blog.index',compact('posts'));
    }
    public function blog_show(Post $post, $slug){
        return view('front.blog.show',compact('post'));
    }
    
    
    public function category_show(Category $category, $slug){
        return view('front.service.index',compact('category'));
    }
    public function category_request(Request $request){
        Req::create($request->all());
        
        return redirect()->back()->with([
            'message'=>trans('messages.success_created'),
            'alert-type'=>'success'
        ]);
    }
    
    
    
    public function test(){
        // return Uuid::generate();
        $slug='lorem-ipsum-post-trans';
        $post=Post::withTranslations()->where(function ($query) use($slug) {
                dd($query);
            })
            ->get();
        return $post->getTranslatedAttribute('slug');
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
            