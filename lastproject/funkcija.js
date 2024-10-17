var character = document.getElementById("character");
var block = document.getElementById("block");
var counter=0;
var isPaused = false;

function jump() {
    if (character.classList == "animate" || isPaused) {
        return;
    }
    character.classList.add("animate");
    setTimeout(function(){
        character.classList.remove("animate");
    },300);
}

function pauseGame() {
    var pauseButton = document.getElementById("pauseButton");
    if (isPaused) {
        isPaused = false;
        pauseButton.innerHTML = "Pauze";
        block.style.animationPlayState = "running";
    } else {
        isPaused = true;
        pauseButton.innerHTML = "Turpināt";
        block.style.animationPlayState = "paused";
    }
}

var checkDead = setInterval(function() {
    let characterTop = parseInt(window.getComputedStyle(character).getPropertyValue("top"));
    let blockLeft = parseInt(window.getComputedStyle(block).getPropertyValue("left"));
    if(blockLeft<20 && blockLeft>-20 && characterTop>=130){
        block.style.animation = "none";
        alert("Diemžēl, jūsu spēle ir beigusies :( Jūsu iegūtie punkti: "+Math.floor(counter/100));
        counter=0;
        block.style.animation = "block 1s infinite linear";
    }else{
        counter++;
        document.getElementById("scoreSpan").innerHTML = Math.floor(counter/100);
    }
}, 10);
//calculator
var password=document.getElementById("password");
function genPassword() {
    var chars = "0123456789abcdefghijklmnopqrstuvwxyz!@#$%^&*()ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var passwordLength = 12;
    var password = "";
    for (var i = 0; i <= passwordLength; i++) {
        var randomNumber = Math.floor(Math.random() * chars.length);
        password += chars.substring(randomNumber, randomNumber +1);
    }
    document.getElementById("password").value = password;

}
function copyPassword() {
var copyText = document.getElementById("password");
copyText.select();
copyText.setSelectionRange(0, 999);
document.execCommand("copy");
}
//slide show
  var slideIndex = 0;
  showSlides();

  function showSlides() {
    var i;
    var slides = document.getElementsByClassName("slides");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 1);
  }
