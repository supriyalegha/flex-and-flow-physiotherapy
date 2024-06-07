<%-- 
    Document   : index
    Created on : 03-Apr-2024, 12:45:01 pm
    Author     : supriya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <!--font awesome cdn link -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--bootstrap link-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
     
    <!-- custom css file 
    <link href="WEB-INF/style.css" rel="stylesheet" type="text/css"/>-->
    <style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
:root{
    --blue:#00b8b8;
    --white:#fff;
    --black:#333;
    --light-color:#666;
    --light-bag:#eee;
    --border:.2rem solid rgba(0,0,0,.1);
    --box-shadow:0 .5rem 1rem rgba(0,0,0,.1);
}
*{
    font-family: "Poppins", sans-serif;
    margin: 0; padding: 0;
    box-sizing: border-box;
    outline: none; border: none;
    text-decoration: none !important;
    text-transform: capitalize;
}

*::-webkit-scrollbar{
    height: .5rem;
    width: 1rem;
}


*::-webkit-scrollbar-track{
    background-color: transparent;
}

*::-webkit-scrollbar-thumb{
    background-color: var(--blue);
}

html{
    font-size: 62.5%;
    overflow-x:hidden;
    scroll-behavior: smooth;
    scroll-padding-top: 6.5rem;
}

section{
    padding: 7rem 2rem;
}

.heading{
    text-align: center;
    font-size: 4rem;
    color: var(--black);
    text-transform: uppercase;
    font-weight: bolder;
    margin-bottom: 3rem;
}

.link-btn{
    display: inline-block;
    padding: 1rem 3rem;
    border-radius: 5rem;
    background-color: var(--blue);
    cursor: pointer;
    font-size: 1.7rem;
    color: var(--white);
}

.link-btn:hover{
  background-color: var(--black);
  color: var(--white);
}

.header {
    padding: 2rem;
    border-bottom: var(--border);
}

.header.active {
    background-color: var(--white);
    box-shadow: var(--box-shadow);
    border: 0;
}
#header.active{
    border:40px solid red;
}

.header .logo{
    font-size: 2rem;
    color: var(--black);
}

.header .logo span{
    color: var(--blue);
}

.header .nav a{
    margin:0 1rem;
    font-size: 1.7rem;
    color: var(--black);
}

.header .nav a:hover{
    color: var(--blue);
}

#menu-btn{
    font-size: 2.5rem;
    color: var(--black);
    cursor: pointer;
    display: none;
}

.home{
    background-image: url("img/homepage_img.jpg");
    background-repeat: no-repeat;
    height: 550px;
    width: auto;
    background-size: cover;
    background-position: center;
}

.home .content{
    width: 65rem;
    padding: 2rem;
}

.home .content h3{
    font-size: 4rem;
    text-transform: uppercase;
    color: var(--black);
}

.home .content p{
    line-height: 2;
    font-size: 1.5rem;
    color:var(--light-color);
    padding: 1rem 0;
}

.about .row{
    min-height: 50vh;
}

.about .content span{
    font-size: 2rem;
    color: var(--blue);
}

.about .content h3{
    font-size: 3rem;
    color: var(--black);
    margin-top: 1rem;
}

.about .content .p{
    padding: 1rem 0;
    font-size: 1.5rem;
    color: var(--light-color);
    line-height: 2;
}

.services{
    background-color:var(--light-bag);
}

.services .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(30rem,1fr));
    gap: 2rem;
}

.services .box-container .box{
    text-align: center;
    padding: 2rem;
    background-color: var(--white);
    box-shadow: var(--box-shadow);
    border-radius: .5rem;
}

.services .box-container .box h3{
    font-size: 2rem;
    padding: 1rem 0;
    color: var(--blue);
}

.services .box-container .box p{
    font-size: 1.5rem;
    color: var(--light-color);
    line-height: 2;
}

.reviews{
background-color: var(--light-bag);
}

.reviews .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(30rem,1fr));
    gap: 2rem;
}

.reviews .box-container .box{
    background-color: var(--white);
    text-align: center;
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    padding: 2rem;
}

.reviews .box-container .box img{
    height: 10rem;
    width: 10rem;
    border-radius: 50%;
}

.reviews .box-container .box p{
    padding: 2rem 0;
    line-height: 2;
    font-size: 1.5rem;
    color: var(--light-color);
    margin-bottom: 0;
}

.reviews .box-container .box .stars{
    padding: .5rem 1.5rem;
    border-radius: .5rem;
    background-color: var(--light-bag);
    margin-bottom: 2rem;
    display: inline-block;
}

.reviews .box-container .box .stars i{
    font-size: 1.5rem;
    color: var(--blue);
}

.reviews .box-container .box h3{
    font-size: 2rem;
    color: var(--black);
}

.reviews .box-container .box span{
    color: var(--light-color);
    font-size: 1.5rem;
}

.contact form{
    border-radius: .5rem;
    background-color: var(--light-bag);
    padding: 2rem;
    margin: 0 auto;
    max-width: 50rem;
}

