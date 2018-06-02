<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $fillable = ['name', 'url', 'cat_id', 'active'];

    public function parent()
    {
        return $this->belongsTo('App\Category', 'cat_id');
    }

    public function children()
    {
        return $this->hasMany('App\Category', 'cat_id');
    }

    public function topCategory($id)
    {
        $topCat = Category::where('id', $id)->get();
        if (count($topCat) > 0)
            return $topCat->first()->name;
    }

    public function article(){
        return $this->hasMany('App\Article','cat_id','id');
    }
}
