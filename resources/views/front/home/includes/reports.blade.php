<div class="active-section" id="reports">
    <h2 class="title heading">
        <i class="fa fa-book"></i>
        {{__('Reports')}}
    </h2>
	<section class="section-block">
		
		<div class="row">
			<div class="col-lg-12">
				<div id="rex-blog-slider">
					@foreach($reports as $report)
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- Normal Demo-->
                          <div class="column">
                            
                            <!-- Post-->
                            <div class="post-module">
                              <!-- Thumbnail-->
                              <div class="thumbnail">
                                <div class="date">
                                  <div class="day">{{$report->getTranslatedAttribute('year')}}</div>
                                  
                                </div><img src="{{Voyager::image($report->thumbnail('medium'))}}"/>
                              </div>
                              <!-- Post Content-->
                              <div class="post-content">
                                <!--<div class="category">Photos</div>-->
                                
                                <h3 class="sub_title">{{$report->getTranslatedAttribute('title')}}</h3>
                                <div class="description">
                                <p>{{__('Writers')}}: {{$report->getTranslatedAttribute('writer')}}</p>
                                <a class="btn btn-default report-download" href="{{$report->link}}">{{__('Download')}} <i class="fa fa-download"></i></a>
                                </div>
                              </div>
                            </div>
                          </div>
					</div>
					@endforeach
					
				</div>
			</div>
			@if(!($reports instanceof \Illuminate\Pagination\LengthAwarePaginator))
			<div class="text-center">
				<a class="btn btn-default" href="{{route('report.index')}}">{{__('See all')}}</a>
			</div>
			@endif
		</div>
	</section>
</div>
