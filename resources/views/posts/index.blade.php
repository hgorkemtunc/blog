@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-12">
                <a href="post/create" class="btn btn-outline-primary mb-2"><i class="fa-solid fa-plus"></i> Create Post</a>
                <br>
                <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Post</th>
                            <th>Publish Date</th>
                            <th>Author</th>
                            <th>Category</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($posts as $post)
                        <tr>
                            <td>
                                <div class="fw-bold">
                                    @if($post->inactive == 1)
                                    <span class="badge bg-dark">Inactive</span>
                                    @endif
                                    {{ $post->title }}
                                </div>
                                <small class="text-muted">{{ substr($post->body, 0,50).'...' }}</small>
                            </td>
                            <td>{{ date('d F Y', strtotime($post->published_at)) }}</td>
                            <td>{{ $post->name }}</td>
                            <td>@foreach(explode(',', $post->category) as $category)
                                <span class="badge bg-primary">
                                    {{ucfirst($category)}}
                                </span>
                                @endforeach
                            </td>
                            <td>
                            <a href="post/{{$post->id}}" class="btn btn-outline-dark">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                            <a href="post/{{$post->id}}/edit" class="btn btn-outline-primary"
                                ><i class="fa-solid fa-pen-to-square"></i>
                            </a>
                            <form action="post/{{$post->id}}" method="post" class="d-inline" id="delete-post-{{$post->id}}">
                                {{ csrf_field() }}
                                @method('DELETE')
                                <button class="btn btn-outline-danger" onclick="submitResult(event, {{$post->id}})" type="submit">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
                <div>
                    {!! $posts->links() !!}
                </div>
        </div>
    </div>
</div>
<script>
function submitResult(e, postId) {
    e.preventDefault();
    swal({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            document.getElementById("delete-post-"+postId).submit();
        }
    })
};

    @if(session()->has('success'))
        {!!
            "swal(
                'Successful!',
                'Operation was successful!',
                'success'
            );"
        !!}
    @endif
</script>
@endsection
