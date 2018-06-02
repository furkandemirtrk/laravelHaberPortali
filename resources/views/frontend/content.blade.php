@extends('frontend.app')
@section('content')
    <div class="content_bottom">
        <div class="col-lg-8 col-md-8">
            <div class="content_bottom_left">
                <div class="single_page_area">
                    <ol class="breadcrumb">
                        <li><a href="#">Anasayfa</a></li>
                        <li><a href="#">{{$content->parent->name}}</a></li>
                        <li class="active">{{$content->name}} </li>
                    </ol>
                    <h2 class="post_titile">{{$content->name}}</h2>
                    <div class="single_page_content">
                        <div class="post_commentbox">
                            <span><i class="fa fa-calendar"></i>{{$content->created_at->formatLocalized('%b %d')}}</span>
                            <span><i class="fa fa-eye"></i>{{$content->hit}}</span>
                            @php($tags = explode(",",$content->tags))
                            @php($i = 0)
                            @foreach($tags as $t)
                                <i class="fa fa-tags"></i><a href="/etiket/{{$t}}">{{$t}}</a>
                                @php($i++)
                            @endforeach
                            </div>
                        @if(isset($content->video_url))
                            <iframe width="100%" height="400" src="{{$content->video_url}}"
                                    frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        @else
                        <img class="img-center" src="/uploads/img/{{$content->image}}" alt="{{$content->url}}">
                        @endif
                        <blockquote>{!! $content-> short_content !!}</blockquote>
                        <p>{!! $content-> content !!}</p>
                    </div>
                </div>
                @if($content->comments->count() > 0)
                    <div class="single_page_content">
                        <h2>Yorumlar</h2>
                        @foreach($content->comments->where('comment_id',0) as $comment)
                            <blockquote class="">
                                <div class="">
                                    @if($comment->user_id > 0)
                                        <h5><a href="#">{{$comment->user->name}}</a></h5>
                                    @else
                                        <h5>{{$comment->name}}</h5>
                                    @endif
                                </div>
                                <div class="">
                                    <p>{{$comment->comment}}</p>
                                    <p>
                                        @php($time = $comment->created_at)
                                        @php($time ->setLocale('tr'))
                                        {{$time->diffForHumans()}}
                                        <a href="javascript:void(0)" onclick="reply({{$comment->id}})">Yanıtla</a>
                                    </p>
                                    @foreach($comment->children as $child)
                                        <div class="">
                                            <div class="">
                                                @if($child->user_id > 0)
                                                    <h5><a href="#">{{$child->user->name}}</a></h5>
                                                @else
                                                    <h5>{{$child->name}}</h5>
                                                @endif
                                            </div>
                                            <div class="">
                                                <p>{{$child->comment}}</p>
                                                <p>
                                                    @php($time = $child->created_at)
                                                    {{$time->diffForHumans()}}
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="clearfix"></div>
                            </blockquote>
                        @endforeach
                    </div>

                @endif
                <section id="ContactContent">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="contact_area">
                                <div class="contact_bottom">
                                    <div class="contact_us wow fadeInRightBig">
                                        <h2>Yorum Yap</h2>
                                        <form id="form" method="post" class="contact_form">
                                            {{csrf_field()}}
                                            <div id="reply"></div>
                                            @if(!\Illuminate\Support\Facades\Auth::check())
                                                <input class="form-control" name="name" type="text" placeholder="Name(required)">
                                                <input class="form-control" name="email" type="email" placeholder="E-mail(required)">
                                            @endif
                                            <textarea class="form-control" cols="30" rows="10" name="comment"
                                                      placeholder="Message(required)"></textarea>
                                            <input type="submit" value="Send">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

        </div>
        @include('frontend.right-bar')

    </div>
@endsection

@section('css')
@endsection

@section('js')
    <script src="/js/jquery.form.min.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/sweetalert.min.js"></script>
    <script>
        function reply(id) {
            var hidden = '<input type="hidden" value="' + id + '" name="comment_id" >';
            document.getElementById('reply').innerHTML = hidden;
        }

        $(document).ready(function () {
            $('form').ajaxForm({
                success:function (response) {
                    swal(
                        response.baslik,
                        response.icerik,
                        response.durum
                    )
                }
            });
        });
    </script>
@endsection
