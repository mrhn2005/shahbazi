<div  class="active-section" id="papers">
	<h2 class="title heading">
        <i class="fa fa-edit"></i>
        {{__('Papers')}}
    </h2>
	<div class="section-block  ">
		<ul class="nav nav-pills">
		    @foreach($categories as $category)
		    <li class="{{$loop->first?'active':''}}"><a class="btn btn-default" data-toggle="pill" href="#{{$category->slug}}">{{$category->getTranslatedAttribute('title')}}</a></li>
		    @endforeach
		</ul>
		  <div class="papers-fa tab-content">
		    @foreach($categories as $category) 
		    <div id="{{$category->slug}}" class="tab-pane fade {{$loop->first?'in active':''}} ">
		        <ul class="publication">

				@foreach($category->papers as $paper)
				    <li class="{{Helper::is_persian($paper->title)?'rtl-paper':'ltr-paper'}}">
				    	{{$paper->title}}
				    	@if($paper->link)
						<a href="{{$paper->link}}" target="_blank">
							<i class="fa fa-external-link"></i>
						</a>
						@endif
				    </li>
				@endforeach
				</ul>
		    </div>
		    @endforeach
		    
		  </div>
		
	</div>
</div>	