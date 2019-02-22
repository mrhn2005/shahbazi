<div class="active-section thumbnail1" id="blog">
	<h2 class="title heading"> <i class="fa fa-file-video-o "></i> {{__('Latest Videos')}}</h2>
	<section class="section-block wrapper-news-videos flex-text">
	    
    <div class="video-list">
        <div class="row">
        @foreach($videos as $video)
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item">
                     @include('front.videos.includes.single-video')
                 </div>
             </div>
        @endforeach
        </div>
    </div>
	</section>
</div>