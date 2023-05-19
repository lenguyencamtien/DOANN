@extends('pages.details')
@section('details')
<div class="page-title-container" >
            <div class="page-title" >
                <div class="container">
                    <h1 class="entry-title">Tin tức</h1>
                </div>
            </div>
        </div>
<section id="content1" style=" background-image: url(public/frontend/images/nen2.jpg);  ">
<div class="section-bg-overlay absolute fill" style="background-color: rgba(49, 47, 47, 0.5);">
        
            <div class="container">
                <!-- <div id="main"> -->
                    <div class="section-info">
                         @foreach($all_post as $key => $post)
                        <div class="blog-posts">
                       
                            <article class="post post-full">
                                <div class="post-image col-sm-5">
                                    <div class="image">
                                        <img src="{{asset('public/uploads/post/'.$post->post_image)}}" alt="">
                                    </div>
                                </div>
                                <div class="post-content col-sm-7">
                                    <h3 class="post-title"><a href="#">{!!$post->post_title!!}</a></h3>
                                    <div class="post-meta">
                                        <span class="entry-author fn">By <a href="#">Admin</a></span>
                                        <span class="post-category">in <a href="#">MIMOSA</a></span>
                                    </div>
                                    <p class="post_desc">{!!$post->post_desc!!}</p>
                                    <div class="post-action">
                                        <a href="" class="btn btn-sm style3 post-read-more">More</a>
                                    </div>
                                </div>
                            </article>
                         
                        </div>
                        <div class="clearfix"></div>
                        @endforeach
                    </div>
                </div>
            </div>
            </div>
        </section>
@endsection