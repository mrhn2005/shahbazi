
					<div class="single-blog-list">
						<div class="blog-title">
							<h3>{{$post->getTranslatedAttribute('title')}} </h3>
							<span>{{$post->created_at->diffForHumans()}}</span>
						</div>
						{!!$post->getTranslatedAttribute('body')!!}
					</div>

