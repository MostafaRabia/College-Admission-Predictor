<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\College;
use App\Setting;


class MainControllers extends Controller
{
     /********************governorate********************/
    public function colleges()
    {
      $colleges =College::all();
      return responseJson(1,'success',$colleges);
    }
    /********************governorate********************/
    public function settings()
    {
      $settings =Setting::all();
      return responseJson(1,'success',$settings);
    }
    

}
