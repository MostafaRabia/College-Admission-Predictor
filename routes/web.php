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



Route::group(['namespace' => 'Front'] ,function(){
  Route::get('/','MainController@home');
  Route::get('collegesAll','MainController@collegesAll');
  Route::get('college/{id}','MainController@detailCollege');
  Route::get('aboutApp','MainController@aboutApp');
  Route::get('feedback','MainController@feedback');
  Route::get('signin','MainController@signin');
  Route::get('log','MainController@log');
  Route::post('search','MainController@search');
  Route::get('predict','MainController@predict');
  Route::get('collegeClick/{id}', 'MainController@clickPost');


});


Route::get('logout',function () {
  auth()->guard()->logout();
  return redirect('login');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('students','StudentController');
Route::resource('colleges','CollegeController');
Route::resource('contacts' ,'feedbackController');
Route::resource('settings' ,'SettingController');
Route::resource('roles','RoleController');
Route::resource('users','UserController');
Route::get('change-password','UserController@resetPassword');
Route::post('change-password','UserController@resetPasswordSave');