
					<div class="single-blog-list">
						<div class="blog-title">
							<h3>{{$project->getTranslatedAttribute('title')}} </h3>
							<span>{{$project->getTranslatedAttribute('begin_date')}} - {{$project->getTranslatedAttribute('end_date')}}</span>
							<br>
							<span>{{__('Position')}}: {{$project->getTranslatedAttribute('position')}}</span>
						</div>
						{!!$project->getTranslatedAttribute('body')!!}
					</div>

