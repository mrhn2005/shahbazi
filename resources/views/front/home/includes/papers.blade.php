<div  class="active-section" id="papers">
	
	<div class="section-block  ">
		<h4 class="title">{{__('Papers')}}</h4>
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
				    <li class="{{Helper::is_persian($paper->title)?'rtl-paper':''}}">{{$paper->title}}</li>
				
				@endforeach
				</ul>
		    </div>
		    @endforeach
		    
		  </div>
		
	</div>
</div>	