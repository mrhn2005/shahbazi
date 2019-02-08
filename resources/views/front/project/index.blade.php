@extends('front.layout.front')



@section('content')
<!-- nav section -->
@include('front.common.nav-page')



<span class="background"></span>


<section class="main">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					
					
					<!-- papers-section -->
					@include('front.home.includes.projects')	
					<br>
					<br>


					@include('front.common.footer')
					
					<div class="text-center">
					{{ $projects->links() }}	
					</div>

				</div>
			</div>
		</div>
	</section>
	<div>
		
	</div>
@endsection