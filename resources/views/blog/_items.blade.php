@foreach($posts as $post)
<div class="news-card" data-id="{{ $post->id }}">
    <div class="news-card-img">
        <img src="{{ Voyager::image($post->thumbnail('cropped')) }}" alt="fruit" />
    </div>
    <div class="news-card-txt">
        {{ $post->t('title') }}
    </div>
    <a href="{{ route('blog.show', $post->slug) }}">
        <button class="news-card-btn"><div>@lang('Read more')</div></button>
    </a>
</div>
@endforeach