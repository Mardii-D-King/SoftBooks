<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
    <form id="form1" runat="server">

        <!--Navbar starts here-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
           <a class="navbar-brand" href="#">
                <img src="imgs/bookworm.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
                    SoftBooks
          </a>
                   <div class="collapse navbar-collapse" id="navbarNavDropdown"></div>
   
                    <ul class="navbar-nav navbar-right">
                      <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Contacts</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">About US</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Sign</a>
                      </li>
                      <li><a class="nav-link" href="#">|</a></li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Login</a>
                      </li>
                    </ul>
        </nav>
         <!--Navbar ends here-->


        <!--Carousel(Slideshow) starts here-->
        <div class="d-block w-50 h-50">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-wrap="true">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
  
            <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="imgs/poetry.jpg" alt="First slide">
                        <div class="carousel-caption">
                            <h5>Poetry Books</h5>
                            <p>Books for kids and adults that loves adventures</p>
                        </div>
                </div>

                <div class="carousel-item">       
                    <img src="imgs/story.jpg">
                        <div class="carousel-caption">
                            <h5>Story Books</h5>
                            <p>Books for kids and adults that loves adventures</p>
                        </div>
                  
                </div>

                <div class="carousel-item">
                      <img src="imgs/novels.jpg" alt="Third slide">
                        <div class="carousel-caption">
                            <h5>Novels</h5>
                            <p>Books for kids and adults that loves adventures</p>
                        </div>
                </div>
            </div>

  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            </div>

        <!--Carousel(Slideshow) ends here-->

    </form>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