.contact form .message{
    margin-bottom: 2rem;
    border-radius: .5rem;
    background-color: var(--blue);
    padding: 1.2rem 1rem;
    font-size: 1.7rem;
    color: var(--white);
    text-align: center;
}

.contact form .box{
    width: 100%;
    margin-top: 1rem;
    margin-bottom: 2rem;
    border-radius: .5rem;
    background-color: var(--white);
    padding: 1.2rem 1.4rem;
    font-size: 1.7rem;
    color: var(--black);
    text-transform:none;
}

.contact form span{
    font-size: 1.7rem;
    color: var(--black);
}

.footer{
    background-color: var(--light-bag);
}

.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(25rem,1fr));
    gap: 3rem;
}

.footer .box-container .box{
    text-align: center;
}

.footer .box-container .box i{
    height: 5rem;
    width: 5rem;
    border-radius: 50%;
    line-height: 5rem;
    font-size: 2rem;
    background-color: var(--blue);
    color: var(--white);
    margin-bottom: 1rem;
}

.footer .box-container .box h3{
    font-size: 2rem;
    margin: 2rem 0;
    color: var(--black);
}
.footer .box-container .box p{
    font-size: 1.5rem;
    color: var(--light-color);
    text-transform: none;
}

 .footer.credit{
 text-align: center;
 border-top: var(--border);
 padding-top: 2rem;
 margin-top: 2rem;
 font-size: 2rem;
 color: var(--light-color);
 padding-bottom: 2rem;
}

.footer .footer.credit span{
    color: var(--blue);
}




/* media queries */

@media(max-width:991px){
    html{
        font-size: 55%;
    }
    .header .link-btn{
        display: none;
    }

    section{
        padding: 5rem 2rem;
    }
}

@media(max-width:768px){

    section{
        padding: 3rem 1rem;
    } 

    #menu-btn{
        display:inline-block;
        transition: .2s linear;
    }

    #menu-btn.fa-times{
        transform: rotate(180deg);
    }
    .header .nav{
        position: absolute;
        top: 99%; 
        left:0; 
        right: 0;
        background-color: var(--white);
        border-top: var(--border);
        border-bottom: var(--border);
        padding: 1rem 0;
        text-align: center;
        flex-flow: column;
        clip-path: polygon(0 0,100% 0,100% 0 ,0 0);
        transition: .2s linear;
    }

    .header .nav.active{
        clip-path:polygon(0 0,100% 0,100% 100%,0 100%);
    }

    .header .nav a{
        margin: 1rem 0;
        font-size: 2rem;
    }

    .home{
     background-position: left;
    }

    .home .content{
        width:auto;
    }

    .home .content h3{
        font-size: 3rem;
    }

}

@media(max-width:450px){
    html{
        font-size: 50%;
    }
    .header .link-btn{
        display: none;
    }
    .home .content h3{
        font-size: 4rem;
    }

    .heading{
        font-size: 3rem;

    }
}

    </style>
</head>
    
<body class="body">
<!--header section start-->

<header class="header fixed-top" id="header" style="background-color: transparent;">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <a href="#home" class="logo">FLEX & FLOW <span>PHYSIOTHEARAPY</span></a>
            <nav class="nav">
              <a href="#home">home</a>
              <a href="#about">about</a>
              <a href="#services">services</a>
              <a href="#reviews">reviews</a>
              <a href="#contact">contact</a>
            </nav>
            <a href="#contact" class="link-btn">make appointment</a>
            
            <div id="menu-btn" class="fas fa-bars"></div>
    
        </div>
    </div>
</header>

<!--header section end-->

<!--home section starts-->

<section class="home" id="home">
    <div class="container">
        <div class="row min-vh-100 align-items-center">
            <div class="content text-center text-md-left">
               <h3>Your Journey to Better Health Begins Now</h3>
               <p>Welcome to our physiotherapy practice, where we're dedicated to enhancing your well-being and restoring your body's optimal function. </p>
               <a href="#contact" class="link-btn">make appointment</a>
            </div>
        </div>
     </div>
</section>

<!--home section ends-->

<!-- about section starts-->

<section class="about" id="about">
    <div class="container">
        <div class="row align-items-center">

            <div class=" col-md-6 image">
                <img src="img/treatment-1-1.png" class="w-100 mb-5 mb-md-0" alt="">
            </div>

            <div class="col-md-6 content">
                <span>about us</span>
                <h3>true healhcare for your family</h3>
                <p>At Flex & Flow, we believe in a holistic approach to healthcare, focusing on personalized treatment plans tailored to each individual's needs.With a team of experienced and compassionate physiotherapists, we strive to provide comprehensive care for a wide range of conditions, including sports injuries, chronic pain, post-surgical rehabilitation, and more. Our therapists are highly skilled in manual therapy techniques, exercise prescription, and therapeutic modalities to address your unique concerns and goals.
                  we prioritize patient education and empowerment, ensuring you understand your condition and treatment options every step of the way. We work collaboratively with you to develop realistic goals and strategies for achieving them, fostering a supportive environment for your recovery journey.
                </p>
                <a href="#contact" class="link-btn">make appointmet</a>
            </div>

        </div>
    </div>
</section>

<!--about section ends -->

<!--service section starts-->

