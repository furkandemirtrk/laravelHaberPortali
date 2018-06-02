<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeGetController extends HomeController
{
    public function get_index(){
        $settings = Settings::first();
        $video = Article::where('active',1)->whereNotNull('video_url')->limit(4)->get();
        $slider = Article::where('active',1)->where('slider',1)->limit(3)->get();
        $category = Category::where('active',1)->get();
        $box = Article::where("active",1)->orderBy('id','desc')->limit(4)->get();
        $hits = Article::where("active",1)->orderBy('hit','desc')->limit(3)->get();
        $tag = Article::where('active',1)->whereNotNull('tags')->get();
        $articles = Article::where("active",1)->orderBy('id','desc')->paginate(8);
        return view('frontend.index')
            ->with('articles',$articles)
            ->with('category',$category)
            ->with('slider',$slider)
            ->with('hits',$hits)
            ->with('box',$box)
            ->with('tag',$tag)
            ->with('settings',$settings)
            ->with('video',$video);

    }
    public function get_tags($url){
        $settings = Settings::first();
        $video = Article::where('active',1)->whereNotNull('video_url')->limit(4)->get();
        $slider = Article::where('active',1)->where('slider',1)->limit(3)->get();
        $category = Category::where('active',1)->get();
        $box = Article::where("active",1)->orderBy('id','desc')->limit(4)->get();
        $hits = Article::where("active",1)->orderBy('hit','desc')->limit(3)->get();
        $tag = Article::where('active',1)->whereNotNull('tags')->get();
        $articles = Article::where("active",1)->where("tags","like", "%".$url."%")->orderBy('id','desc')->paginate(8);
        return view('frontend.index')
            ->with('articles',$articles)
            ->with('category',$category)
            ->with('slider',$slider)
            ->with('hits',$hits)
            ->with('box',$box)
            ->with('tag',$tag)
            ->with('settings',$settings)
            ->with('video',$video);
    }
    public function get_index_redirect(){
        return redirect('/');
    }

    public function get_giris_yap(){
        if(Auth::check()){
            return redirect('/');
        }
        $settings = Settings::first();
        $category = Category::where('active',1)->get();
        $tag = Article::where('active',1)->whereNotNull('tags')->get();
        return view('frontend.giris-yap')
            ->with('settings',$settings)
            ->with('tag',$tag)
            ->with('category',$category);
    }

    public function get_cikis_yap(){
        Auth::logout();
        return redirect('/');
    }

    public function get_content($url){
        $settings = Settings::first();
        $cat = explode('/',$url);
        $video = Article::where('active',1)->whereNotNull('video_url')->limit(4)->get();
        $hits = Article::where("active",1)->orderBy('hit','desc')->limit(3)->get();
        $category = Category::where('active',1)->get();
        $content = Article::where('url',$cat[count($cat)-1])->where('active' , 1)->first();
        $tag = Article::where('active',1)->whereNotNull('tags')->get();
        if(isset($content)){
            Article::where('url',$content->url)->update(["hit" => $content->hit +1 ]);
            return view('frontend.content')
                ->with('content',$content)
                ->with('category',$category)
                ->with('expCat',$cat)
                ->with('video',$video)
                ->with('tag',$tag)
                ->with('settings',$settings)
                ->with('hits',$hits);

        }else{
            $a = $cat[count($cat)-1];
            $b = Category::where('active',1)->where('url',$a)->get();
            $articles = $b[0]->article  ;
            return view('frontend.index')
                ->with('articles',$articles)
                ->with('category',$category)
                ->with('expCat',$cat)
                ->with('video',$video)
                ->with('settings',$settings)
                ->with('tag',$tag)
                ->with('hits',$hits);
        }
    }
}
