<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeGetController@get_index');
Route::get('/index', 'HomeGetController@get_index_redirect');
Route::get('/home', 'HomeGetController@get_index');
Route::get('/anasayfa', 'HomeGetController@get_index_redirect');

Route::get('/giris-yap', 'HomeGetController@get_giris_yap');
Route::get('/cikis-yap', 'HomeGetController@get_cikis_yap');

Route::get('/content/{url}', 'HomeGetController@get_content')->where('url','^[a-zA-Z0-9-_\/]+$');
Route::post('/content/{url}', 'HomePostController@post_comment')->where('url','^[a-zA-Z0-9-_\/]+$');

Route::get('/etiket/{url}', 'HomeGetController@get_tags')->where('url','^[a-zA-Z0-9-_\/]+$');




/*********** BACKEND ***********/
Route::group(['prefix'=> 'admin', 'middleware'=> 'Admin'], function (){
    Route::get('/', 'AdminGetController@get_index');
    Route::get('/settings', 'AdminGetController@get_settings');
    Route::post('/settings', 'AdminPostController@post_settings');

    Route::group(['prefix'=> 'articles'], function (){
        Route::get('/', 'AdminGetController@get_articles');
        Route::post('/', 'AdminPostController@post_articles_delete');
        Route::get('/add', 'AdminGetController@get_articles_add');
        Route::post('/add', 'AdminPostController@post_articles_add');
        Route::get('/edit/{url}','AdminGetController@get_articles_edit');
        Route::post('/edit/{url}','AdminPostController@post_articles_edit');

        Route::group(['prefix'=> 'category'], function (){
            Route::get('/', 'AdminGetController@get_category');
            Route::post('/', 'AdminPostController@post_category_delete');
            Route::get('/add', 'AdminGetController@get_category_add');
            Route::post('/add', 'AdminPostController@post_category_add');
            Route::get('/edit', 'AdminGetController@get_category_edit');
            Route::post('/edit', 'AdminPostController@post_category_edit');
            Route::post('/delete', 'AdminPostController@post_category_delete');
        });


    });


});

Auth::routes();
