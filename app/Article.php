<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'article';
    protected $fillable = ['url', 'name', 'content', 'short_content', 'image', 'cat_id','slider', 'video_url', 'tags', 'author', 'active'];

    public function parent()
    {
        return $this->belongsTo('App\Category', 'cat_id', 'id');
    }

    public function comments()
    {
        return $this->hasMany('App\Comment', 'article_id', 'id')->orderBy('created_at', 'desc');
    }

    public function user()
    {
        return $this->hasOne('App\User', 'id', 'author');
    }

    public function catName($id)
    {
        $cat = Category::where('id', $id)->get();
        if (count($cat) > 0)
            return $cat->first()->name;
    }

}
