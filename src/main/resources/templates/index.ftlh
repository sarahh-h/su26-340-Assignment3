<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Angry Birds Character list</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" integrity="sha384-X38yfunGUhNzHpBaEBsWLO+A0HDYOQi8ufWDkZ0k9e0eXz/tH3II7uKZ9msv++Ls" crossorigin="anonymous">
    <!--Using Pure CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <!-- Using Bootstrap for CSS simplicity -->
</head>
  <body style="background-color: bisque; overflow: scroll;">
    <!--navigation bar-->
    <nav class="navbar" style="background-color: #288435; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" data-bs-theme="light">
      <div class="container-fluid">
    <a class="navbar-brand" style="font-size: 40px;" aria-disabled="true">
         Angry Birds List
        <img src="/redBird.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-bottom">
    </a>
        <li class="nav-item" style= "list-style-type:none; font-size: 28px;" >
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="about.html">About</a>
        </li>
        <li class="nav-item dropdown" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="details.html">Details</a>
        </li>
        <li class="nav-item" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="new-character-form.html">Add A Character</a>
        </li>     
     </div>  
    </nav>
    <br><br> <!--Search engine and filter portion-->
    <div class="for_form">
        <h1 style="text-align: center; color:saddlebrown; font-style: oblique; padding-bottom: 30px;">Explore the characters from the Angry Bird Universe!</h1>
        <form class="pure-form" style="padding-left: 480px;">
        <input class="pure-input-2-3" style="max-width: 850px;" type="text" placeholder="Search for Angry Bird" />
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
    <!--Red's card-->
  <div class="col">
    <div class="card border-warning mb-3 h-100">
      <img src="/redBird.png" class="card-img-top" alt="red bird from angry birds">
      <div class="card-body">
        <h5 class="card-title">Red <span class="badge rounded-pill text-bg-success">Birds</span> </h5>
        <p class="card-text">The lead character in the franchise. Leads the rest of the birds to defeat the pigs and get their eggs back.</p>
        <p class="card-text"><b><a href="details.html" style="color: #288435; ">Click here for more details</b></a></p>
      </div>
    </div>
  </div>
  <!--Chuck's card-->
  <div class="col">
    <div class="card border-warning mb-3 h-100">
      <img src="/chuck.png" class="card-img-top" alt="chuck also known as yellow bird">
      <div class="card-body">
        <h5 class="card-title">Chuck <span class="badge rounded-pill text-bg-success">Birds</span> </h5>
        <p class="card-text">One of the main bird characters. Known for his speed and works along side Red.</p>
        <p class="card-text"><b><a href="details.html" style="color: #288435; ">Click here for more details</b></a></p>
      </div>
    </div>
  </div>
  <!--King pig's card-->
  <div class="col">
    <div class="card border-warning mb-3 h-100">
      <img src="/kingPing.png" class="card-img-top" alt="King of the Pigs">
      <div class="card-body">
        <h5 class="card-title">King Pig <span class="badge rounded-pill text-bg-danger">Pigs</span> </h5>
        <p class="card-text">The king of the pigs. Always trying to eat the birds' eggs and uses his subjects as a mean to get them.</p>
        <p class="card-text"><b><a href="details.html" style="color: #288435; ">Click here for more details</b></a></p>
      </div>
    </div>
  </div>
  <!--Moustache Pig's card-->
  <div class="col">
    <div class="card border-warning mb-3 h-100">
      <img src="/moustachePig.png" class="card-img-top" alt="pig with moustache">
      <div class="card-body">
        <h5 class="card-title">Moustache Pig <span class="badge rounded-pill text-bg-danger">Pigs</span> </h5>
        <p class="card-text">The king's right-hand. Scheming alongside him and carrying out the mission to steal the bird's eggs.<br><br></p> <!--adding two break lines because for some reason this one will not align with the others-->
        <p class="card-text"><b><a href="details.html" style="color: #288435; ">Click here for more details</b></a></p>
      </div>
    </div>
  </div>
  <!--Eggs's card-->
  <div class="col">
    <div class="card border-warning mb-3 h-100">
      <img src="/eggs.png" class="card-img-top" alt="the eggs">
      <div class="card-body">
        <h5 class="card-title">The Eggs <span class="badge rounded-pill text-bg-dark">Eggs</span> </h5>
        <p class="card-text">The Eggs are what the pigs want desperately and what the birds defend intensely. They're the offspring of the birds.</p>
        <p class="card-text"><b><a href="details.html" style="color: #288435; ">Click here for more details</b></a></p>
      </div>
    </div>
  </div>
</div>
<br><br> <!--for space at the bottom of the page-->
  </div>
  <!--footer-->
  <footer style="background-color: rgba(255, 255, 255, 0.582); text-align: center; font-size: 12px;">Angry Birds List is for educational purposes. I do not own Angry Birds and all images belong to the rightful owners.</footer>
</body>
</html>