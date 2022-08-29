@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><i class="fa-solid fa-pen-to-square"></i> {{ 'Edit Post' }}</div>

                <div class="card-body">
                    <form action="/post/{{$post->id}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label><i class="fa-solid fa-tag"></i> Title</label>
                            <input type="text" name="title" class="form-control" value="{{$post->title}}">
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-circle-check"></i> Status</label>
                            <select name="inactive" class="form-control">
                                <option value="0" {{ $post->inactive == 0 ? 'selected' : '' }}>Active</option>
                                <option value="1" {{ $post->inactive == 1 ? 'selected' : '' }}>Inactive</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-layer-group"></i> Category</label>
                            <select name="category[]" class="form-control" multiple>
                                @foreach(config('app.categories') as $category)
                                        <option value="{{ $category }}" @if(collect(explode(',', $post->category))->contains($category)) selected @endif>{{ ucfirst($category) }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-file"></i> Article</label>
                            <textarea name="body" id="" cols="30" rows="10" class="form-control">{{$post->body}}</textarea>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-calendar"></i> Publish Date</label>
                            <input type="date" name="published_at" class="form-control" value="{{ date('Y-m-d', strtotime($post->published_at)) }}">
                        </div>

                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-floppy-disk"></i> Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
