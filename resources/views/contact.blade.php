@extends('layouts.app')

@section('content')
<div class="container">
    <div class="header">
        <img src="images/Banner_contact.jpg" alt="Connor Owen Guitar Banner image" class="headerimage">
    </div>

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card over-card">
                <div class="card-header darkheader">
                    <strong class="text-white">Contact and Submissions</strong>
                    <div class="d-flex justify-content-end" style="margin-top: -20px;">
                        <button class="btn btn-primary btn-sm px-4 py-2 rounded-3 shadow-sm hover-button item actionbutton" onclick="oneClickEnquiry()">
                            <strong>Make a submissions enquiry</strong>
                        </button>
                    </div>
                </div>

                <div class="card-body whitecard">
                    @if(count($data)>0)
                    @foreach($data as $d)
                        {!! html_entity_decode($d->content) !!}
                    @endforeach
                    @endif

                    @include('inc.contactform')
                    <!-- @include('inc.socials') -->
                    @include('inc.contactmap')
                    
                </div>
            </div>
        </div>
    </div>
</div>

<script>showActive(4);</script>
@endsection