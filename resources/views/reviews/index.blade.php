@extends('layouts.app')
@section('menu-id'){{"gallery-header"}}@endsection	
@section('content')
	<main id="testimonials-main">
      <div class="testimonials-title">@lang('Customer Reviews')</div>
      <div class="row test_row">
        <div class="col-lg-3">
          <img class="tes-img" src="/img/photo_2020-12-25_18-22-27.jpg" />
        </div>
        <div class="col-lg-5">
          <div class="testimonials-card">
            <div class="tes-card-title">Акрамов Акром Акрамович</div>
            <div class="tes-card-content">
              <div class="tes-card-content-1">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                Provident aut quia rerum vel! Ratione quia possimus praesentium.
                Perspiciatis, velit? Accusantium! Perspiciatis, velit?
                Accusantium!
              </div>
              <div class="tes-card-content-2">
                <div class="tes_product">Продукции заказа:</div>
                <div class="tes_date">Дата контракта:</div>
                <div class="tes_comment">Комментарии получено с:</div>
              </div>
              <div class="tes-card-content-3">
                <div class="tes_product">Подушки</div>
                <div class="tes_date">14.08.2020</div>
                <div class="tes_comment">Instagram</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <section class="clients">
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
      <div class="gallery-refresh-btn tes-refresh-btn">
        <a href="#" class="refresh-circle">
          <div class="refresh-link">@lang('Load more')</div>
        </a>
      </div>
      <img src="/img/long-dots-bg.jpg" class="tes-dots" />
    </main>
@endsection