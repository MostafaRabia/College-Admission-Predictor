<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Mail\ResetPassword;
use App\Feedback;
use App\Student;
use App\helper;
use App\Contact;
use Str;



class AuthControllers extends Controller
{
  /**************************REGISTER****************************/
  public function singin(Request $request)
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
            'password.required' => 'Password is required',
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
    public function register(Request $request)
    {
      $validator=validator()->make($request->all(),
      [
        'username'           =>'required',
        'password'           =>'required',
        'email'              =>'required|unique:student',
        'phone'              =>'required',
        'city'               =>'required',


      ]);
      if ($validator->fails())
      {
        return responseJson(0,$validator->errors()->first(),$validator->errors());
      }
      $request->merge(['password'=>bcrypt($request->password)]);
      $student=Student::create($request->all());
      $student->api_token=Str::random(60);
      $student->save();
      /*return responseJson(1,'تم الاضافه بنجاح',
      [
         'api_token'=>$student->api_token,
         'Student'=>$student,
      ]);*/
      return back();

    }
        
     
    
    /**************************LOGIN****************************/
    public function login(Request $request)
    {
      $validator=validator()->make($request->all(),
      [
        'email'              =>'required',
        'password'           =>'required',

      ]);

      if ($validator->fails())
      {
        return responseJson(0,$validator->errors()->first(),$validator->errors());
      }

      $student=Student::where('email',$request->email)->first();
      if($student)
      {
        if (Hash::check($request->password,$student->password))
         {
              return responseJson(1,'تم تسجيل الدخول',
            [
              'api_token'=>$student->api_token,
              'Student'   =>$student
            ]);
        }
        else {
            return responseJson(0,'بياناتك غير صحيحه');
        }
      }
      else {
          return responseJson(0,'بياناتك غير صحيحه');
      }

    }

///************************ reset password***************************////
public function reset_password(Request $request)
{
  $validator=validator()->make($request->all(),
  [
    'phone'              =>'required',
  ]);

  if ($validator->fails())
  {
    return responseJson(0,$validator->errors()->first(),$validator->errors());
  }

   $student=Student::where('phone',$request->phone)->first();
    if($student)
    {
      $code=rand(1111,9999);
      $update = $user->update(['pin_code'=>$code]);
      if($update)
      {
      //  smsMisr($request->phone,"Your Reset Code Is :".$code);
        Mail::to($student->email)
        ->bcc("badrynabil8@gmail.com")
        ->send(new ResetPassword($code));

        return responseJson(1,'برجاء فحص حسابك',['pin_code']);
      }
      else
      {
        return responseJson(0,'حدث خطأ , حاول مره اخره');
      }
    }
    else
    {
      return responseJson(0,'لا يوجد حساب بهذا الرقم');
    }

}

/*************************NEW PASSWORD******************************/
public function new_password(Request $request)
{
  $validator=validator()->make($request->all(),
  [
    'password'           =>'required|confirmed',
    'code'               =>'required'
  ]);

  if ($validator->fails())
  {
    return responseJson(0,$validator->errors()->first(),$validator->errors());
  }

  $request->merge(['password'=>bcrypt($request->password)]);
 $student=Student::where('pin_code',$request->code)->first();
 if($student)
 {

   $student->update(['password'=>$request->password]);
   $student->save();
 }

 return responseJson(1,'تم التغيير بنجاح',
 [
    'Student'=>$student
 ]);
}

/*************************************************************/
public function contact(Request $request)
{
  $validator=validator()->make($request->all(),
  [
    'name'     => 'required',
    'phone'    =>'required|digits:11',
    'email'    =>'required',
    'message'  =>'required'
  ]);
  if ($validator->fails())
  {
    return responseJson(0,$validator->errors()->first(),$validator->errors());
  }
      $contacts=Contact::create($request->all());
      $contacts->save();
      return responseJson(1,'تم الارسال بنجاح',
      [
         'Contact'=>$contacts
      ]);

    }
  }


/*************************************************************/

  
