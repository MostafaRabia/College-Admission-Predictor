 @extends('front.master')
@section('content')
<section id="navigator">
        <div class="container">
            <div class="path">
                <div class="path-main" style="color: darkred; display:inline-block;">Home</div>
                <div class="path-directio" style="color: grey; display:inline-block;"> / Login</div>
            </div>

        </div>
    </section>
    <!-- Navigator End -->

    <!-- Login Start -->

     <section id="login">
        <div class="container">
            <img src="{{asset('front/imgs/logo.png')}}" alt="">
                  <div class="col-md-12 info">
                    @include('flash::message')
                    <div class="box-body">
                {!! Form::open([
                'action' => 'AuthControllers@login',
                'files'  => true,
                'method' =>'post'

                ]) !!}
                @include('partials.validation_errors')

                  <div class="form-group">
                   
                  
                {!! Form::text('email',null,[
                  'class' => 'form-control',
                  'placeholder'=>'Email'
                  ]) !!}
                  <br>

                  {!! Form::text('password',null, [
                    'class'=>'form-control',
                    'placeholder'=>'Password'
                    ]) !!}
                  
                  </div>
                  <div class="reg-group">
                        <button style="background-color: darkred;">Login</button>
                       
                    </div>
                  {!! Form::close () !!}
            </div>
            </div>
        </div>
    </section>
    @endsection