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
             @include('blog._items')     
            </div>
            <div class="gallery-refresh-btn news-refresh-btn">
              <!-- should be <a></a> not button -->
                <a data-route="/blog/offset/" class="refresh-circle"> <!-- data-route="/blog/offset/" -->
                  <div class="refresh-link">@lang('Load more')</div>
                </a>
            </div>
          </section>
        </div>
      </div>
      <img src="img/dots.jpg" class="news-normal-dots" />
    </main>
@endsection