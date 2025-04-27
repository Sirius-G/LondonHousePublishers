@extends('layouts.app')

@section('content')
<div class="container">
    <div class="header">
        <img src="images/Banner_submission_guide.jpg" alt="London House Publishers banner image" class="headerimage">
    </div>

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card over-card">
                <div class="card-header darkheader">
                    <strong class="text-white">Submissions Portal</strong>
                    <div class="d-flex justify-content-end" style="margin-top: -20px;">
                        <a href="/submissionguide" title="Submissions guide at London House Publishers" aria-label="Submissions guide at London House Publishers" class="btn btn-primary btn-sm px-4 py-2 rounded-3 shadow-sm hover-button item actionbutton">
                            <strong>View the submissions guide</strong>
                        </a>
                    </div>
                </div>

                <div class="card-body whitecard">
                    <br><br>
                    <h1>
                        Sorry... &nbsp;&nbsp; :(
                        <br><br>
                        Access to the London House Publishers Submissions portal is by invitation only.
                        <br><br>
                        You are not currently authorised to view this page.
                        <br>
                    </h1>

                </div>
            </div>
        </div>
    </div>
</div>


@endsection