<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comment';
    protected $fillable = ['name', 'email', 'comment','comment_id' , 'article_id','user_id', 'active'];

    public function user(){
        return $this->hasOne('App\User','id','user_id');
    }

    public function children()
    {
        return $this->hasMany('App\Comment', 'comment_id');
    }
}
