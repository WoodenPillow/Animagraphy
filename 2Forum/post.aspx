<%@ Page Language="C#" AutoEventWireup="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="title" content="Animagraphy's Forum">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="robots" content="index, nofollow">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="language" content="English">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/editor.css" rel="stylesheet" type="text/css">
    <!-- <link href="css/animate.css" rel="stylesheet" type="text/css"> -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"> </head>
    <link href="css/responsive.css" rel="stylesheet" type="text/css"> </head>

<body>
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="navbar-menu-left-side239">
                        <ul>
                            <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i>Contact</a></li>
                            <li><a href="#"><i class="fa fa-headphones" aria-hidden="true"></i>Support</a></li>
                            <li><a href="logIn.html"><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="navbar-serch-right-side">
                        <form class="navbar-form" role="search">
                            <div class="input-group add-on">
                                <input class="form-control form-control222" placeholder="Search" name="srch-term" id="srch-term" type="text">
                                <div class="input-group-btn">
                                    <button class="btn btn-default btn-default2913" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
               
                </div>
            </div>
        </div>
    </div>
    <div class="top-menu-bottom932">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="#"><img src="image/logo.png" alt="Logo"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav"> </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="ask_question.html">Forum</a></li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Question Category<span class="caret"></span></a>
                            <ul class="dropdown-menu animated zoomIn">
                                <li><a href="post.aspx">Animal Fun Facts</a></li>
                                <li><a href="forum.aspx">Wildlife Conservation</a></li>
                                <li><a href="forum.aspx">Animal Rescue and Rehabilitation</a></li>
                                <li><a href="forum.aspx">Endangered Species Awareness</a></li>
                                <li><a href="forum.aspx">Eco-Friendly Pet Care</a></li>
                            </ul>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Page <span class="caret"></span></a>
                            <ul class="dropdown-menu animated zoomIn">
                                <li><a href="forum.aspx"> 

                                    </a></li>
                                <li><a href="post.aspx"> Post-Questions </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
    <section class="header-descriptin329">
        <div class="container">
            <h3>Forum</h3>
            <ol class="breadcrumb breadcrumb839">
                <li><a href="#">Home</a></li>
                <li class="active">Start your post</li>
            </ol>
        </div>
    </section>
    <section class="main-content920">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                <div class="ask-question-input-part032">
                      <h4>Start your post</h4>
                 <hr>
                    <form>
                    <div class="username-part940">
                        <span class="form-description43">Username* </span><input type="text" name="fname" class="username029" placeholder="Enter your Name">  
 </div>
 <div class="email-part320">
     <span class="form-description442">E-Mail* </span><input type="text" name="fname" class="email30" placeholder="Enter Your Email">  
                        </div>
                        <div class="question-title39">
                            <span class="form-description433">Question-Title* </span><input type="text" name="fname" class="question-ttile32" placeholder="Write Your Question Title">
                        </div>
                        
    <div class="categori49">
        <span class="form-description43305">Category* </span>
        <label>
<input list="browsers" name="myBrowser" class="list-category53"/></label>
<datalist id="browsers">
  <option value="Wildlife Conservation">Wildlife Conservation</option>
  <option value="Animal Rescue and Rehabilitation">Animal Rescue and Rehabilitation</option>
  <option value="Endangered Species Awareness">Endangered Species Awareness</option>
  <option value="Eco-Friendly Pet Care">Eco-Friendly Pet Care</option>
  <option value="Veteranian">Veteranian</option>

</datalist>
    </div>
    <div class="button-group-addfile3239">
        <span class="form-description23993">Attachment*</span><input type="file" name="ffile" class="question-ttile3226">
        
    </div>
       <div class="details2-239">
        <div class="col-md-12 nopadding">
            <textarea id="txtEditor"></textarea> 
        </div>
                        </div>	
                     
</form>
                 <div class="publish-button2389">
                    <button type="button" class="publis1291">Publish your Question</button>
                </div>
               
                </div>
             
              
                </div>           
