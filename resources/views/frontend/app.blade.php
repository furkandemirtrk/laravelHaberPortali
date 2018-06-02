<!DOCTYPE html>
<html>
<head>
    <title>{{$settings->title}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{$settings->description}}"/>
    <meta name="keywords" content="{{$settings->keywords}}"/>
    <link rel="stylesheet" type="text/css" href="/frontend/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/style.css">

    @yield('css')
</head>
<body>
<!-- header-section-starts -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
    <header id="header">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="header_bottom">
                    <div class="header_bottom_left"><a class="logo" href="index.html">maü<strong>Express</strong> <span>En Yeni Teknolojik Haberler</span></a>
                    </div>
                    <div class="header_bottom_right"><a href="#"><img src="images/addbanner_728x90_V1.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="navarea">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav custom_nav">
                        <li class=""><a href="/">Anasayfa</a></li>
                        <li class="dropdown"><a href="#" class="" data-toggle="dropdown" role="button"
                                                aria-expanded="false">Kategoriler</a>
                            <ul class="dropdown-menu" role="menu">
                                @foreach($category as $art)
                                    <li>
                                        <a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}"
                                        >{{$art->name}}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                        @if(!\Illuminate\Support\Facades\Auth::check())
                            <li class=""><a href="/giris-yap">Giris Yap</a></li>
                        @else
                            <li class=""><a href="/cikis-yap">Çıkıs Yap</a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <section id="mainContent">
        @yield('content')
    </section>


</div>
<footer id="footer">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="single_footer_top wow fadeInLeft">
                        <h2>Flicker Images</h2>
                        <ul class="flicker_nav">
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                            <li><a href="#"><img src="images/75x75.jpg" alt=""></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="single_footer_top wow fadeInDown">
                        <h2>Etiketler</h2>
                        <ul class="labels_nav">
                            @foreach($tag as $item)
                                @php($tags = explode(",",$item->tags))
                                @foreach($tags as $a)
                                    <li><a href="/etiket/{{$a}}">{{$a}}</a></li>
                                @endforeach
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="single_footer_top wow fadeInRight">
                        <h2>About Us</h2>
                        <p>{{$settings->description}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="footer_bottom_left">
                        <p>Copyright &copy; 2045 <a href="index.html">magExpress</a></p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="footer_bottom_right">
                        <p>Developed BY Wpfreeware</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="/frontend/js/jquery.min.js"></script>
<script src="/frontend/js/bootstrap.min.js"></script>
<script src="/frontend/js/wow.min.js"></script>
<script src="/frontend/js/slick.min.js"></script>
<script src="/frontend/js/custom.js"></script>
@yield('js')
</body>
</html>