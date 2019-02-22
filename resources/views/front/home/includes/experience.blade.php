<div id="experience" class="active-section">
	<h2 class="title heading">
        <i class="fa fa-file-text"></i>
        {{__('Resume')}}
    </h2>
	<div class="section-block  ">
		<ul class="nav nav-pills">
		    <li class="active"><a class="btn btn-default" data-toggle="pill" href="#workexp">{{__('Work Experience')}}</a></li>
		    <li><a class="btn btn-default" data-toggle="pill" href="#educat">{{__('Education')}}</a></li>
		    <li><a class="btn btn-default" data-toggle="pill" href="#teach">{{__('Teaching Experience')}}</a></li>
		</ul>
		  <div class="tab-content">
		    <div id="workexp" class="tab-pane fade in active experience">
				
				<div class="row">
					<div id="rex-experience-slider">
						@foreach($timelines->where('type',1) as $timeline)
						<div class="listing-content">
							<div class="col-md-2 list-img list-img2">
								<!-- <img src="http://placehold.it/142x133" alt=""> -->
								<div class="experience-date">
									<h6>{{$timeline->begin_date}} <br>{{$timeline->end_date}}</h6>
								</div>
								<span class="angle"></span>
							</div>
							<div class="col-md-10 list-description">
								<h6>{{$timeline->title}}</h6>
								<p>{{$timeline->body}}</p>
							</div>
						</div>
						@endforeach
					</div>
				</div>
		    </div>
		    <div id="educat" class="tab-pane fade education">
		      
				
				<div class="row">
					<div id="rex-education-slider">
						@foreach($timelines->where('type',2) as $timeline)
						<div class="listing-content">
						<div class="col-md-2 list-img">
							<img src="{{isset($timeline->image)?Voyager::image($timeline->thumbnail('medium')):'/img/education/education-img1.jpg'}}" alt="{{$timeline->title}}">
						</div>
						<div class="col-md-10 list-description">
							<h6>{{$timeline->title}}</h6>
							<span>{{$timeline->subtitle}}, {{$timeline->begin_date}} - {{$timeline->end_date}}</span>
							<p>{{$timeline->body}}</p>
						</div>
					</div>
						@endforeach
					</div>
				</div>
			
		    </div>
		    
		    <div id="teach" class="tab-pane fade education">
		      
				
				<div class="row">
					<div id="rex-education-slider">
						@foreach($timelines->where('type',3) as $timeline)
						<div class="listing-content">
						<div class="col-md-2 list-img">
							<img src="{{isset($timeline->image)?Voyager::image($timeline->thumbnail('medium')):'/img/education/education-img1.jpg'}}" alt="{{$timeline->title}}">
						</div>
						<div class="col-md-10 list-description">
							<h6>{{$timeline->title}}</h6>
							<span>{{$timeline->subtitle}}, {{$timeline->begin_date}} - {{$timeline->end_date}}</span>
							<p>{{$timeline->body}}</p>
						</div>
					</div>
						@endforeach
					</div>
				</div>
			
		    </div>
		  </div>
		
	</div>
</div>	