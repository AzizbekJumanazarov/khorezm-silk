@extends('layouts.app')

@section('content')
    <main>
        <section id="lines">
            {!! $content->t('body') !!}
        </section>

        @include('gallery._item')
    </main>
@endsection

@section('slider')
    @include('partials._about-head')
@endsection

@push('styles')
<link rel="stylesheet" href="{{ asset('css/about.css') }}">
<style>
    main {
        max-width: 100% !important;
    }
</style>
@endpush
