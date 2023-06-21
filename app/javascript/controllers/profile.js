
function addAnimationToLogin() {
  const button = document.querySelector('#login');
  const menuAppear = document.querySelector('.profile-menu');

  button.addEventListener('click', () => {
    button.classList.toggle('fa-x');
    menuAppear.classList.toggle('active');
  });
}

document.addEventListener('turbolinks:load', function () {
  console.log('Page loaded with Turbolinks');
  addAnimationToLogin(); // Exécutez le code sur chaque chargement de page via Turbolinks
});
