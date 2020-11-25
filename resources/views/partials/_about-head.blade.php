<div class="header-lg-card">
    <div class="header-img-card">
        <img src="{{ Voyager::image($content->image) }}" alt="">
    </div>

    <div class="header-info">
        <div class="header-header-info-txt">
            {!! nl2br($content->t('excerpt')) !!}
        </div>
    </div>
</div>