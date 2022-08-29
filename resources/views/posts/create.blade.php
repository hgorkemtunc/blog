@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><i class="fa-solid fa-plus"></i> {{ 'Create Post' }}</div>

                <div class="card-body">
                    <form action="/post" method="post">
                        @csrf
                        <div class="form-group">
                            <label><i class="fa-solid fa-heading"></i> Title</label>
                            <input type="text" name="title" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-circle-check"></i> Status</label>
                            <select name="inactive" class="form-control">
                                <option value="0">Active</option>
                                <option value="1">Inactive</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-user"></i> Author</label>
                            <input type="text" name="author" class="form-control" value="{{ Auth::user()->name }}" disabled>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-layer-group"></i>  Category</label>
                            <select name="category[]" class="form-control" multiple required>
                                @foreach(config('app.categories') as $category)
                                    <option value="{{ $category }}">{{ ucfirst($category) }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-file"></i> Article</label>
                            <textarea name="body" id="" cols="30" rows="10" class="form-control" required></textarea>
                        </div>

                        <div class="form-group">
                            <label><i class="fa-solid fa-calendar"></i> Publish Date</label>
                            <input type="datetime-local" name="published_at" class="form-control" value="{{ date("Y-m-d H:i") }}" required>
                        </div>

                        <button type="submit" class="btn btn-outline-primary">
                            <i class="fa-solid fa-floppy-disk"></i> Submit
                        </button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
