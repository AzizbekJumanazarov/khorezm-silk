@extends('layouts.app')

<!-- section('presentation') -->

@section('content')
	<main>
		@include('partials.landing.about')
		@include('partials.landing.pruducts')
		@include('partials.landing.clients')
		@include('partials.landing.news')
		@include('partials.landing.booking-banner')
	</main>
@endsection
 