function addAnimationToInputs() {
  const inputs = document.querySelectorAll('input');
  const textareas = document.querySelectorAll('textarea');

  inputs.forEach((e) => {
    e.addEventListener('click', (e) => {
      if (e.target.value != "") {
        e.target.parentNode.classList.add('animation');
      } else if (e.target.value == "") {
        e.target.parentNode.classList.remove('animation');
      }
    });
  });

  textareas.forEach((e) => {
    e.addEventListener('click', (e) => {
      if (e.target.value != "") {
        e.target.parentNode.classList.add('animation');
      } else if (e.target.value == "") {
        e.target.parentNode.classList.remove('animation');
      }
    });
  });
}

document.addEventListener('turbolinks:load', function () {
  console.log('Page loaded with Turbolinks');
  addAnimationToInputs(); // Exécutez le code sur chaque chargement de page via Turbolinks
});
