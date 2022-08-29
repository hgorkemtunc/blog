@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-secondary">
                    {{date('d F Y', strtotime($post->published_at))}}
                    @foreach(explode(',', $post->category) as $category)
                        <span class="badge bg-primary">
                            {{$category}}
                        </span>
                    @endforeach
                </div>

                <div class="card-body">
                    <h2>{{$post->title}}</h2>
                    <div>
                        {!! $post->body !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
