<section id="products">
        <span class="khorezm-silk">Khorezm Silk</span>
        <div class="products-title">
          <div class="p-title_txt">@lang('Products')</div>
          <div class="p-title_line"></div>
        </div>

        <div class="row products-row">
          @foreach($products as $item)
          <div class="col-md-4 px-0">
            <div class="products-card"> 
              <div class="p-card-header">
                <span><img src="{{ $item->t('icon') }}"></span>
                <!-- <span class="icon-pillow"></span> -->
              </div>
              <div class="p-card-title">{{$item->t('name')}}</div>
              <div class="p-card-txt">{{$item->t('details')}}</div>
              <a href="{{ $item->slug }}" class="p-card-link">@lang('Read more')</a>
            </div>
          </div>
          @endforeach
        </div>
</section>