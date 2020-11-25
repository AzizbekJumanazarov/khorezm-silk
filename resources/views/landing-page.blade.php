@extends('layouts.app')
@section('slider')
    @include('partials.slider')
    @include('partials._about-head')
@endsection

@push('styles')
    <style>
        footer {
             margin-top: 80px;
        }
        .news-card {
            margin-top: 15px;
        }
    </style>
@endpush

@section('content')
<main>
    @include('partials.landing.products')
    @include('partials.landing.news')
</main>
@endsection