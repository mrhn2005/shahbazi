
@php
	if(!isset($innerLoop)){
		if($isRtl){
			$items=$items->sortByDesc('id');
		}
		echo '<ul class="sf-menu">';
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
        if(!$originalItem->children->isEmpty()) {
            $linkAttributes =  'class="dropdown-toggle" data-toggle="dropdown"';
            $caret = '<span class="caret"></span>';

            if(url($item->link()) == url()->current()){
                $listItemClass = 'dropdown active';
            }else{
                $listItemClass = 'dropdown';
            }
        }

        // Set Icon
        if(isset($options->icon) && $options->icon == true){
            $icon = '<i class="' . $item->icon_class . '"></i>';
        }

    @endphp
	<li>
		<a href="home-layout-1.html#">
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
		@if(!$originalItem->children->isEmpty())
        @include('front.common.menu', ['items' => $originalItem->children, 'options' => $options, 'innerLoop' => true])
        @endif
	</li>

@endforeach

</ul>
