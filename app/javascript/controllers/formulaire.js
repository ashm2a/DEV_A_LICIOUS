import Turbolinks from 'turbolinks';

function addAnimationToInputs() {
  const inputs = document.querySelectorAll('input');

  inputs.forEach((e) => {
    e.addEventListener('input', (e) => {
      if (e.target.value != "") {
        e.target.parentNode.classList.add('animation');
      } else if (e.target.value == "") {
        e.target.parentNode.classList.remove('animation');
      }
    });
  });
}

document.addEventListener('turbolinks:load', function () {
  addAnimationToInputs(); // Exécutez le code sur chaque chargement de page via Turbolinks
});
