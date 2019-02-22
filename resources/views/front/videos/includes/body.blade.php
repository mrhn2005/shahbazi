
<div class="single-blog-list">
	<div class="blog-title">
		<h3>{{$video->getTranslatedAttribute('title')}} </h3>
		<span>{{$video->date()}}</span>
	</div>
	<div class="margin-top embed-responsive embed-responsive-16by9">
    	<iframe class="embed-responsive-item" src="{{$video->apara()->frame}}"></iframe>
    </div>
</div>

