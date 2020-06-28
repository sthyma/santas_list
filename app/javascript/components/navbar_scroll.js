const navbarScroll = () => {
  const navbar = document.getElementById("logo");
  const santaTitle = document.querySelector("#logo h1");
  if (santaTitle) {
    window.addEventListener("scroll", (event) => {
      if (window.scrollY > 45) {
        navbar.classList.add("top-navbar-scroll");
        santaTitle.innerHTML = "";
      } else {
        navbar.classList.remove("top-navbar-scroll");
        santaTitle.innerHTML = "Santa's List";
      }
    });
  }
};

export { navbarScroll };