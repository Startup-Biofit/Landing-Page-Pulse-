// script.js
// Espera a que el DOM esté listo antes de buscar el botón
document.addEventListener('DOMContentLoaded', function() {
	const cta = document.getElementById('ctaButton');
	if (!cta) return; // Si no existe el botón, evita errores

	cta.addEventListener('click', function() {
		window.location.href = 'https://www.pulseplus.com/registro'; // Redirige al formulario de registro
	});
});
