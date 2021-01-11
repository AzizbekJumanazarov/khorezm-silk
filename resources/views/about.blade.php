@extends('layouts.app')

@section('content')
    <main>
        <section id="lines">
            {!! $content->t('body') !!}
        </section>

        @include('gallery._item')
    </main>
@endsection


