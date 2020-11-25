@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="{{ asset('css/read-news.css') }}" />
@endpush

@section('content')
    <main>
        <section>
            <a href="{{ route('blog.list') }}">
                <div class="go-back-btn">
                    <img src="{{ asset('img/Vector.svg') }}" alt="" />
                </div>
            </a>

            <div class="read-card">
                <div class="read-card-title">
                    {{ $post->t('title') }}
                </div>
                <div class="read-card-img">
                    <img src="{{ Voyager::image($post->thumbnail('medium')) }}" alt="fruit" />
                </div>

                <div class="read-card-txt">
                    {!! $post->t('body') !!}
                </div>

                <div class="read-card-footer">
                    <div class="read-card-tags">
                        <i class="fa fa-newspaper"></i> @lang('News')
                    </div>
                    <div class="read-card-share">
                        <div class="read-card-share-links">
                            <a href="#">
                                <img src="{{ asset('img/shareInstagram.svg') }}" alt="instagram"></a>
                            <a href="#">
                                <img src="{{ asset('img/shareFacebookSvg.svg') }}" alt="facebook"></a>
                            <a href="#">
                                <img src="{{ asset('img/shareTelegram.svg') }}" alt="telegram"></a>
                        </div>
                    </div>
            </div>

            @include('blog._random')
        </section>
    </main>

@endsection