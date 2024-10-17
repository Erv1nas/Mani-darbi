function submitForm() {
    // Iegūst datus no pirmās web lapas
    const fname = document.getElementById("fname").value;
    const lname = document.getElementById("lname").value;
    const gender = document.getElementById("gender").value;
    const car = document.getElementById("car").value;
    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;
    
    // Store the values in session storage
    sessionStorage.setItem("fname", fname);
    sessionStorage.setItem("lname", lname);
    sessionStorage.setItem("gender", gender);
    sessionStorage.setItem("car", car);
    sessionStorage.setItem("email", email);
    sessionStorage.setItem("phone", phone);
    
    // Pārnes ievadīto rezultātu uz jauno web lapu
    window.location.href = "result.html";
  }  