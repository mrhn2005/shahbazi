<div class="about" id="about">
							<!-- About section first style -->

		<div class="hero" style="background: url({{Voyager::image($information->background)}})">
			<div class="hero-inner">
		    <a href="#" class="hero-logo"><img src="{{Voyager::image($information->image)}}" alt="Logo Image"></a>
				<div class="hero-copy">
					<h1>{{ $information->getTranslatedAttribute('introduction')  }}</h1>
					<h6>{{ $information->getTranslatedAttribute('specialty')  }}</h6>
					<div class="media-link">
						@include('front.common.social-networks')
					</div>	
					<!--<div class="hero-btn">-->
					<!--	<a class="btn btn-default rex-primary-btn-effect-No" href="index.html#contact" role="button"><span>Hire Me</span></a>-->
					<!--	<a class="btn btn-default rex-primary-btn-effect" href="index.html#" role="button">Download CV</a>-->
					<!--</div>-->
				</div>
			</div>
		</div>
						<div class="active-section" id="about">
			<div class="about-section">
				<div class="row">
					<div class="col-md-6">
						<h4>{{__('About')}}</h4>
						<div class="about-content">
							<span class="active-color">
							    {!! $information->getTranslatedAttribute('about') !!}
							<span class="border-dashed"></span>
							<!--<img src="img/signature.png" alt="">-->
						</div>
					</div>
					<div class="col-md-5 col-md-offset-1">
						<h4>{{__('Basic Information')}}</h4>
						<ul class="list-group">
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Address')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->getTranslatedAttribute('address')  }}</p>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Date of Birth')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->getTranslatedAttribute('birthday')  }}</p>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Place of Birth')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->getTranslatedAttribute('birthcity')  }}</p>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Language')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->getTranslatedAttribute('language')  }} </p>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Email')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->email  }}</p>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-md-4">
										<h6>{{__('Phone')}}:</h6>
									</div>
									<div class="col-md-8">
										<p>{{ $information->phone  }}</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

</div>