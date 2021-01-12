@foreach($images as $index => $image)
	<div class="item">
		<img width="230px" src="{{Voyager::image($image->thumbnail('cropped'))}}" alt="" />
	</div>  
@endforeach
 