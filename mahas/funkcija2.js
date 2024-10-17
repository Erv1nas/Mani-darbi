// Iegūstiet vērtības no iepriekšējās web lapas un izvadās jaunās web lapas tabulā
document.getElementById("fname").innerHTML = sessionStorage.getItem("fname");
document.getElementById("lname").innerHTML = sessionStorage.getItem("lname");
document.getElementById("gender").innerHTML = sessionStorage.getItem("gender");
document.getElementById("car").innerHTML = sessionStorage.getItem("car");
document.getElementById("email").innerHTML = sessionStorage.getItem("email");
document.getElementById("phone").innerHTML = sessionStorage.getItem("phone");

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}