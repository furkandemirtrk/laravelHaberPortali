<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Settings;

class AdminGetController extends AdminController
{
    public function get_index(){
        return view('backend.index');
    }

    public function get_settings(){
        $ayarlar = Settings::where('id',1)->select('settings.*')->first();
        return view('backend.settings')->with('settings',$ayarlar);
    }

    public function get_articles(){
        $articles = Article::where('active',1)->orderBy('id','asc')->get();
        return view('backend.articles')->with('articles',$articles);
    }
    public function get_articles_add(){
        $cat = Category::where('active',1)->where('cat_id',0)->get();
        return view('backend.articles-add')->with('cat',$cat);
    }

    public function get_category(){
        $cat = Category::where('active',1)->get();
        return view('backend.category')->with('cat',$cat);
    }

    public function get_category_add(){
        $cat = Category::where('active',1)->where('cat_id',0)->get();
        return view('backend.category-add')->with('cat',$cat);
    }

    public function get_articles_edit($url){
        $cat = Category::where('active',1)->where('cat_id',0)->get();
        $art = Article::where('url',$url)->where('active',1)->first();
        return view('backend.articles-edit')->with('article',$art)->with('cat',$cat);
    }
}
