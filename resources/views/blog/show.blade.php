@extends('layouts.app')
@section('menu-id'){{"gallery-header"}}@endsection 
@section('content')

   <main id="news-detailed-main">
      <section class="news-detalied-content">
        <div class="row">
          <div class="col-md-6">
            <div class="left-content">
              <div class="left-content__title">
                {{ $post->t('title') }}
              </div>
              <span class="dark__span">Khorezm Silk</span>
              <span class="grey__span">{{$post->t('created_at')->format('d.m.Y')}}</span>
              <p class="left-content__text">
                {{ $post->t('body') }}
              </p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="right-content">
              <img src="{{ Voyager::image($post->image) }}" alt="news-img" />
            </div>
          </div>
        </div>
      </section>

      <section id="news-detailed-other-news">
        <div class="other-news-title">Новости из етой категории</div>
        <div class="row">
        @foreach($random_items as $index => $item)
          <div class="col-md-4 px-0">
            <div class="blogs-card">
              <div class="b-card-header">
                <img src="{{ Voyager::image($item->image) }}" alt="avatar" />
                <div class="b-card-name">
                  <div class="b-card-name_name">Khorezm silk</div>
                  <div class="b-card-name_status">{{$item->t('created_at')->format('d.m.Y')}}</div>
                </div>
              </div>
              <hr />
              <div class="b-card-body">
                <div class="b-card-body-title">
                  {{$item->t('title')}}
                </div>
                <div class="b-card-body-txt">
                  {{substr($item->t('excerpt'), 0, 180)}}. . .
                </div>
                <a href="{{ route('blog.show', $item->slug) }}" class="b-card-body-link"> @lang('Read more') </a>
              </div>
            </div>
          </div>
        @endforeach
        </div>
      </section>
      <img src="img/dots.jpg" class="news-detailed-dots">
    </main>

@endsection