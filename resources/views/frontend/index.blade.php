@extends('frontend.app')
@section('content')
    @if(!isset($expCat))
        <div class="content_top">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm6">
                    <div class="latest_slider">
                        <div class="slick_slider">
                            @foreach($slider as $art)
                                <div class="single_iteam"><img src="/uploads/img/{{$art->image}}" alt="{{$art->url}}">
                                    <h2><a class="slider_tittle"
                                           href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}">{{$art->short_content}}</a></h2>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm6">
                    <div class="content_top_right">
                        <ul class="featured_nav wow fadeInDown">
                            @foreach($box as $art)
                                <li><img src="/uploads/img/{{$art->image}}" alt="{{$art->url}}">
                                    <div class="title_caption"><a
                                                href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}">{{$art->short_content}}</a></div>
                                </li>
                            @endforeach

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    @endif

        <div class="content_bottom">
            <div class="col-lg-8 col-md-8">
                <div class="content_bottom_left">
                    <div class="single_category wow fadeInDown">
                        <div class="archive_style_1">
                            <h2><span class="bold_line"><span></span></span> <span class="solid_line"></span> <span
                                        class="title_text">
                                    @if(!isset($expCat))
                                    Son Eklenenler
                                        @else
                                        @foreach($expCat as $exp)
                                            {{str_replace("-"," ",$exp) }}
                                        @endforeach
                                    @endif
                                </span></h2>
                            @php($i = 0)
                            @foreach($articles as $art)
                                <div class="business_category_left wow fadeInDown">
                                    <ul class="fashion_catgnav">
                                        <li>
                                            <div class="catgimg2_container"><a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}"><img
                                                            alt="{{$art->url}}" src="/uploads/img/{{$art->image}}"></a>
                                            </div>
                                            <h2 class="catg_titile"><a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}">{{$art->name}}</a>
                                            </h2>
                                            <div class="comments_box"><span
                                                        class="meta_date">{{$art->created_at->formatLocalized('%b %d')}}</span>
                                                <span class="meta_eye"><i class="fa fa-eye"></i>{{$art->hit}}</span>
                                                <span class="meta_comment">
                                                <a href="">{{$art->comments->count()}}</a></span>
                                                <span class="meta_more">
                                                <a href="/content/{{$art->url}}">Devamını Oku...</a></span></div>
                                            <p>{{$art->short_content}}</p>
                                        </li>
                                    </ul>
                                </div>
                                @php($i++)
                                @if($i % 2 == 0)
                                    <div class="clearfix"></div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="pagination_area">
                    <nav>
                        <ul class="pagination">
                            <li><a href="/?page=1">1</a></li>
                            <li><a href="/?page=2">2</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            @include('frontend.right-bar')
        </div>

@endsection

@section('css')
@endsection
@section('js')
@endsection
