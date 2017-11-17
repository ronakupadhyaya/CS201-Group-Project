<!DOCTYPE html>
<html>
<title>Intenship Display Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>
<% // here need to do ArrayList<Jobs> jobs = new %>
<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">Food</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-center w3-padding-16">List of Matched Internship </div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl08_LsVc87gL3Ks0mpWN10ZISaaUWPxPii9zFMz6HQDahXwRJsw" alt="Microsoft" style="width:100%">
      <h3>The Perfect Sandwich, A Real NYC Classic</h3>
      <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="data:image/png;base64,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" alt="Google" style="width:100%">
      <h3>Let Me Tell You About This Steak</h3>
      <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUAhZN-nwX4DsTDFWljKzxx2AOQ3vvZ4uMU2mYwLUtKJEXxhIZgw" alt="IBM" style="width:100%">
      <h3>Cherries, interrupted</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
      <p>What else?</p>
    </div>
    <div class="w3-quarter">
      <img src="/w3images/wine.jpg" alt="Pasta and Wine" style="width:100%">
      <h3>Once Again, Robust Wine and Vegetable Pasta</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="/w3images/popsicle.jpg" alt="Popsicle" style="width:100%">
      <h3>All I Need Is a Popsicle</h3>
      <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="/w3images/salmon.jpg" alt="Salmon" style="width:100%">
      <h3>Salmon For Your Skin</h3>
      <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="/w3images/sandwich.jpg" alt="Sandwich" style="width:100%">
      <h3>The Perfect Sandwich, A Real Classic</h3>
      <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
      <img src="/w3images/croissant.jpg" alt="Croissant" style="width:100%">
      <h3>Le French</h3>
      <p>Lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
  
  <hr id="about">

  <!-- About Section -->
  <div class="w3-container w3-padding-32 w3-center">  
    <h3>About Me, The Food Man</h3><br>
    <img src="/w3images/chef.jpg" alt="Me" class="w3-image" style="display:block;margin:auto" width="800" height="533">
    <div class="w3-padding-32">
      <h4><b>I am Who I Am!</b></h4>
      <h6><i>With Passion For Real, Good Food</i></h6>
      <p>Just me, myself and I, exploring the universe of unknownment. I have a heart of love and an interest of lorem ipsum and mauris neque quam blog. I want to share my world with you. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
    </div>
  </div>
  <hr>
  
  <!-- Footer -->
  <footer class="w3-row-padding w3-padding-32">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
  
    <div class="w3-third">
      <h3>BLOG POSTS</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Lorem</span><br>
          <span>Sed mattis nunc</span>
        </li>
        <li class="w3-padding-16">
          <img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Ipsum</span><br>
          <span>Praes tinci sed</span>
        </li> 
      </ul>
    </div>

    <div class="w3-third w3-serif">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dinner</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Salmon</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">France</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Drinks</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Flavors</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Cuisine</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Chicken</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dressing</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Fried</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Fish</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Duck</span>
      </p>
    </div>
  </footer>

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>

