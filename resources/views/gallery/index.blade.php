@extends('layouts.app', ['title' => __('Gallery')])
	
@section('menu-id'){{"gallery-header"}}@endsection

@section('content')
<main id="gallery-main" >
	<section class="gallery-text">
    <div class="row">
      <div class="col-md-6">
        <div class="left-content">
          <div class="left-content__title">@lang('Our gallery')</div>
          <p class="left-content__text">
            @switch(app()->getLocale())
              @case('uz'){{ setting('site.gallery_intro_uz') }}
              @break
              @case('en'){{ setting('site.gallery_intro_eng') }}
              @break
              @case('ru'){{ setting('site.gallery_intro_ru') }}
              @break
            @endswitch
          </p>
        </div>
      </div>
    </div>
  </section>

  <section class="gallery-images">
    <div class="row">
	   @include('gallery._item')
    </div>
    <!-- gallery refresh button -->
    <div class="gallery-refresh-btn">
      <a data-route="/gallery/offset/" class="refresh-circle" id="gallery-load">
        <div class="refresh-link">@lang('Load more')</div>
      </a>
    </div>
    <!-- gallery refresh button end -->
  </section>
	<img src="/img/long-dots-bg.jpg" class="long-dots" />
  <img src="/img/dots.jpg" class="normal-dots" />
  <img src="/img/small-dots-bg.jpg" class="small-dots" />
</main> 
@endsection

@include('components.lightcase')

      
      
      

 