<section class="services" id="services">

    <h1 class="heading">our services</h1>

    <div class="box-container contaier">

        <div class="box">
            <h3>Post-surgical rehabilitation</h3>
            <p>Supporting recovery and restoring function after surgical procedures.</p>
        </div>

        <div class="box">
            <h3>Injury rehabilitation</h3>
            <p>Assisting in recovering from injuries through targeted exercises and therapies.</p>
        </div>

        <div class="box">
            <h3>Mobility improvement</h3>
            <p>Helping individuals regain or enhance their ability to move freely and comfortably.</p>
        </div>

        <div class="box">
            <h3>Pain management</h3>
            <p> Providing techniques and strategies to alleviate pain, whether chronic or acute.</p>
        </div>

        <div class="box">
            <h3>Sports injury treatment</h3>
            <p>Specialized care for injuries sustained during sports or physical activities..</p>
        </div>

        <div class="box">
            <h3>Assessment And Diagnosis</h3>
            <p> Physiotherapists evaluate a patient’s physical condition, movement, and pain to diagnose underlying issues.</p>
        </div>

        <div class="box">
            <h3>Exercise programs</h3>
            <p>Designing customized exercise routines to address specific needs and goals.</p>
        </div>

        <div class="box">
            <h3>Ergonomic advice</h3>
            <p>Offering guidance on proper posture and movement to prevent discomfort or injury.</p>
        </div>

        <div class="box">
            <h3>Education on preventing injuries</h3>
            <p>Sharing information and techniques to reduce the risk of injury in everyday life or during physical activities.</p>
        </div>

    </div>
</section>

<!--service section ends -->

<!--reviews section starts-->

<section class="reviews" id="reviews">

<h1 class="heading">satisfied clients</h1>

<div class="box-container container">

    <div class="box">
        <img src="img/client_review1.jpeg" alt="">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quas quis explicabo labore dolores laboriosam quasi voluptatibus cumque consectetur odit minima quod assumenda consequatur, temporibus quaerat praesentium eius quidem laudantium.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>alexa deo</h3>
         <span>satisfied client</span>
    </div>

    <div class="box">
        <img src="img/client_review2.jpeg" alt="">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quas quis explicabo labore dolores laboriosam quasi voluptatibus cumque consectetur odit minima quod assumenda consequatur, temporibus quaerat praesentium eius quidem laudantium.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>alana pandey</h3>
         <span>satisfied client</span>
    </div>

    <div class="box">
        <img src="img/client_review3.jpeg" alt="">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quas quis explicabo labore dolores laboriosam quasi voluptatibus cumque consectetur odit minima quod assumenda consequatur, temporibus quaerat praesentium eius quidem laudantium.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>ivor jonas</h3>
         <span>satisfied client</span>
    </div>

    <div class="box">
        <img src="img/client_review4.jpeg" alt="">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quas quis explicabo labore dolores laboriosam quasi voluptatibus cumque consectetur odit minima quod assumenda consequatur, temporibus quaerat praesentium eius quidem laudantium.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>lucy alexdender</h3>
         <span>satisfied client</span>
    </div>
</div>

</section>

<!--reviews section ends-->

<!--contact section starts-->

<section class="contact" id="contact">

<h1 class="heading">make appointment</h1>

<form action="appForm" method="post">
    <span>your name:</span>
    <input type=" text" name="name" placeholder="enter your name" class="box" >
    <span>your email:</span>
    <input type="email" name="email" placeholder="enter your email" class="box" >
    <span>your number:</span>
    <input type="text" name="number" placeholder="enter your number" class="box" >
    <span>appointment date:</span>
    <input type="date" name="date"  class="box" >
    <input type="submit" value="make appointment" name="submit" class="link-btn">
</form>

</section>

<!--contact section ends-->

<!--footer section starts-->

<section class="footer" id="footer">

    <div class="box-container container">

        <div class="box">
            <i class="fas fa-phone"></i>
            <h3>phone number</h3>
            <p>+123-456-7890</p>
            <p>+111-222-3333</p>
        </div>

        <div class="box">
            <i class="fas fa-map-marker-alt"></i>
            <h3>our address</h3>
            <p>delhi,india-400104</p>
        </div>

        <div class="box">
            <i class="fas fa-clock"></i>
            <h3>opening hours</h3>
            <p>09:00am to 06:00pm</p>
        </div>

        <div class="box">
            <i class="fas fa-envelope"></i>
            <h3>email address</h3>
            <p>flexandflow@gmail.com</p>
            <p>supriyalegha@gmail.com</p>
        </div>

     </div>
<center>
     <div class="credit"> &copy; copyright @ <?php echo date('Y'); ?> by <span>supriya</span></div></center>
</section>
<!--footer section ends-->

<!-- custom js file-->
<script>
    let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.nav');
//let header = document.querySelector('#header');

menu.onclick = () => {
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
}



window.onscroll = function() {
    var header = document.getElementById('header');
    if (window.scrollY > 0) {
        header.style.backgroundColor = 'white';
    } else {
        header.style.backgroundColor = 'transparent';
    }
};


</script>
</body>
</html>
