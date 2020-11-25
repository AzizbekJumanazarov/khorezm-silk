<div class="interesting-news">
    <div class="interesting-news-title">
        @lang('Interested posts')
    </div>
    <div
            id="carouselExampleControls"
            class="carousel slide"
            data-ride="carousel"
    >
        <div class="carousel-inner">
            @foreach($random_items->chunk(3) as $index => $items)
            <div class="carousel-item @if($index == 0) active @endif">
                <div class="news-row">
                    @foreach($items as $item)
                    <div class="news-card">
                        <div class="news-card-img">
                            <img src="{{ Voyager::image($item->thumbnail('medium')) }}" alt="{{ $item->title }}" />
                        </div>
                        <div class="news-card-txt">
                            {{ $item->t('title') }}
                        </div>
                        <a href="{{ route('blog.show', $item->slug) }}">
                            <button class="news-card-btn">
                                <div>@lang('Read more')</div>
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
</div>