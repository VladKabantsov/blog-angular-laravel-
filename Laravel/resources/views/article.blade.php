<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Custom fonts for this template -->
    {{--<link href="css/font-awesome.css" rel="stylesheet" type="text/css">--}}
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>


    <!-- Custom styles for this template -->
    <link href="../css/clean-blog.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-default my-nav">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">Create Post</a></li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Page 3</a></li>
        </ul>
    </div>
</nav>

<!-- Page Header -->
<header class="masthead" style="background-image: url('../img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 mx-auto">
                <div class="site-heading">
                    <h1>Blog</h1>
                    <span class="subheading">A Blog about start your own business</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">
            <!-- Title -->
            <h1 class="mt-4">{{ $article->title }}</h1>
            <!-- Author -->
            <p class="lead">
                by
                <a href="#">{{ $article->user_id }}</a>
            </p>
            <hr>
            <!-- Date/Time -->
            <p>Posted on {{ $date }}, at {{ $time }}</p>
            <hr>
            <!-- Post Content -->
            <p class="lead">{{ $article->text }}</p>
            <hr>
            <!-- Comments Form -->
            <div class="card my-4">
                <h5 class="card-header">Leave a Comment:</h5>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

            <!-- Comment with nested comments -->
            @foreach($comments as $comment)
                @if($comment->parent_id==0)
                    <div class="media mb-4">
                        <div class="media-body">
                            <h5 class="mt-0">Author: {{ $comment->user_id }}</h5>
                                {{ $comment->content }}
                            @foreach($comments as $item)
                                @if($item->parent_id==$comment->id)
                                    <div class="media mt-4 sub-comment">
                                        <div class="media-body">
                                            <h5 class="mt-0">Author: {{ $item->user_id }}</h5>
                                            {{ $item->content }}
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                @endif
            @endforeach
        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<!-- Bootstrap core JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="../js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
<script src="../js/clean-blog.min.js"></script>

</body>

</html>
