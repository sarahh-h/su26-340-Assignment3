<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Details</title>

<!--to have multiple text formattings in one <p>-->
    <style type="text/css">                         
    .StandardText {                             
        font-size: 20px;
        font-weight: lighter;
        font-family: Arial, Helvetica, sans-serif;
        color: black;
    }
    .MainTitle {
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
        text-align: justify; 
        font-size: 24px; 
        color: saddlebrown;
    }
    </style>
    
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
          <a class="nav-link active" aria-current="page" href="/posts/index">Home</a>
        </li>
        <li class="nav-item" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="/posts/about">About</a>
        </li>
        <li class="nav-item dropdown" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="/posts/chars{id}">Details</a>
        </li>
        <li class="nav-item" style= "list-style-type:none; font-size: 28px;">
          <a class="nav-link" href="/posts/new-character-form">Add A Character</a>
        </li>     
     </div>  
    </nav>
    <br><br>
    <!--main content for the page-->
    <div class="container text-center" style="margin-bottom: 367px;">
  <div class="row">
    <div class="col">
      <img src="">
    </div>
    <div class="col" style="background-color: cornsilk;">
      <p class="MainTitle">Name: <span class="StandardText">${character.name}</span></p>
      <p class="MainTitle">Other aliases: <span class="StandardText">${character.otherName}</span></p>
      <p class="MainTitle">Apperances in the universe: <span class="StandardText">${character.universe}</span></p>
      <p class="MainTitle">Backstory and personality:  <span class="StandardText">${character.description}</span></p>
      <p class="MainTitle">Tag: <span class="badge rounded-pill text-bg-success">${character.characterType}</span> </p>
    </div>
  </div>
  <br><br> <!--for space at the bottom of the page-->
  </div>
  <!--footer-->
  <footer style="background-color: rgba(255, 255, 255, 0.582); text-align: center; font-size: 12px;">Angry Birds List is for educational purposes. I do not own Angry Birds and all images belong to the rightful owners.</footer>
    </body>

</html>