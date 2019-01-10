@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')
<style>
	.thumb-container{
        position: relative;
        width: 100%;
        padding-top: 58%;
        background-color:#F1F1F1;
    }

    .image-container{
       overflow: hidden;
       position:  absolute;
       top: 0;
       left: 0;
       bottom: 0;
       right: 0;
    }
    
    .excerp-height{
        min-height:140px;
    }
</style>
@endsection

@section('content')	
	<div class="page-wrapper">
		
		<!-- Top Bar Start -->
		@include('front.common.top-bar')
		<!-- Top Bar End -->

		<!-- Header Start -->
		@include('front.common.header')
		<!-- Header End -->

		
		<!-- Slider Start -->
		@include('front.home.includes.main-slider')
		<!-- Slider End -->


		<!-- Service Start -->
		@include('front.home.includes.service')
		<!-- Service End -->

		
		<!-- Department Start -->
		<section class="department-v2">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="heading wow fadeInUp">
							<h2>Our Departments</h2>
							<p>We have All Major Departments to Serve Patients</p>
							<div class="sep"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 wow fadeInUp">
						
						<!-- Department Tab Start -->
						<div class="department-tab">

							<ul class="nav nav-tabs col-md-4">
								<li class="active"><a href="home-layout-1.html#tab1" data-toggle="tab" aria-expanded="true"><span class="icon-i-neurology"></span>Neurology</a></li>
								<li class=""><a href="home-layout-1.html#tab2" data-toggle="tab" aria-expanded="false"><span class="icon-i-dental"></span>Dentistry</a></li>
								<li class=""><a href="home-layout-1.html#tab3" data-toggle="tab" aria-expanded="false"><span class="icon-i-radiology"></span>Radiology</a></li>
								<li class=""><a href="home-layout-1.html#tab4" data-toggle="tab" aria-expanded="false"><span class="icon-i-cardiology"></span>Cardiology</a></li>
								<li class=""><a href="home-layout-1.html#tab5" data-toggle="tab" aria-expanded="false"><span class="icon-i-oncology"></span>Gynecology</a></li>
							</ul>
							
							<!-- Tab Content Start -->
							<div class="tab-content col-md-8">
								<div class="tab-pane fade active in" id="tab1">
									<div class="row">										
										<div class="col-md-7">
											<div class="department-content">
												<h2>Neurology</h2>
												<p>
													One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.
												</p>
												<h3>Special Services:</h3>
												<div class="row">
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 1</li>
															<li>Special Service Item 2</li>
															<li>Special Service Item 3</li>
														</ul>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 4</li>
															<li>Special Service Item 5</li>
															<li>Special Service Item 6</li>
														</ul>
													</div>
												</div>
												<p class="button">
													<a href="home-layout-1.html">See Details</a>
												</p>											
											</div>
										</div>
										<div class="col-md-5">
											<div class="thumb">
												<img class="img-fullwidth" src="images/departments/w1.jpg" alt="">
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab2">
									<div class="row">										
										<div class="col-md-7">
											<div class="department-content">
												<h2>Dentistry</h2>
												<p>
													One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.
												</p>
												<h3>Special Services:</h3>
												<div class="row">
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 1</li>
															<li>Special Service Item 2</li>
															<li>Special Service Item 3</li>
														</ul>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 4</li>
															<li>Special Service Item 5</li>
															<li>Special Service Item 6</li>
														</ul>
													</div>
												</div>
												<p class="button">
													<a href="home-layout-1.html">See Details</a>
												</p>
											</div>
										</div>
										<div class="col-md-5">
											<div class="thumb">
												<img class="img-fullwidth" src="images/departments/w2.jpg" alt="">
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="tab3">
									<div class="row">
										<div class="col-md-7">
											<div class="department-content">
												<h2>Radiology</h2>
												<p>
													One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.
												</p>
												<h3>Special Services:</h3>
												<div class="row">
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 1</li>
															<li>Special Service Item 2</li>
															<li>Special Service Item 3</li>
														</ul>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 4</li>
															<li>Special Service Item 5</li>
															<li>Special Service Item 6</li>
														</ul>
													</div>
												</div>
												<p class="button">
													<a href="home-layout-1.html">See Details</a>
												</p>
											</div>
										</div>
										<div class="col-md-5">
											<div class="thumb">
												<img class="img-fullwidth" src="images/departments/w3.jpg" alt="">
											</div>
										</div>										
									</div>
								</div>

								<div class="tab-pane fade" id="tab4">
									<div class="row">
										<div class="col-md-7">
											<div class="department-content">
												<h2>Cardiology</h2>
												<p>
													One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.
												</p>
												<h3>Special Services:</h3>
												<div class="row">
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 1</li>
															<li>Special Service Item 2</li>
															<li>Special Service Item 3</li>
														</ul>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 4</li>
															<li>Special Service Item 5</li>
															<li>Special Service Item 6</li>
														</ul>
													</div>
												</div>
												<p class="button">
													<a href="home-layout-1.html">See Details</a>
												</p>
											</div>
										</div>
										<div class="col-md-5">
											<div class="thumb">
												<img class="img-fullwidth" src="images/departments/w4.jpg" alt="">
											</div>
										</div>
									</div>									
								</div>

								<div class="tab-pane fade" id="tab5">
									<div class="row">
										<div class="col-md-7">
											<div class="department-content">
												<h2>Gynecology</h2>
												<p>
													One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.
												</p>
												<h3>Special Services:</h3>
												<div class="row">
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 1</li>
															<li>Special Service Item 2</li>
															<li>Special Service Item 3</li>
														</ul>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
														<ul>
															<li>Special Service Item 4</li>
															<li>Special Service Item 5</li>
															<li>Special Service Item 6</li>
														</ul>
													</div>
												</div>
												<p class="button">
													<a href="home-layout-1.html">See Details</a>
												</p>
											</div>
										</div>
										<div class="col-md-5">
											<div class="thumb">
												<img class="img-fullwidth" src="images/departments/w5.jpg" alt="">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Tab Content End -->
						</div>
						<!-- Department Tab End -->


					</div>
				</div>
			</div>
		</section>
		<!-- Department End -->



		<!-- Doctors Start -->
		<section class="doctor-v1">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="heading wow fadeInUp">
							<h2>Our Qualified Doctors</h2>
							<p>Meet with All Our Qualified Doctors</p>
							<div class="sep"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						
						<!-- Doctor Carousel Start -->
						<div class="doctor-carousel">

							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/1.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Robin Cook</a></h3>
									<p>Neurosurgeon</p>
								</div>
							</div>


							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/2.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Bob Smith</a></h3>
									<p>Dentist</p>
								</div>
							</div>

							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/3.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Erica Frank</a></h3>
									<p>Cardiologist</p>
								</div>
							</div>


							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/4.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Emily Stowe</a></h3>
									<p>Gynecologist</p>
								</div>
							</div>


							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/1.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Robin Cook</a></h3>
									<p>Neurosurgeon</p>
								</div>
							</div>


							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/2.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Bob Smith</a></h3>
									<p>Dentist</p>
								</div>
							</div>

							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/3.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Erica Frank</a></h3>
									<p>Cardiologist</p>
								</div>
							</div>


							<div class="item wow fadeInUp">
								<div class="thumb">
									<img src="images/doctors/4.jpg" alt="">
									<div class="overlay"></div>
									<div class="social-icons">
										<ul>
											<li><a href="home-layout-1.html#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="home-layout-1.html#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="text">
									<h3><a href="home-layout-1.html">Dr. Emily Stowe</a></h3>
									<p>Gynecologist</p>
								</div>
							</div>

							
						</div>
						<!-- Doctor Carousel End -->

					</div>
				</div>
			</div>
		</section>
		<!-- Doctors End -->


		
		<!-- Quote Start -->
		<section class="quote-v1 parallax parallax-1">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-6">
						<div class="quote-text wow fadeInLeft">
							Sickness is the vengeance of nature for the violation of her laws.
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="quote-button wow fadeInRight">
							<a href="home-layout-1.html">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Quote End -->



		<!-- Pricing Start -->
		<section class="pricing-v1">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="heading wow fadeInUp">
							<h2>Pricing</h2>
							<p>We are Offering Special Discounts Now</p>
							<div class="sep"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="pricing-item wow fadeInLeft">
							<div class="title">BASIC PLAN</div>
							<div class="subtitle">30 Days Free Trial</div>
							<div class="price">
								<div class="hexa">
									<div class="amount"><span>$</span>29</div>
									<div class="time">per month</div>
								</div>
							</div>
							<div class="offer">
								<ul>
									<li>6 Specialties</li>
									<li>30 Tests and Treatments</li>
									<li>1 Medical Consultation</li>
									<li>1 Home Visit</li>
									<li>No Pregnancy Care</li>
									<li>No Assistance</li>
								</ul>
							</div>
							<div class="button">
								<a href="home-layout-1.html">Select</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="pricing-item wow fadeInUp">
							<div class="title">GOLD PLAN</div>
							<div class="subtitle">Payable in every 6 month</div>
							<div class="price">
								<div class="hexa">
									<div class="amount"><span>$</span>69</div>
									<div class="time">per month</div>
								</div>
							</div>
							<div class="offer">
								<ul>
									<li>12 Specialties</li>
									<li>90 Tests and Treatments</li>
									<li>2 Medical Consultation</li>
									<li>2 Home Visit</li>
									<li>Available Pregnancy Care</li>
									<li>24 Hours Assistance</li>
								</ul>
							</div>
							<div class="button">
								<a href="home-layout-1.html">Select</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="pricing-item wow fadeInRight">
							<div class="title">DIAMOND PLAN</div>
							<div class="subtitle">Payable in every year</div>
							<div class="price">
								<div class="hexa">
									<div class="amount"><span>$</span>99</div>
									<div class="time">per month</div>
								</div>
							</div>
							<div class="offer">
								<ul>
									<li>24 Specialties</li>
									<li>160 Tests and Treatments</li>
									<li>4 Medical Consultation</li>
									<li>4 Home Visit</li>
									<li>Available Pregnancy Care</li>
									<li>24 Hours Assistance</li>
								</ul>
							</div>
							<div class="button">
								<a href="home-layout-1.html">Select</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Pricing End -->



		<!-- Testimonial Start -->
		
		<!-- Testimonial End -->




		<!-- News Start -->
		@include('front.home.includes.posts')
		<!-- News End -->

			

		<!-- Partner Start -->
		<section class="partner-v1">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="heading wow fadeInUp">
							<h2>Our Partners</h2>
							<p>All Our Company Partners are Listed Below</p>
							<div class="sep"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
							
						<div class="partner-carousel">
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/1.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/2.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/3.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/4.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/5.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/1.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/2.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/3.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/4.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/5.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/1.png" alt=""></a>
								</div>
							</div>
							<div class="item wow fadeInUp">
								<div class="inner">
									<a href="home-layout-1.html#"><img src="images/partner/2.png" alt=""></a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- Partner End -->


		<!-- Footer Social Start -->
			@include('front.common.footer')
		<!-- Footer Bottom End -->



		<a href="home-layout-1.html#" class="scrollup">
			<i class="fa fa-angle-up"></i>
		</a>

	</div>

@endsection

