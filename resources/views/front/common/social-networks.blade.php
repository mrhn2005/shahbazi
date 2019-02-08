
    @foreach($socials as $social)
        <a href="{{$social->getTranslatedAttribute('link')}}"><i class="{{$social->icon}}"></i></a>
    @endforeach
