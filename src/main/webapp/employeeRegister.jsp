<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
 <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css"rel="stylesheet"/>

<title>Registration Form</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');

:root {
    --primary: #5352ed;
    --white-color: #ffffff;
    --light-color: #e6e6ed;
    --grey-color: #a4b0be;
    --dark-color: #2f3542;
}

* {
    margin: 0;
    padding: 0;
   
}

*, ::before, ::after {
    box-sizing: border-box;
}

a {
    text-decoration: none;
    color: inherit;
}
/* remove blue tap on mobile*/
a, button, input {
    -webkit-tap-highlight-color: transparent;
}

ul {
    list-style: none;
}

h1, h2 {
    font-weight: 600px;
    line-height: normal;
}

h1 {
    font-size: 3em;
}

h2 {
    font-size: 2em;
}
body{
    font-family: 'Poppins';
    font-size: 16px;
    font-weight: 500;
    line-height: 1.8;
    color: var(--dark-color);
    background-color: #aabcf1;
}
input::placeholder{
    font-family: 'Poppins';
    color: var(--grey-color);
}
.container{
    max-width: 1200px;
    width: 100%; 
    height: 200%;
     padding: 0 30PX;
    margin: 0 auto;
}
.site{
    height: 100vh;
    display: flex;
    justify-content: right;
    padding: 100px 0;
}
.theform {
    position: relative;
    padding: 60px 60px;
    border-radius: 30px;
    width: 1000px; /* Adjust width as needed */
    height: 550px; /* Or set a fixed height like 500px */
    display: flex; /* Corrected display property */
    flex-direction: column; /* Optional, depending on layout */
    box-shadow: rgb(149 157 165 / 20%) 0 8px 24px;
    margin-right: auto;
    margin-left: auto;
    background-color: var(--white-color); /* Optional for better visibility */
    overflow: hidden;
   
}

nav ul {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
   margin-right: 400px;
}
nav ul li:first-child a {
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    border-radius: 50%;
    border: 1px solid var(--light-color);
    transition: background-color .3s, color .3s;
}
nav ul li:first-child a:hover {
    background-color: var(--primary);
    color:var(--white-color);
    border: 0;
}
nav ul li:last-child{
    font-size: 12px;

}
nav ul li:last-child a {
 color: var(--primary);
 font-weight: 500;
}
nav ul li:last-child a:hover{
    text-decoration: underline;
}
.heading h2{
    font-size: 30px;
    margin-top: 30px;
}
.heading p,
form .action p{
    color:var(--grey-color);
    font-size: 10px;
}
form{
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 30px;
}
form > p{
    position: relative;
    height: 30px;
}
form p input{
    font-family: inherit;
    width: 50%;
    height: 50%;
    margin-left: 20px;
    outline: 0;
    padding: 0 10px;
    line-height: 20px;
    border-width: 0 0 1px;
    border-style: solid;
    border-color:var(--light-color);
}
form p:not(.socials) i{
    position: absolute;
    left: 0;
    top: 24px;
    line-height: 0;
    margin-top: -10px;
    color: var(--grey-color);
}
form p i.ri-eye-off-line{
    left: auto;
    right: 0;
    color:var(--dark-color);
    cursor: pointer;
    margin-right: 415px;
}
form .action{
    display: flex;
    align-items: center;
    flex-direction: column;
    gap: 10px;
    margin-top: 20px;
}
form .action label {
    width: 100%;
    position: relative;
    overflow: hidden;

}
form .action label input{
    width: 100%;
    background-color: var(--primary);
    color: var(--white-color);
    font-weight: 600;
    border: 0;
    border-radius: 25px;
    line-height: 46px;
    cursor: pointer;
}
form .action label i{
    position: absolute;
    top: 5px;
     right: 5px;
    width: 36px;
    height: 36px;
    padding: 10px;
    line-height: 1;
    border-radius: 50%;
    background-color: rgb(255 255 255 / 25%);
    color: var(--white-color);
    cursor: pointer;
    transform: translateX(50PX);
    visibility: hidden;
    transition: transform .3s, visibility .3s;
}

form .action label:hover i {
         transform: translateX(0);
         visibility: inherit;
}
form .action button{
    position: relative;
    width: 35px;
    height: 35px;
    margin: 0px;
    margin-right: 400px;
    margin-left: 240px;
    background-color: transparent;
    border: 1px solid var(--light-color);
    border-radius: 100%;
    font-size: 20px;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: background-color .3s, color .3s;
}

form .socials button:last-child{
    color: #db4437;
    

}
form .socials button:first-child:hover{
    background-color: #4267b2;
}

