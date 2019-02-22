<div class="active-section" id="projects">
	<h2 class="title heading">
        <i class="fa fa-tasks"></i>
        {{__('Projects')}}
    </h2>
	<section class="section-block">
		<div class="row">
			<div class="col-md-12">
				<div id="rex-blog-slider" class="row flex-row">
					
					@foreach($projects as $project)
					<div class="col-sm-6 col-md-4 projext-margin-bot">
						<div class="thumbnail rex-blog-section">
						    <div class="blog-img">
							<img src="{{$project->image?Voyager::image($project->thumbnail('medium')):'https://via.placeholder.com/400x250?text=Hossein Shahbazi'}}" alt="{{$project->getTranslatedAttribute('title')}}">
							</div>
							<div class="rex-caption caption1">
								<a href="{{route('project.show',[$project->id,$project->getTranslatedAttribute('slug')])}}"><h6>{{$project->getTranslatedAttribute('title')}}</h6></a>
								<span>{{$project->getTranslatedAttribute('position')}}</span>
								<p>{{$project->getTranslatedAttribute('excerpt')}}</p>
								
							</div>
							<!--<div class="post-meta">-->
							<!--	<a href="javascript:void(0)"><i class="fa fa-share-alt"></i></a>-->
							<!--	<a href="javascript:void(0)"><i class="fa fa-comment"></i>20</a>-->
							<!--	<a href="javascript:void(0)"><i class="fa fa-heart"></i>65</a>-->
							<!--</div>-->
						</div>
					</div>
					@endforeach
					
				</div>
			</div>
			@if(!($projects instanceof \Illuminate\Pagination\LengthAwarePaginator))
			<div class="text-center">
				<a class="btn btn-default" href="{{route('project.index')}}">{{__('See all')}}</a>
			</div>
			@endif
		</div>
	</section>
</div>