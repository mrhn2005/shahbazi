<div class="active-section" id="contact">
	<section class="section-block">
		
		<div>
			<h4 class="title">{{__('Feel Free To Contact Me')}}</h4>
			<form class="contact-forms" method="post" action="{{route('category.request')}}"> 
			@csrf
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" name="first_name" class="form-control" placeholder="{{__('Name')}}" required>
						</div>
						<div class="form-group">
							<input type="email" name="email" class="form-control" placeholder="{{__('Email')}}">
						</div>
						<div class="form-group">
							<input type="text" name="phone" class="form-control" placeholder="{{__('Phone')}}">
						</div>
					</div>
					<div class="col-md-6">
						<textarea class="form-control" name="message" rows="6" placeholder="{{__('Message')}}" required></textarea>
					</div>
				</div>
			
			<div class="contact-btn">
				<button type="submit" class="btn btn-default rex-primary-btn-effect" >{{__('Send')}}</button>
			</div>
			</form>
		</div>
	</section>
</div>