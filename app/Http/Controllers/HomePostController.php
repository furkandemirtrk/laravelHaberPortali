<?php

namespace App\Http\Controllers;

use App\Article;
use App\Comment;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;

class HomePostController extends HomeController
{
    public function post_comment(Request $request, $url)
    {
        if (Auth::check()) {
            $validator = Validator::make($request->all(), [
                'comment' => 'required',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required',
                'comment' => 'required',
            ]);
        }

        if ($validator->fails()) {
            return response(['durum' => 'error', 'baslik' => 'Başarısız', 'icerik' => 'Doldurulması zorunlu olan alanları doldurun.']);
        }
        try {
            if (!isset($request->comment_id))
                $request->comment_id = 0;
            if(Auth::check())
                $user_id = Auth::user()->id;
            $cat = explode('/', $url);
            $art_id = Article::where('url', $cat[count($cat) - 1])->first();
            Comment::create([
                'name' => $request->name,
                'email' => $request->email,
                'comment' => $request->comment,
                'comment_id' => $request->comment_id,
                'user_id' => $user_id,
                'article_id' => $art_id['id'],
                'active' => 1]);
            return response(['durum' => 'success', 'baslik' => 'Başarılı', 'icerik' => 'Yorum kaydedilmiştir.']);
        } catch (\Exception $e) {
            return response(['durum' => 'error', 'baslik' => 'Başarısız', 'icerik' => 'Güncelleme işlemi başarısız.' . $e]);
        }
    }
}
