@extends('layouts.app')
@section('menu-id'){{"gallery-header"}}@endsection 
@section('content')
<main id="news-main">
      <ul class="nav custom-nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item custom-nav-item">
          <a
            class="custom-nav-link custom-nav-link-active"
            id="pills-news-tab"
            data-toggle="pill"
            href="#pills-news"
            role="tab"
            aria-controls="pills-news"
            aria-selected="true"
            >@lang('News')</a
          >
        </li>
        <li class="nav-item custom-nav-item">
          <a
            class="custom-nav-link"
            id="pills-action-tab"
            data-toggle="pill"
            href="#pills-action"
            role="tab"
            aria-controls="pills-action"
            aria-selected="false"
            >@lang('Promotions')</a
          >
        </li>
        <li class="nav-item custom-nav-item">
          <a
            class="custom-nav-link"
            id="pills-tender-tab"
            data-toggle="pill"
            href="#pills-tender"
            role="tab"
            aria-controls="pills-tender"
            aria-selected="false"
            >@lang('Tenders')</a
          >
        </li>
      </ul>
      <div class="tab-content" id="pills-tabContent">
        <div
          class="tab-pane fade show active"
          id="pills-news"
          role="tabpanel"
          aria-labelledby="pills-news-tab"
        >
          <section id="news-section">
            <div class="row">
              @foreach($posts as $index => $item)
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
            <div class="gallery-refresh-btn news-refresh-btn">
              <a href="#" class="refresh-circle">
                <div class="refresh-link">@lang('Load more')</div>
              </a>
            </div>
             
          </section>
        </div>
        <div
          class="tab-pane fade"
          id="pills-action"
          role="tabpanel"
          aria-labelledby="pills-action-tab"
        >
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea maxime
          quibusdam veniam quidem quis voluptas reiciendis unde necessitatibus
          eligendi in, voluptatibus aperiam rerum qui, at optio cumque magnam
          accusamus eum.
        </div>
        <div
          class="tab-pane fade"
          id="pills-tender"
          role="tabpanel"
          aria-labelledby="pills-tender-tab"
        >
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Blanditiis
          dignissimos officiis numquam est minima earum dolorem non
          reprehenderit voluptatum consectetur asperiores, laudantium ullam
          quaerat tempore quam aliquid vitae excepturi! Eius voluptatibus dicta
          in, impedit doloremque ipsam sequi non dolore enim mollitia possimus,
          dignissimos hic! Distinctio repellendus veniam quam porro ad.
        </div>
      </div>
      <img src="img/dots.jpg" class="news-normal-dots" />
    </main>
@endsection