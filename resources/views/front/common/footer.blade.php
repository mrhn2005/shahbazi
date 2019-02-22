
<footer>
	<div class="row text-center">
		<div class="col-md-12">
			<p>{{__('Last Modified')}}: {{Carbon\Carbon::createFromTimeStamp(getlastmod())->diffForHumans()}}</p>
		</div>
		<div class="col-md-12">
			<p>&copy; {{__('All rights reserved')}}</p>
		</div>
	</div>
</footer>