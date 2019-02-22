<div class="active-section thumbnail1" id="blog">
	<h2 class="title heading"> <i class="fa fa-video-camera fa-fw"></i> {{__('Latest Videos')}}</h2>
	<section class="section-block wrapper-news-videos flex-text">
	    
    <ul class="video-list">
    @foreach($videos as $video)
            <li class="item">
                 @include('front.videos.includes.single-video')
             </li>
    @endforeach
    </ul>
    @if(!($projects instanceof \Illuminate\Pagination\LengthAwarePaginator))
	<div class="text-center">
		<a class="btn btn-default" href="{{route('video.index')}}">{{__('See all')}}</a>
	</div>
	@endif
	</section>
</div>