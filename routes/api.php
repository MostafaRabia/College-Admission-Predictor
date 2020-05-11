<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

  
  Route::post('register','AuthControllers@register');
  Route::post('login','AuthControllers@login');
  Route::post('reset_password','AuthControllers@reset_password');
  Route::post('new_password','AuthControllers@new_password');
    Route::post('contact','AuthControllers@contact');
    Route::post('feedback','AuthControllers@feedback');

   Route::get('colleges','MainControllers@colleges');
   Route::get('settings','MainControllers@settings');