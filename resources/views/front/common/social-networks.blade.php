<ul>
    @foreach($socials as $social)
        <li><a href="{{$social->getTranslatedAttribute('link')}}"><i class="social-pad {{$social->icon}}"></i></a></li>
    @endforeach

</ul>