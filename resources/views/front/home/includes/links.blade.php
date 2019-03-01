<div class="active-section" id="links">
	<h2 class="title heading">
        <i class="fa fa-link"></i>
        {{__('Links')}}
    </h2>
	<section class="section-block">
		<div class="row">
			<div class="col-md-12">
				<div id="rex-blog-slider" class="row">
					
					
					    <div class="row">
					        	@foreach ($links as $link)
					        	
					            <div class="col-md-4 link-margin">
	
			            			<a class="link-border" href="{{$link->url}}" target="_blank">
			            				<i class="fa fa-external-link"></i>
			            				{{ $link->getTranslatedAttribute('title')}}
			            			</a>
	
					            </div>
					        	@endforeach
					    </div>
					
					
				</div>
			</div>
			
		</div>
	</section>
</div>