form .socials button:hover{
    color:var(--white-color);
    border: 0;
}
.signup{
    visibility: hidden;
    opacity: 0;
    height: 0;
}
.theform .play .wrapper{
    position: relative;
    width: 100%;
    height: 100%;
}
.theform .play .card{
    position: absolute;
    width: 350px;
    height: 500px;
    border-radius: 30px;

}
.play .card.one {
     background-color: #6675ff;;
    transform: rotate(710deg) translate3d(32%,3%,0) skewX(-15deg);
    
}
.play .card.one i{
    position: relative;
    width: 32px;
    height: 32px;
    margin: 0px;
    margin-top: 150px;
    margin-right: 400px;
    margin-left: 200px;
    background-color: transparent;
    border: 1px solid var(--white-color);
    border-radius: 100%;
    font-size: 20px;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: background-color .3s, color .3s; 
}
.play .card.one i:first-child{
    color: #3f07c2;
    background-color: #e6e6ed;
}
.play .card.one i1{
    position: relative;
    width: 32px;
    height: 32px;
    margin: 45px;
    margin-bottom:100px
    margin-right: 400px;
    margin-left: 250px;
    background-color: transparent;
    border: 1px solid var(--white-color);
    border-radius: 100%;
    font-size: 20px;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: background-color .3s, color .3s; 
}
.play .card.one i1:first-child{
    color: #3f07c2;
    background-color: #e6e6ed;
}
.play .card.two {
     background-color: #5599ff;
    transform: rotate(324deg) translate3d(-20%,70%,0) skewX(-1800deg);
}

.play .card.three {
    background-color: #79b1e788;
    transform: rotate(320deg) translate3d(-60%,90%,0) skewX(-2000deg) ;
}
.play .card.four {
    background-color: #abd0f388;
     transform: rotate(260deg) translate3d(70%,80%,0) skewX(-2000deg) ;
}
.play .card.five {
     background-color: #4242a9;
    transform: rotate(440deg) translate3d(-115%,-40%,0) skewX(-3415deg) ;
}

.play .card.six {
     background-color: #ffffff;
    transform: rotate(272deg) translate3d(-230%,100%,0) skewX(-0deg) ;
    height: 220px;
    width: 120px;
   
}
.play .card.seven {
     background-color: #ffffff;
    transform: rotate(362deg) translate3d(140%,20%,0) skewX(-0deg) ;
    height: 220px;
    width: 120px;
    font-size: 8px;
    text-align: center;
    
    
}
.play .card.seven i{
         position: relative;
    width: 32px;
    height: 32px;
    margin: 45px;
    margin-bottom:100px
    margin-right: 500px;
    margin-left: 0px;
    background-color: black;
    border: 1px solid var(--dark-color);
    border-radius: 100%;
    font-size: 20px;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: background-color .3s, color .3s; 
}



@media screen and (min-width:768px){
    .signup{
        padding: 0 19% 0 20%;
    }
    .theform .play{
        position: absolute;
        top: 0;
        bottom: 0;
        width: 50%;
        z-index: 1;
        transform: translateX(100%);
    }
}
@media screen and (min-width:992px) {
    form .action{
        flex-direction: row;
        justify-content: space-between;

    }
    form .action label{
        max-width: 180px;

    }
    
}
</style>
</head>
<body>
      <div id="page" class="site">
        <div class="container">
          <div class="theform">
            <div class="play">
              <div class="wrapper">
                <div class="card one"><i class="ri-facebook-fill"></i><i1 class="ri-instagram-fill"></i1></div>
                <div class="card two"></div>
                <div class="card three"></div>
                <div class="card four"></div>
                <div class="card five"></div>
                <div class="card six"></div>
                 <div class="card seven"><h1>hello</h1>
                                        <h2>176,18</h2><i class="ri-facebook-fill"></i></div>
              </div>
            </div>
            
            <div class="signup"></div>
              <nav>
                <ul>
                  <li><a href="#0" ><i class="ri-arrow-left-line"></i></a></li>
                  <li>Don't have an account?<a href="#0" >sign up</a></li>
                 
                </ul>
              </nav>
             <div class="heading">
              <h2>Registration </h2>
              <p> we secure your data privacy encrypted</p>
             </div>
             <form action="<%= request.getContextPath() %>/employeeDetails.jsp" method="post">

                <p>
                  <i class="ri-user-3-line"></i>
            <input type="text" name="firstName" placeholder="First Name" required />
            </p>
            <p>
               <i class="ri-user-3-line"></i>
            <input type="text" name="lastName" placeholder="Last Name" required />
            </p>
            <p>
               <i class="ri-mail-line"></i>
            <input type="text" name="username" placeholder="Email" required />
            </p>
            <p>
               <i class="ri-lock-line"></i>
                <i class="ri-eye-off-line"></i>
            <input type="password" name="password" placeholder="Password" required />
            </p>
            <p>
               <i class="ri-user-3-line"></i>
            <input type="text" name="address" placeholder="Address" />
            </p>
            <p>
               <i class="ri-user-3-line"></i>
            <input type="text" name="contact" placeholder="Contact No" />
            </p>
            
            <div class="action">
              <label>
                <input type="submit" value="submit" />
                 <i class="ri-arrow-right-line"></i>
              </label>
              <p>or</p>
            
            <p class="socials">
              
              <button>
                <i class="ri-google-line"></i>
              </button>
            </p>

            </div>
              </form>
              </div>
  </div>
  </div>
      
</body>
</html>