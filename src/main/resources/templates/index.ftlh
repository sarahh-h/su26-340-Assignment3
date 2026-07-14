<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css"
    integrity="sha384-X38yfunGUhNzHpBaEBsWLO+A0HDYOQi8ufWDkZ0k9e0eXz/tH3II7uKZ9msv++Ls" crossorigin="anonymous">
  <!--Using Pure CSS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <!-- Using Bootstrap for CSS simplicity -->
</head>

<body style="background-color: bisque; overflow: scroll;">
  <!--navigation bar-->
  <nav class="navbar"
    style="background-color: #288435; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;"
    data-bs-theme="light">
    <div class="container-fluid">
      <a class="navbar-brand" style="font-size: 40px;" aria-disabled="true">
        Angry Birds List
        <img src="/redBird.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-bottom">
      </a>
      <li class="nav-item" style="list-style-type:none; font-size: 28px;">
        <a class="nav-link active" aria-current="page" href="/posts">Home</a>
      </li>
      <li class="nav-item" style="list-style-type:none; font-size: 28px;">
        <a class="nav-link" href="/posts/about">About</a>
      </li>
      <li class="nav-item dropdown" style="list-style-type:none; font-size: 28px;">
        <a class="nav-link" href="/posts/chars{id}">Details</a>
      </li>
      <li class="nav-item" style="list-style-type:none; font-size: 28px;">
        <a class="nav-link" href="/posts/new-character-form">Add A Character</a>
      </li>
    </div>
  </nav>
  <br><br> <!--Search engine and filter portion-->
  <div class="for_form">
    <h1 style="text-align: center; color:saddlebrown; font-style: oblique; padding-bottom: 30px;">Explore the characters
      from the Angry Bird Universe!</h1>
    <form action="posts/search" method="get" class="pure-form" style="padding-left: 480px;">
      <input class="pure-input-2-3" type="serch" name="query" style="max-width: 850px;" type="text"
        placeholder="Search for Angry Bird" />
      <button class="btn btn-outline-success" style="border-width: 2px;" type="submit">Search</button>
      <div class="filter-buttons d-flex flex-wrap gap-4">
        <button class="btn btn-outline-success active" style="margin-top: 12px;">All Characters</button>
        <button class="btn btn-dark" style="margin-top: 12px;">Birds</button>
        <button class="btn btn-dark" style="margin-top: 12px;">Pigs</button>
        <button class="btn btn-dark" style="margin-top: 12px;">Eggs</button>
      </div>
    </form>
  </div>
  <br><br>
  <div class="container text-center"> <!--containig all the cards-->
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <!--character card-->

        <div class="col">
          <div class="card border-warning mb-3 h-100">
            <img src="" class="card-img-top" alt="">
            <div class="card-body">
              <h5 class="card-title">Can't get to work<span
                  class="badge rounded-pill text-bg-success">Can't get to work</span> </h5>
              <p class="card-text">Can't get to work</p>
              <p class="card-text"><b><a href="/posts/chars/{id}" style="color: #288435; ">Click here for more
                    details</b></a></p>
            </div>
          </div>
        </div>

    </div>
  </div>
  <br><br> <!--for space at the bottom of the page-->
  </div>
  <!--footer-->
  <footer style="background-color: rgba(255, 255, 255, 0.582); text-align: center; font-size: 12px;">Angry Birds List is
    for educational purposes. I do not own Angry Birds and all images belong to the rightful owners.</footer>
</body>

</html>