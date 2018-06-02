

    <div class="col-md-3 top-nav">
        <div class="logo">
            <a href="/"><h1>Blogger</h1></a>
        </div>
        <div class="top-menu">
            <span class="menu"></span>

            <ul class="cl-effect-16">
                @foreach($category as $art)
                    @if($art->url == "haber" || $art->url == "video")

                    @else
                        <li>
                            <a href="/content/@if(isset($art->parent))@php($topCategory=$art->parent)@if(isset($topCategory->parent))@php($topCategory2 = $topCategory->parent)@if(isset($topCategory2->parent)){{$topCategory2->parent->url}}/@endif{{$topCategory->parent->url}}/@endif{{$art->parent->url}}/@endif{{$art->url}}" data-hover="{{$art->name}}">{{$art->name}}</a>
                        </li>
                        @endif
                @endforeach
            </ul>
            <!-- script-for-nav -->
            <script>
                $( "span.menu" ).click(function() {
                    $( ".top-menu ul" ).slideToggle(300, function() {
                        // Animation complete.
                    });
                });
            </script>
            <!-- script-for-nav -->
            <ul class="side-icons">
                <li><a class="fb" href="#"></a></li>
                <li><a class="twitt" href="#"></a></li>
                <li><a class="goog" href="#"></a></li>
                <li><a class="drib" href="#"></a></li>
            </ul>
        </div>
    </div>
