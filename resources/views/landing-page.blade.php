@extends('layouts.app', ['body_class' => 'main-page'])

@push('header')
	@include('partials.presentation')
@endpush

@section('content')
	<main>
		@include('partials.landing.about')
		@include('partials.landing.pruducts')
		@include('partials.landing.clients')
		@include('partials.landing.news')
		@include('partials.landing.booking-banner')
	</main> 
@endsection
 