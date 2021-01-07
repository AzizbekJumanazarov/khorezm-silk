@foreach($posts as $item)
  <div class="col-md-6 col-lg-4 px-0">
    <div class="blogs-card" data-id="{{ $item->id }}">
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
          {{$item->t('title')}}
        </div>
        <div class="b-card-body-txt">
          {{substr($item->t('excerpt'), 0, 180)}}. . .
        </div>
        <a href="{{ route('blog.show', $item->slug) }}" class="b-card-body-link"> @lang('Read more') </a>
      </div>
    </div>
  </div>
@endforeach
