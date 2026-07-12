<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add new character</title>
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
        <img src="redBird.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-bottom">
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
    <br><br>
    <!--option to submit form-->
    <div class="container" style="background-color: rgba(255, 255, 255, 0.3); margin-bottom: 283px;">
        <p style="font-size: 30px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: saddlebrown; text-align: center;"><i>Got a character we don't have? Add it!</i></p>
        <p class="card-text" style="text-align: center;">Complete the form below to add a character to the Angry Birds List (* indicates required field)</p>
        <form class="pure-form pure-form-aligned">
            <fieldset>
        <div class="pure-control-group">
            <label for="aligned-name">Name of character</label> <!--for name of character-->
            <input class="pure-input-2-3 aligned-name" type="text" placeholder="Name" required=""/>
            <span class="pure-form-message-inline">*</span> <!--to indicate required field-->
        </div>
        <div class="pure-control-group">        <!--for type of character-->
            <label for="type">Type of Character</label>
                    <select style="width: 160px; height: auto;" required="">
                      <option value="">-- Select one --</option>
                      <option value="Birds">Birds</option>
                      <option value="Pigs">Pigs</option>
                      <option value="Eggs">Eggs</option>
                      <option value="Other">Other</option>
                    </select>
            <span class="pure-form-message-inline">*</span>
        </div>
        <div class="pure-control-group">        <!--for image url-->
            <label for="imageurl">Image URL</label>
            <input class="pure-input-2-3 aligned-name" type="text" placeholder="https://example.com" required=""/>
            <span class="pure-form-message-inline">*</span>
        </div>
        <div class="pure-control-group">    <!--for short description-->
            <label for="description">Short Description</label>
            <textarea name="Enter something here..." cols="35" rows="5" required=""></textarea>
            <span class="pure-form-message-inline">*</span>
        </div>
        <!--Submit button to submit the form, redirects to index.html-->
        <a href="index.html" class="btn btn-success" style="margin-left: 600px;">Submit</a>
    </fieldset>
</form>
</div>

<br><br>
 <!--footer-->
  <footer style="background-color: rgba(255, 255, 255, 0.582); text-align: center; font-size: 12px;">Angry Birds List is for educational purposes. I do not own Angry Birds and all images belong to the rightful owners.</footer>  
</body>
   </html>