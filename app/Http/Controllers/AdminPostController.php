<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Settings;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class AdminPostController extends AdminController
{
    public function post_settings(Request $request){

        if(isset($request->logo)){
            $validator = Validator::make($request->all(),[
                'logo' => 'mimes:jpg,jpeg,png,gif',
            ]);
            if($validator->fails()){
                return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Dosya uzantısı aşağıdakilerden biri olmalıdır. <br> <b>jpg,jpeg,png,gif</b>']);
            }

            $logo = Input::file('logo');
            $logo_u = Input::file('logo')->getClientOriginalExtension();
            $logo_name = 'logo.' . $logo_u;
            Storage::disk('uploads')->makeDirectory('img');
            Image::make($logo->getRealPath())->resize(150,150)->save('uploads/img/'.$logo_name);
        }
        try{
            unset($request['_token']);
            if (isset($request->logo)){
                unset($request['eski_logo']);
                Settings::where('id',1)->update($request->all());
                Settings::where('id',1)->update(['logo'=>$logo_name]);
            }
            else{
                $eski_logo = $request->eski_logo;
                unset($request['eski_logo']);
                Settings::where('id',1)->update($request->all());
                Settings::where('id',1)->update(['logo'=>$eski_logo]);

            }
            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.']);

        }catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.'.$e ]);
        }

    }

    public function post_articles_add(Request $request){
        $validator = Validator::make($request->all(),[
            'image' => 'mimes:jpg,jpeg,png,gif',
            'name' => 'required',
            'content' => 'required',
            'cat_id' => 'required',
            'tags' => 'required',
        ]);
        if($validator->fails()){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Doldurulması zorunlu olan alanları doldurun.']);
        }
        try{
            $tarih = str_slug(Carbon::now());
            $slug = $tarih.'-'.str_slug($request->name);

            $img= Input::file('image');
            $img_u = Input::file('image')->getClientOriginalExtension();
            $img_name = $slug . '.' . $img_u;
            Storage::disk('uploads')->makeDirectory('img');
            Image::make($img->getRealPath())->save('uploads/img/'.$img_name);

            $request->merge(['url'=>$slug]);
            $request->merge(['active'=>1]);
            $request->image = $img_name;

            if (isset($request->slider))
                $slider = 1 ;
            else
                $slider = 0;
            //Article::create($request->all());
            Article::create([
                'url' => $slug,
                'name' => $request->name,
                'content' => $request->content,
                'short_content' => $request->short_content,
                'image' => $img_name,
                'cat_id' => $request->cat_id,
                'slider' => $slider,
                'video_url' => $request->video_url,
                'tags'=> $request->tags,
                'author' => 0,
                'active' => 1]);
            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.']);
        }catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.'. $e]);
        }
    }

    public function post_articles_delete(Request $request){
        try{
            Article::where('url',$request->url)->update(['active'=>0]);
            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.']);
        }catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.']);
        }
    }

    public function post_articles_edit($url,Request $request){
        $img_name = "";
        if(isset($request->image)){
            $validator = Validator::make($request->all(),[
                'image' => 'mimes:jpg,jpeg,png,gif',
            ]);
            if($validator->fails()){
                return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Dosya uzantısı aşağıdakilerden biri olmalıdır. <br> <b>jpg,jpeg,png,gif</b>']);
            }
            $tarih = str_slug(Carbon::now());
            $slug = $tarih.'-'.str_slug($request->name);
            $img= Input::file('image');
            $img_u = Input::file('image')->getClientOriginalExtension();
            $img_name = $slug . '.' . $img_u;
            Storage::disk('uploads')->makeDirectory('img');
            Image::make($img->getRealPath())->save('uploads/img/'.$img_name);
        }
        $validator = Validator::make($request->all(),[
            'name' => 'required|max:250',
            'content' => 'required',
            'cat_id' => 'required',
            'tags' => 'required|max:250',
        ]);
        if($validator->fails()){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Doldurulması zorunlu olan alanları doldurun.']);
        }
        if ($request->slider == "on")
            $slider = 1 ;
        else
            $slider = 0;
        try{
            unset($request['_token']);
            if(isset($request->image)){
                unset($request['old_image']);
                Article::where('url',$url)->update(['name'=>$request->name ,
                    'content'=>$request->content,
                    'short_content'=>$request->short_content,
                    'cat_id'=>$request->cat_id,
                    'video_url'=>$request->video_url,
                    'image'=>$img_name,
                    'tags'=>$request->tags]);
            }else{
                Article::where('url',$url)->update(['name'=>$request->name ,
                    'content'=>$request->content,
                    'short_content'=>$request->short_content,
                    'cat_id'=>$request->cat_id,
                    'slider'=>$slider,
                    'video_url'=>$request->video_url,
                    'tags'=>$request->tags]);
            }

            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.']);
        }catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.'.$e]);
        }
    }


    public function post_category_add(Request $request){
        $validator = Validator::make($request->all(),[
            'name' => 'required',
        ]);
        if($validator->fails()){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Kategori adınız boş bırakmayınız']);
        }
        try{
            $url = str_slug($request->name);
            $request->merge(['active'=>1]);
            $request->merge(['url'=>$url]);
            Category::create($request->all());
            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.']);

        }
        catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.']);
        }
    }
    public function post_category_delete(Request $request){
        try{
            Category::where('id',$request->id)->update(['active'=>0]);
            return response(['durum' => 'success', 'baslik'=>'Başarılı', 'icerik'=>'Güncelleme işlemi başarılı.'. $request->id]);
        }catch (\Exception $e){
            return response(['durum' => 'error', 'baslik'=>'Başarısız', 'icerik'=>'Güncelleme işlemi başarısız.']);
        }
    }
}
