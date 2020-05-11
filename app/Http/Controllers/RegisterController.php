<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Student;
use App\helper;
use App\Contact;
use Str;



class RegisterController extends Controller
{
  /**************************REGISTER****************************/
    public function register(Request $request)
    {
      $rules = [
            'username'       => 'required',
            'password'       =>'required|password',
            'phone'          =>'required|digits:11',
            'email'          =>'required|email',
            'city'           => 'required',
            
        ];
        $messages = [
            'username.required' => 'Name is required',
            'password.required' => 'Password is required'
            'phone.required'    => 'Phone is required',
            'email.required'    => 'Email is required',
            'city.required'     => 'City is required'

        ];
        $this->validate($request,$rules,$messages);
        $request->merge(['password'=>bcrypt($request->password)]);
        $feedback=Student::create($request->all());
        flash()->success('success');
        return back();
        
     
    }