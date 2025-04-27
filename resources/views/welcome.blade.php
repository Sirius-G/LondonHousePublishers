@extends('layouts.app')

@section('content')
<div class="container">
    <div class="header">
        <img src="images/LHP_Banner.jpg" alt="London House Publishers Banner image" class="headerimage">
    </div>

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card over-card">
                <div class="card-header darkheader">
                    <strong class="text-white">Welcome</strong>
                    <div class="d-flex justify-content-end" style="margin-top: -20px;">
                        <a href="/submissionguide" title="Submission Guide at London House Publishers" aria-label="Submission Guide at London House Publishers" class="btn btn-primary btn-sm px-4 py-2 rounded-3 shadow-sm hover-button item actionbutton">
                                <strong>Submission guide</strong>
                        </a>
                    </div>
                </div>

                <div class="card-body whitecard">
                    @if(count($data)>0)
                    @foreach($data as $d)
                        {!! html_entity_decode($d->content) !!}
                    @endforeach
                    @endif

                </div>
            </div>
        </div>
    </div>
    
</div>

<script>showActive(1);</script>
@endsection