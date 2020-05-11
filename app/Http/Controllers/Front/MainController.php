<?php

namespace App\Http\Controllers\Front;

use App\College;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MainController extends Controller
{
    public  function home(Request $request)
    {
    	$colleges=College::take(6)->get();
      return(view('front.home',compact('colleges')));
    }
    
 
    public function search(Request $request)
    {
      $this->validate($request,[
       'input' =>'required'
      ]);
      $input = $request->input;
      $colleges = College::where('name' , 'like' , '%' . $input . '%')
                        ->orWhere('grade' , '<=' ,  $input )->get();
      if ($colleges)
      {
        return view('front.predict',compact('colleges'));
      }

    }

    public function CollegesAll()
    {
      $colleges = College::all();
      return view('front.Colleges' , compact('colleges'));

    }


    public  function detailCollege($id)
    {
      $college = College::find($id);
      $colleges = College::take(9)->get();
      return view('front.college' , compact(['college','colleges']) );
    }

    
    public function aboutApp()
    {
      return view('front.about');
    }

    public function feedback()
    {
      return view('front.feedback');
    }
    public function signin()
    {
      return view('front.signin');
    }
    public function log()
    {
      return view('front.log');
    }
    public function predict()
    {
      $colleges = College::all();
      return view('front.predict' , compact('colleges'));
       
    }
    public function clickPost($id)
{
    $college = College::findorfail($id); // Find our post by ID.
    $college->increment('student'); // Increment the value in the clicks column.
    $college->update(); // Save our updated post.
    return back();
}   

} 
