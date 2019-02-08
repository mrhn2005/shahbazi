
@php
	if(!isset($innerLoop)){
		
		echo '<ul id="navigation-menu" data-breakpoint="992" class="flexnav one-page">';
	}else{
	
		echo '<ul>';
	}
	
@endphp


@foreach ($items as $item)

    @php
        $originalItem = $item;


        $listItemClass = null;
        $linkAttributes =  null;
        $styles = null;
        $icon = null;
        $caret = null;

        // Background Color or Color
        if (isset($options->color) && $options->color == true) {
            $styles = 'color:'.$item->color;
        }
        if (isset($options->background) && $options->background == true) {
            $styles = 'background-color:'.$item->color;
        }

        // With Children Attributes
        if(count($originalItem->children)>0) {
            $linkAttributes =  'class="dropdown-toggle" data-toggle="dropdown"';
            $caret = '<span class="caret"></span>';

            // if(url($item->link()) == url()->current()){
            //     $listItemClass = 'dropdown active';
            // }else{
            //     $listItemClass = 'dropdown';
            // }
        }

        // Set Icon
        if(isset($options->icon) && $options->icon == true){
            $icon = '<i class="' . $item->icon_class . '"></i>';
        }
       
    @endphp
    
	<li>
		<a href="{{$item->link()}}">
			@if(!isset($innerLoop))
			<span class="menu-description">
				<i class="{{ $item->icon_class }}"></i>
			</span>
			
			<span class="menu-title">
				{{ $item->getTranslatedAttribute('title') }}
			</span>
			@else
				{{ $item->getTranslatedAttribute('title') }}
			@endif
		</a>
		@if(count($originalItem->children)>0)
        @include('front.common.menu', ['items' => $originalItem->children, 'options' => $options, 'innerLoop' => true])
        @endif
	</li>
@endforeach
    @foreach (config('app.locales') as $localeKey => $locale)
        @if ($localeKey != app()->getLocale())
            <li><a class="language-link" href="{{ route('locale.switch', $localeKey) }}">
                <span class="menu-description">
    				<i class="fa fa-language" ></i>
    			</span>
                {{ $locale }}
            </a></li>
        @endif
    @endforeach
</ul>
