<div class="active-section" id="blog">
	<h2 class="title heading"><i class="fa fa-newspaper-o"></i> {{__('Latest News')}}</h2>
	<section class="section-block section-block1 ">
		
		<div class="row">
			<ul class="news-list">
			@foreach($posts as $post)
			    <li class="news gltn">
					 <div class="col-xs-12 col-sm-3" style="padding: 5px;">
					 <img class="img-responsive" alt="{{$post->getTranslatedAttribute('title')}}" src="{{Voyager::image($post->thumbnail('small'))}}">
					 </div>
					 <div class="col-xs-12 col-sm-9 allright" style="padding: 5px;">
						 <span>{{__('Published Date')}}: {{$post->date()}}</span>
						 <a class="title1" href="{{route('blog.show',[$post->id,$post->getTranslatedAttribute('slug')])}}">{{$post->getTranslatedAttribute('title')}}</a>
						 <p class="summary">{{$post->getTranslatedAttribute('excerpt')}}</p>
					 </div>
			 	</li>
			@endforeach
			</ul>
			@if(!($posts instanceof \Illuminate\Pagination\LengthAwarePaginator))
			<div class="text-center">
				<a class="btn btn-default" href="{{route('blog.index')}}">{{__('See all')}}</a>
			</div>
			@endif
		</div>
	</section>
</div>