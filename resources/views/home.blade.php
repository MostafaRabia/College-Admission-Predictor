@extends('layouts.app')
@inject('student','App\Student')
@inject('college','App\College')
@inject('feedback','App\Contact')

@section('page_title')
    College Admission Predictor
@endsection
@section('small_title')
  Statistics
@endsection
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa fa-user"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Students</span>
                        <span class="info-box-number">{{$student->count()}}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-university"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Colleges</span>
                        <span class="info-box-number">{{$college->count()}}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-purple"><i class="fa fa-envelope"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">FeedBack</span>
                        <span class="info-box-number">{{$feedback->count()}}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

        </div>




    </section>
    <!-- /.content -->
@endsection
