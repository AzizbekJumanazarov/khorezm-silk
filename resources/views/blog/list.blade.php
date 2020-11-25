@extends('layouts.app')

@section('content')
    <main>
        <div class="news-title">
            <span><div>@lang('News')</div></span>
        </div>

        <div class="news-row">
            @include('blog._items')
        </div>
        <button class="download-more-btn" data-route="/blog/offset/">
            <span><div>@lang('Load more')</div></span>
        </button>
    </main>
@endsection