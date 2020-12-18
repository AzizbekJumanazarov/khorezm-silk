    <section id="clients">
        <span class="khorezm-silk">Khorezm Silk</span>
        <div class="products-title">
          <div class="p-title_txt">@lang('Customer Reviews')</div>
          <div class="p-title_line"></div>
        </div>

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
            
          </ol>
          <div class="carousel-inner">
          @foreach($reviews->chunk(3) as $index => $items)
            <div class="carousel-item @if($index == 0) active @endif">
              <div class="row">
              @foreach($items as $item)
                <div class="col-md-4 px-0">
                  <div class="clients-card">
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
                          @if(app()->getLocale() == 'ru')
                          Лучшие продукты, которые я когда-либо видел. Спасибо всем сотрудникам, которые работают в этой компании. Думаю, я никогда не перестану их покупать.
                          @endif
                          {{ $item->t('content') }}
                        </div>
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
                @endforeach
              </div>
            </div>
            @endforeach
          </div>
        </div>
    </section>