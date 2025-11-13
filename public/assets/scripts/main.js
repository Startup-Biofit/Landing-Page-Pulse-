// Detectar si existe el botón para ir a entrenadores
const btnEntrenadores = document.getElementById('btn-entrenadores');
if (btnEntrenadores) {
  btnEntrenadores.addEventListener('click', () => {
    window.location.href = "index.html";
  });
}

// Detectar si existe el botón para volver a usuarios
const btnUsuarios = document.getElementById('btn-usuarios');
if (btnUsuarios) {
  btnUsuarios.addEventListener('click', () => {
    window.location.href = "index.html";
  });
}