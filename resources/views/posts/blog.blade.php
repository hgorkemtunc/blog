@extends('layouts.app')

@section('content')
<div class="container">
        <div class="row">
            @foreach($posts as $post)
                <div class="col-sm-3">
                    <div class="card mb-2" style="min-height: 180px">
                        <div class="card-header text-muted p-1">
                            Author: {{ $post->name}}
                        </div>
                        <div class="card-body">
                            <h5 class="card-title fw-bold">
                                <a href="post/{{$post->id}}" class="text-dark">{{ $post->title }}</a>
                            </h5>
                            <p class="card-text">
                                {{ substr($post->body, 0, 50)."..." }}
                                <a href="post/{{$post->id}}" class="text-dark">Read more...</a>
                            </p>
                        </div>
                        <div class="card-footer text-muted p-1">
                            <small>{{ date('d F Y', strtotime($post->published_at)) }}</small>
                            @foreach(explode(',', $post->category) as $category)
                            <span class="badge bg-primary">
                                {{$category}}
                            </span>
                            @endforeach
                        </div>
                    </div>
                </div>

            @endforeach
            <div>
                {!! $posts->links() !!}
            </div>
        </div>
</div>

@endsection
