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

use App\Helpers\Helper;

use TCG\Voyager\Models\Category as Category;
use TCG\Voyager\Models\Page as Page;
use TCG\Voyager\Models\Post as Post;

use App\Models\Information;
use App\Models\Timeline;
use App\Models\Social;
use App\Models\Project;
use App\Models\Report;
use App\Models\Request as Req;

class HomeController extends Controller
{
    private $per_page=9;
    private $post_per_home=3;
    private $project_per_home=3;
    private $banner_per_home=3;
    private $cache_minutes=1;
    
    public function __construct() {
       
       View::share ([
           'socials'=>Social::withTranslations(App::getLocale())->get(),
           'is_rtl'=>Helper::isRtl()
           ]);
    }
    
   
    public function home_page(){
        $posts=Post::withTranslations(App::getLocale())->limit($this->post_per_home)->get();
        $information=Information::withTranslations(App::getLocale())->first();
        $timelines=Timeline::withTranslations(App::getLocale())->get();
        $categories=Category::with('papers')->withTranslations(App::getLocale())->orderBy('order','asc')->get();
        $projects=Project::withTranslations(App::getLocale())->orderBy('order','asc')->limit($this->project_per_home)->get();
        $reports=Report::withTranslations(App::getLocale())->orderBy('order','asc')->limit($this->project_per_home)->get();
        return view('front.home.index',compact(['posts','information','timelines','categories','projects','reports']));
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
    
    public function project_index(){
        $projects=Project::withTranslations(App::getLocale())->paginate($this->per_page);
        return view('front.project.index',compact('projects'));
    }
    public function project_show(Project $project,$slug=""){
        return view('front.project.show',compact('project'));
    }


    public function reports(){
        $reports=Report::withTranslations(App::getLocale())->paginate($this->per_page);
        return view('front.report.index',compact('reports'));
    } 
    
    
    public function papers(){
        $categories=Category::with('papers')->withTranslations(App::getLocale())->orderBy('order','asc')->get();
        return view('front.papers.index',compact('categories'));
    }
    public function category_request(Request $request){
        Req::create($request->all());
        
        return redirect()->back()->with([
            'message'=>trans('messages.success_created'),
            'alert-type'=>'success'
        ]);
    }
    
    
    
    public function local_switch($local){
         return redirect($local);
    }
    
    public function test(){
        $post=Post::first();
        
        return $post->thumbnail('small');
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
            