<!--           start col-md-3 (side bar)-->
           <aside class="col-md-3 sidebar97239">
             <div class="status-part3821">
            <h4>Forum's Stats</h4>
                
                 <a href="#"><i class="fa fa-question-circle" aria-hidden="true"> Question(8)</i></a>
                 <i class="fa fa-comment" aria-hidden="true"> Answers(35)</i>
             </div>  
             <div class="categori-part329">
                 <h4>Category</h4>
                 <ul>
                     <li><a href="#">Wildlife Conservation</a></li>
                     <li><a href="#">Animal Rescue and Rehabilitation</a></li>
                     <li><a href="#">Endangered Species Awareness</a></li>
                     <li><a href="#">Eco-Friendly Pet Care</a></li>
                 </ul>
             </div>
              
<!--              login part-->
              <div class="login-part2389">
                  <h4>Login</h4>
                  <div class="input-group300">
                  <span><i class="fa fa-user" aria-hidden="true"></i></span>
                  <input type="text" class="namein309" placeholder="Username">
                  </div>
                      <div class="input-group300">
                  <span><i class="fa fa-lock" aria-hidden="true"></i></span>
                  <input type="password" class="passin309" placeholder="Password">
                  </div>
                  <a href="#"><button type="button" class="userlogin320">Log In</button></a>
                  <div class="rememberme">
								<label><input type="checkbox" checked="checked"> Remember Me</label>
								<a href="#" class="resbutton3892">Register</a>
							</div>
              </div>
<!--              highest part-->
              <div class="highest-part302">
                <h4>Highest Points</h4>  
                <div class="pints-wrapper">
                 <div class="left-user3898">
                     <a href="#"><img src="image/images.png" alt="Image"></a>
                     <div class="imag-overlay39">
                         <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                     </div>
                 </div>
                 <span class="points-details938">
                     <a href="#"><h5>Yap Ming Shen</h5></a>
                <a href="#" class="designetion439">Platinum member</a>
                     <p>207 points</p>
                 </span>
                 
                  </div>
                  <hr>
                           <div class="pints-wrapper">
                 <div class="left-user3898">
                     <a href="#"><img src="image/images.png" alt="Image"></a>
                     <div class="imag-overlay39">
                         <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                     </div>
                 </div>
                 <span class="points-details938">
                     <a href="#"><h5>Yap Ming Shen</h5></a>
                <a href="#" class="designetion439">Strategist</a>
                     <p>206 points</p>
                 </span>
                 
                  </div>
                  <hr>
                           <div class="pints-wrapper">
                 <div class="left-user3898">
                     <a href="#"><img src="image/images.png" alt="Image"></a>
                     <div class="imag-overlay39">
                         <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                     </div>
                 </div>
                 <span class="points-details938">
                     <a href="#"><h5>Yap Ming Shen</h5></a>
                <a href="#" class="designetion439">Senior</a>
                     <p>205 points</p>
                 </span>
                 
                  </div>
                  <hr>
                  <div class="pints-wrapper">
                 <div class="left-user3898">
                     <a href="#"><img src="image/images.png" alt="Image"></a>
                     <div class="imag-overlay39">
                         <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                     </div>
                 </div>
                 <span class="points-details938">
                     <a href="#"><h5>Yap Ming Shen</h5></a>
                <a href="#" class="designetion439">Basic Member</a>
                     <p>204 points</p>
                 </span>
                 
                  </div>
                  <hr>
                  <div class="pints-wrapper">
                 <div class="left-user3898">
                     <a href="#"><img src="image/images.png" alt="Image"></a>
                     <div class="imag-overlay39">
                         <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                     </div>
                 </div>
                 <span class="points-details938">
                     <a href="#"><h5>Yap Ming Shen</h5></a>
                <a href="#" class="designetion439">Newcomer</a>
                     <p>203 points</p>
                 </span>
                 
                  </div>
                  
              </div>
