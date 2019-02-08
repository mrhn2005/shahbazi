<div class="active-section" id="reports">
	<section class="section-block">
		<h4 class="title">{{__('Reports')}}</h4>
		<div class="row">
			<div class="col-md-12">
				<div id="rex-blog-slider">
					@foreach($reports as $report)
					<div class="col-md-4 col-sm-6">
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
