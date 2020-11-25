@foreach($images as $index => $image)
    <div data-id="{{ $image->id }}" data-full="{{ Voyager::image($image->image) }}" class="gallery-card">
        <img src="{{ Voyager::image($image->thumbnail('cropped')) }}"
             alt="Perfect Logics">
    </div>
@endforeach