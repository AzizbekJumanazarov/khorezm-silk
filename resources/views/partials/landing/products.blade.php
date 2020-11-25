<div class="interesting-news">
    <div class="gallery-title">
        <div><span> @lang('Products')</span></div>
    </div>
    <div
            id="carouselExampleControls"
            class="carousel slide"
            data-ride="carousel"
    >
        <div class="carousel-inner">
            @foreach($products->chunk(3) as $index => $items)
                <div class="carousel-item @if($index == 0) active @endif">
                    <div class="news-row">
                        @foreach($items as $item)
                            <div class="news-card">
                                <div class="news-card-img">
                                    <img src="{{ Voyager::image($item->image) }}" alt="{{ $item->name }}" />
                                </div>
                                <a href="javascript: void(0);">
                                    <button class="news-card-btn">
                                        <div>{{ $item->t('name') }}</div>
                                    </button>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            @endforeach
        </div>
        <a
                class="carousel-control-prev"
                href="#carouselExampleControls"
                role="button"
                data-slide="prev"
        >
              <span
                      class="carousel-control-prev-icon"
                      aria-hidden="true"
              ></span>
            <span class="sr-only">Previous</span>
        </a>
        <a
                class="carousel-control-next"
                href="#carouselExampleControls"
                role="button"
                data-slide="next"
        >
              <span
                      class="carousel-control-next-icon"
                      aria-hidden="true"
              ></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="text-center mt-5">
        <a href="{{ route('shop.index') }}" class="go-to">
        <button class="submit-btn">
            <span><div>@lang('All products')</div></span>
        </button>
        </a>
    </div>
</div>