<section id="blogs">
        <span class="khorezm-silk">Khorezm Silk</span>
        <div class="products-title">
          <div class="p-title_txt">@lang('News and promotions')</div>
          <div class="p-title_line"></div>
        </div>

        <div
          id="carouselExampleIndicators1"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators1"
              data-slide-to="0"
              class="active"
            ></li>
            <li
              data-target="#carouselExampleIndicators1"
              data-slide-to="1"
            ></li>
             
          </ol>
          <div class="carousel-inner">
           @foreach($posts->chunk(3) as $index => $items)
            <div class="carousel-item @if($index == 0) active @endif">
              <div class="row">
                @foreach($items as $item)
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
                        @if(app()->getLocale() == 'en')
                          {{$item->t('title')}}
                        @else
                        Мега скидки в честь нового года целых 50%
                        @endif
                      </div>
                      <div class="b-card-body-txt">
                        @if(app()->getLocale() == 'en')
                          {{$item->t('excerpt')}}
                        @else
                        Новогодний подарок вам под ёлку! Дарим 25 рождественских боксов совместно с ИКЕА каждую неделю
                        @endif
                      </div>
                      <a href="#" class="b-card-body-link"> @lang('Read more') </a>
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