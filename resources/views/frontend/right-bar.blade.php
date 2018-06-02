<div class="col-lg-4 col-md-4">
    <div class="content_bottom_right">
        <div class="single_bottom_rightbar">
            <h2>Videolar</h2>
            <ul class="small_catg popular_catg wow fadeInDown">
                @foreach($video as $art)
                    <li>
                        <div class="media wow fadeInDown"><a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}"
                                                             class="media-left"> <img alt="{{$art->url}}"
                                                                                               src="/uploads/img/{{$art->image}}">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}">
                                        {{$art->name}} </a></h4>
                                <div class="comments_box"><span
                                            class="meta_date">{{$art->created_at->formatLocalized('%b %d')}}</span>
                                    <span  class="meta_eye"><i class="fa fa-eye"></i>{{$art->hit}}</span>
                                    <span class="meta_more">
                                                <a href="/content/{{$art->url}}">Devamını Oku...</a></span></div>
                                <p>{{$art->short_content}}</p>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </div>
        <div class="single_bottom_rightbar">
            <h2>En Çok Okunanlar</h2>
            <div class="tab-content">
                <div id="mostPopular" class="tab-pane fade in active" role="tabpanel">
                    <ul class="small_catg popular_catg wow fadeInDown">
                        @foreach($hits as $art)
                            <li>
                                <div class="media wow fadeInDown"><a class="media-left" href="@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}">
                                        <img src="/uploads/img/{{$art->image}}" alt="{{$art->url}}"> </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">
                                                {{$art->name}}
                                            </a>
                                        </h4>
                                        <div class="comments_box"><span
                                                    class="meta_date">{{$art->created_at->formatLocalized('%b %d')}}</span>
                                            <span  class="meta_eye"><i class="fa fa-eye"></i>{{$art->hit}}</span>
                                            <span class="meta_more">
                                                <a href="/content/{{$art->url}}">Devamını Oku...</a></span></div>
                                        <p>{{$art->short_content}} </p>
                                    </div>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>

            </div>
        </div>
        <div class="single_bottom_rightbar wow fadeInDown">
            <h2>Popüler Linkler</h2>
            <ul>
                <li><a href="/">Anasayfa</a></li>
                <li><a href="/login">Giriş Yap</a></li>
            </ul>
        </div>
    </div>
</div>