<a class="video gltn" href="{{route('video.show',[$video->id,$video->getTranslatedAttribute('slug')])}}">
     <img class="img-responsive" src="{{$video->apara()->small_poster}}">
     <i class="fa fa-play-circle play-icon"></i>
     <p class="title">{{$video->getTranslatedAttribute('title')}}</p>
 </a>