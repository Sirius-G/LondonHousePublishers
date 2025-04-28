@extends('layouts.app')

@section('content')

<div class="container">
    <div class="card">  
        <div class="card-header darkheader"><strong class="text-white">Book details</strong></div>
        <div class="card-body">  
            @if(count($book)>0)
            @foreach($book as $bk)
            <div class="row">
                <div class="col-xs-12">
                    <div class="card-title">
                        <h2>{{$bk->title}}</h2>
                            <span class="d-inline float-end"><a href="/recentpublications" class="bk-info"><button>Go Back</button></a></span>
                            <small>Written By:</small>
                            <a href="/ind_author/{{$bk->user_id}}"><h5>{{$bk->authors->pen_name}}</h5></a>
                            <hr>  
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">  
                        <img src="{{asset($bk->c_image)}}" class="booksize2" style="margin: 0 auto;">
                    <div class="bk-info m-0">
                        <small>Available Formats:</small>
                        <h4>{{$bk->available_formats}}</h4>
                        <small>Series Name:</small>
                        <h4>{{$bk->series_name}}</h4>
                        <small>Genre:</small>
                        <h4>{{$bk->genre}}</h4>
                        <small>From Price:</small>
                        <h4 class="price">From {{$bk->pformat}}{{$bk->price}}</h4>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-8">
                    <div class="bk-info m-0">
                        <small>Blurb:</small>
                        <p class="blurb p-4">{{$bk->blurb}}</p>
                        <hr>
                    </div>
                </div>
            @endforeach
            @endif
            </div>
        </div>
    </div>
</div>
@endsection