<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {

    return view('welcome');

});

//manual route mapping
Route::get('about', "PagesController@showAbout");
Route::get('contact',"PagesController@showContact");

Route::get('login',"LoginController@showLoginForm");
Route::post('login',"LoginController@processLogin");
Route::get('logout',"LoginController@logout");

Route::get('cart',"CartController@showCart");
Route::post('cartitems',"CartController@addItem");
Route::post('orders',"CartController@checkout");

//resource route mapping (based on Rest convention)
Route::resource('products', 'ProductsController');
Route::resource('users', 'UsersController');


Route::get('types/{id}', function ($id) {

	$type = \App\Models\Type::find($id);

    return view('types',['type'=>$type]);

});







