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


use App\Models\Information;
use App\Models\Timeline;
use App\Models\Social;
use App\Models\Project;
use App\Models\Report;
use App\Models\Request as Req;
use App\Models\Video;
use App\Models\Link;
use App\Models\Post;

class HomeController extends Controller
{
    private $per_page=9;
    private $post_per_home=3;
    private $project_per_home=6;
    private $banner_per_home=3;
    private $cache_minutes=1;
    private $video_per_home=3;
    private $video_per_page=8;
    private $report_per_home=4;
    
    public function __construct() {
       
       View::share ([
           'socials'=>Social::withTranslations(App::getLocale())->get(),
           'is_rtl'=>Helper::isRtl()
           ]);
    }
    
   
    public function home_page(){
        $posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->limit($this->post_per_home)->get();
        $information=Information::withTranslations(App::getLocale())->first();
        $categories=Category::with('papers')->withTranslations(App::getLocale())->orderBy('order','asc')->get();
        $timelines=Timeline::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->get();
        $projects=Project::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->limit($this->project_per_home)->get();
        $reports=Report::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->limit($this->report_per_home)->get();
        $videos=Video::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->limit($this->video_per_home)->get();
        $links=Link::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->get();
        return view('front.home.index',compact(['posts','information','timelines','categories','projects','reports','videos','links']));
    }
    
    
    public function pages_show($slug){
        $page=Page::where('slug',$slug)->firstOrFail();
        
        return view('front.pages.'.$slug.'.index',compact('page'));
    }
    
    
    public function blog_index(){
        $posts=Post::with('authorId')->withTranslations(App::getLocale())->orderBy('created_at','desc')->paginate($this->per_page);
        return view('front.blog.index',compact('posts'));
    }
    public function blog_show(Post $post, $slug){
        return view('front.blog.show',compact('post'));
    }
    
    public function project_index(){
        $projects=Project::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->paginate($this->per_page);
        return view('front.project.index',compact('projects'));
    }
    public function project_show(Project $project,$slug=""){
        return view('front.project.show',compact('project'));
    }


    public function video_index(){
        $videos=Video::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->paginate($this->video_per_page);
        return view('front.videos.index',compact('videos'));
    }
    public function video_show(Video $video,$slug=""){
        return view('front.videos.show',compact('video'));
    }
    
    

    public function reports(){
        $reports=Report::withTranslations(App::getLocale())->orderBy('order','asc')->orderBy('created_at','desc')->paginate($this->per_page);
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
        
        $video=Video::first();
        
        echo $video->apara();
    }
}
            