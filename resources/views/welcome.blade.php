@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-success">
				@if(Auth::check())
				<div class="panel-heading">You are allowed to access : </div>
					<a href="{{ url('/tasks') }}">Tasks</a>
					<a href="{{ url('/burndown') }}">Burndown</a>
				@endif
            </div>
			@if(Auth::guest())
				Please <a href="/login" >login</a>
			@endif
        </div>
    </div>
</div>
@endsection