<!--               end of Highest points -->
<!--          start tags part-->
<div class="tags-part2398">
    <h4>Tags</h4>
    <ul>
        <li><a href="#">Endangered Species</a></li>
        <li><a href="#">Famous Animals in History</a></li>
        <li><a href="#">Easy Wildlife Gardening</a></li>
        <li><a href="#">Animal Fun Facts</a></li>
        <li><a href="#">Guide to Local Wildlife</a></li>
        <li><a href="#">Understanding Animal Behavior</a></li>
        <li><a href="#">How to Help Endangered Species</a></li>
        <li><a href="#">Animals and Their Habitats</a></li>
        <li><a href="#">Nature Walks and Animal Spotting</a></li>
        
    </ul>
    
    
</div>
<!--          End tags part-->
<!--        start recent post  -->
<div class="recent-post3290">
    <h4>Recent Post</h4>
        <div class="post-details021">
            <a href="#"><h5>Discovering the Secret Lives of Urban Wildlife</h5></a>
            <p>Exploring how city-dwelling animals adapt to urban environments and what we can learn from them.</p>
            <small style="color: #848991">February 14, 2024</small>
        </div>
        <hr>
        <div class="post-details021">
            <a href="#"><h5>The Importance of Bees in Our Ecosystem</h5></a>
            <p>Understanding the crucial role bees play in pollination and how we can support their populations.</p>
            <small style="color: #848991">April 26, 2023</small>
        </div>
        <hr>
        <div class="post-details021">
            <a href="#"><h5>How to Create a Wildlife-Friendly Backyard</h5></a>
            <p>Simple steps to make your garden a haven for local wildlife, from bird feeders to native plants.</p>
            <small style="color: #848991">March 5, 2023</small>
    </div>

    
    
</div>
<!--       end recent post    -->
          
           </aside>
            </div>
        </div>
    </section>
    
<!--    footer -->
   <div class="footer-search">
     <div class="container">
	<div class="row">
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                               <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                <input type="text" class="  search-query form-control user-control30" placeholder="Search here...." />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
	</div>
</div>
   </div>
    
    <section class="footer-part">
        <div class="container">
            <div class="row">
                
                <div class="col-md-3">
                  <div class="info-part-one320">
                   <h4>Who We Are ?</h4>
                    <p>3 Degree Students striving for animals' future</p>
                    <h4>Slogan :</h4>
                    <p>For Human by Animals</p>
                    <h4>Support :</h4>
                    <p>Support Telephone No : (+60)109055328</p>
                    <p>Support Email Account : vincentyap2k@gmail.com</p>
                    </div>
                </div>
                   <div class="col-md-3">
                  <div class="info-part-two320">
              <h4>Quick Links</h4>
                   <a href="#"><p>-Home</p></a>
                     <a href="#"><p>-Question</p></a>
                     <a href="#"><p>-Animagraphy's Forum</p></a>
                    </div>
                </div>
                   <div class="col-md-3">
                  <div class="info-part-three320">
                   <h4>Popular Questions</h4>
                  <div class="news-info209">
                  
                   <h5>The Rediscovery of the Tasmanian Tiger</h5>
                    <p>Scientists in Australia have reported sightings of the Tasmanian Tiger, thought to be extinct since 1936. New drone footage in Tasmania's remote wilderness suggests a small population has survived undetected.</p>
                    <small>February 13, 2024</small>
                      </div>
                       <div class="news-info209">
                <h5>Breakthrough in Coral Reef Restoration</h5>
                    <p>Researchers in the Great Barrier Reef have developed a coral planting technique that accelerates growth by 50%. </p>
                    <small>December 11, 2023</small>
                      </div>
                        <div class="news-info209">
                <h5>Elephants' New Communication Method Discovered</h5>
                    <p>Scientists have discovered that elephants use infrasonic sound waves to communicate over long distances.</p>
                    <small>July 16, 2023</small>
                      </div>
                    
                    </div>
                </div>
      
            </div>
        </div>
    </section>
<section class="footer-social">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>Copyright 2024 Animagraphy | <strong>Animagraphy Group 19</strong></p>
            </div>
        </div>
    </div>
</section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
      <script src="js/editor.js"></script>
   	<script>
			$(document).ready(function() {
				$("#txtEditor").Editor();
			});
		</script>
  
</body>

</html>