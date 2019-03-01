
    @foreach($socials as $social)
        <a href="{{$social->getTranslatedAttribute('link')}}" target="_blank"><i class="{{$social->icon}}"></i></a>
    @endforeach
