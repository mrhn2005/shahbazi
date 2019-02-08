<div class="active-section" id="projects">
	<section class="section-block">
		<h4 class="title">{{__('Projects')}}</h4>
		<div class="row">
			<div class="col-md-12">
				<div id="rex-blog-slider">
					@foreach($projects as $project)
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail rex-blog-section">
							<img src="{{Voyager::image($project->thumbnail('medium'))}}" alt="{{$project->getTranslatedAttribute('title')}}">
							<div class="rex-caption">
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