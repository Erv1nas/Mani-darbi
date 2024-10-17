function submitForm() {
    // Iegūst datus no pirmās web lapas
    const fname = document.getElementById("fname").value;
    const lname = document.getElementById("lname").value;
    const gender = document.getElementById("gender").value;
    const bday = document.getElementById("bday").value;
    const email = document.getElementById("email").value;
    
    // Store the values in session storage
    sessionStorage.setItem("fname", fname);
    sessionStorage.setItem("lname", lname);
    sessionStorage.setItem("gender", gender);
    sessionStorage.setItem("bday", bday);
    sessionStorage.setItem("email", email);
    
    // Pārnes ievadīto rezultātu uz jauno web lapu
    window.location.href = "result.html";
  }  