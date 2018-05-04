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
    <link href="css/clean-blog.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

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
<header class="masthead" style="background-image: url('img/home-bg.jpg')">
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
       <!-- Comments Form -->
       <form method="POST" >
           <div class="form-group">
               <label for="title">Title:</label>
               <input name="title" type="text" class="form-control" id="title">
           </div>
           <div class="form-group">
               <label for="text">Text:</label>
               <textarea name="text" class="form-control" rows="3"></textarea>
           </div>
           <button type="submit" class="btn btn-primary">Submit</button>
       </form>
   </div>
</div>
    <!-- /.row -->
</div>
<!-- /.container -->

<!-- Footer -->
<!-- Bootstrap core JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<!-- Custom scripts for this template -->
<script src="js/clean-blog.min.js"></script>

</body>

</html>
