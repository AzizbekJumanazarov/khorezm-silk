@extends('layouts.app', ['title' => __('About')])
@section('menu-id'){{"gallery-header"}}@endsection	
@section('content')
	<main id="testimonials-main">
      <div class="testimonials-title">@lang('About')</div>
      <div class="row test_row">
        <div class="col-lg-3">
          <div id="demo">
            <div class="cv-carousel">
              @include('gallery._mini-slider')
            </div>
          </div>
          <!-- <img class="tes-img" src="{{ asset('img/about-us.jpg') }}" /> -->
        </div>
        <div class="col-lg-5">
          <div class="testimonials-card">
            <div class="tes-card-content">
              {!! $content->t('body') !!}
            </div>
          </div>
        </div>
      </div>
      <section class="clients">
        <div class="testimonials-title mb-2">@lang('Customer Reviews')</div>
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
          @foreach($reviews->chunk(3) as $index => $items)
            <div class="carousel-item @if($index == 0) active @endif">
              <div class="row">
              @foreach($items as $item)
                <div class="col-lg-4 px-0">
                  <div class="clients-card"> 
                    <div class="c-card-bg c-card-bg-one">
                    <div class="clients-card clients-card-hover">   
                      <div class="c-card-content">
                        <div class="c-card-header">
                          <img src="{{ Voyager::image($item->photo) }}" alt="avatar" />
                          <div class="c-card-name">
                            <div class="c-card-name_name">
                              {{ $item->t('author_full_name') }}
                            </div>
                            <div class="c-card-name_status">
                              {{ $item->t('type') }}
                            </div>
                          </div> 
                        </div>
                        <div class="c-card-body">
                          {{substr($item->t('content'), 0, 230)}}
                        . . .</div>
                        <div class="c-card-footer">
                          @for($i=0; $i < $item->t('rate'); $i++)
                            <i class="fas fa-star"></i>
                          @endfor    
                          @if($item->t('rate') != 5)
                            @for($i=0; $i< (5-  $item->t('rate')); $i++)
                              <i class="far fa-star"></i>
                            @endfor
                          @endif
                          <span>{{ $item->t('rate') }}</span>
                        </div>
                      </div>
                    </div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </section>
      <section class="gallery-images">
        <div class="testimonials-title ml-0 mt-4 mb-4 pb-4 pt-4">@lang('Gallery')</div>
        <div class="row">
          @include('gallery._item')
          @include('components.lightcase')
        </div>
      <img src="/img/long-dots-bg.jpg" class="tes-dots" />
    </main>

    @push('styles')
      <link href="{{ asset('slider/dist/carousel-vertical.min.css') }}" rel="stylesheet" type="text/css" media="screen"> 
    @endpush

    @push('scripts')
      <script type="text/javascript" src="{{ asset('slider/dist/jquery.carousel-vertical.min.js') }}"></script>
    @endpush

@endsection