<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>
    @hasSection('title')
    	@yield('title')
    @else
    	{{setting(App::getLocale().'.title')}}
    @endif
    </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="icon" type="image/png" href="{{Voyager::image(setting('site.favicon'))}}">

    <link rel="stylesheet" href="/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="/css/vendor/animate.min.css">
    <link rel="stylesheet" href="/css/vendor/owl.carousel.css">
    <link rel="stylesheet" href="/css/vendor/owl.transitions.css">
    <link rel="stylesheet" href="/css/style.css">
    
    <link rel="stylesheet" href="/css/report.css?t={{time()}}"/>
    <link rel="stylesheet" href="/css/custom.css?t={{time()}}"/>
    @if($is_rtl)
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-rtl/3.4.0/css/bootstrap-rtl.min.css" type="text/css" />
		<link rel="stylesheet" href="/css/rtl.css?t={{time()}}"/>
		@else
		<link rel="stylesheet" href="/css/ltr.css?t={{time()}}"/>
	  @endif
    
    <script src="/js/vendor/modernizr.js"></script>
  </head>
  <body class="single">
    <!--[if lt IE 8]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Loader to display before content Load-->
    <div class="loading"><img src="img/puff.gif" alt=""></div>



  	<!-- Add your site or application content here -->
	
	


	
	@yield('content')
	



    <script src="/js/vendor/jquery.js"></script>
    <script src="/js/vendor/grid.js"></script>
    <script src="/js/vendor/owl.carousel.min.js"></script>
    <script src="/js/vendor/wow.min.js"></script>
    <script src="/js/vendor/jquery.nav.js"></script>
    <script src="/js/vendor/typed.min.js"></script>
    <script src="/js/vendor/jquery.scrollUp.min.js"></script>
    <script src="/js/vendor/scroll.js"></script>
    <script src="/js/vendor/jquery.sticky.js"></script>
    <script src="/js/vendor/jquery.flexnav.min.js"></script>
    <script src="/js/vendor/masonry.pkgd.min.js"></script>
    <script src="/js/vendor/skrollr.js"></script>
    <script src="/js/script.js"></script>
    <script src="/js/report.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

  </body>
</html>

