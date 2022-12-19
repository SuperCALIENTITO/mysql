const navbar = document.getElementById("navbar");

navbar.addEventListener("mouseenter", function() {
  navbar.classList.add("show"); // Muestra la barra de navegación al pasar el ratón encima
});

navbar.addEventListener("mouseleave", function() {
  navbar.classList.remove("show"); // Oculta la barra de navegación al quitar el ratón de encima
});