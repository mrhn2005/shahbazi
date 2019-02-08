@extends('front.layout.front')



@section('content')
<!-- nav section -->
@include('front.common.nav')



<span class="background"></span>


<section class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					
					@include('front.home.includes.about')
					<br>
					<br>
					<!-- skill-section -->
					

					<!-- experience-section -->
					@include('front.home.includes.experience')
					<br>
					<br>

					<!-- projects-section -->
					@include('front.home.includes.projects')	
					<br>
					<br>
					
					
					<!-- papers-section -->
					@include('front.home.includes.papers')	
					<br>
					<br>
					
					
						
					<!-- reports-section -->
					@include('front.home.includes.reports')	
					<br>
					<br>
					
					<!-- blog-section -->
					@include('front.home.includes.blog')
					<br>
					<br>

					<!-- form-section -->
					@include('front.home.includes.form')

					@include('front.common.footer')
					


				</div>
			</div>
		</div>
	</section>
@endsection

@section('js')
<script>
	rtl=false;
	@if($is_rtl)
		rtl=true;	
	@endif
	if( $( window ).width() < 991 ){
      $('#rex-blog-slider').owlCarousel({
        items: 2,
        itemsDesktop: [1199,2],
        itemsDesktopSmall: [979,2],
        itemsTablet: [768,2],
        rtl:rtl
        // autoPlay: 3500,
        pagination: true,
        navigation: false,
        navigationText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
      });

      // Experience Section
      $('#rex-experience-slider').owlCarousel({
        items: 2,
        itemsDesktop: [1199,2],
        itemsDesktopSmall: [979,1],
        itemsTablet: [768,1],
        rtl:rtl
        // autoPlay: 3500,
        pagination: true,
        navigation: false,
        navigationText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
      });


      // Education Section
      $('#rex-education-slider').owlCarousel({
        items: 2,
        itemsDesktop: [1199,2],
        itemsDesktopSmall: [979,1],
        itemsTablet: [768,1],
        rtl:rtl
        // autoPlay: 3500,
        pagination: true,
        navigation: false,
        navigationText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
      });

    }
</script>

@endsection