
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.selection-form');

    // 1. Añadir un 'event listener' al evento submit del formulario
    form.addEventListener('submit', function(event) {
        // Prevenir el envío por defecto del formulario
        event.preventDefault(); 

        // Obtener el radio button seleccionado
        const selectedRadio = form.querySelector('input[name="account_type"]:checked');

        if (selectedRadio) {
            const userRole = selectedRadio.value;
            let targetURL = '';

            // =========================================================
            // LÓGICA MODIFICADA
            // El rol seleccionado se guarda como parámetro.
            // La URL de destino SIEMPRE es 'asistente-ia.html'
            // =========================================================
            
            // 1. Definir la URL de destino (siempre asistente-ia.html)
            targetURL = 'asistente-ia.html';
            
            // 2. Adjuntar el rol seleccionado como parámetro de URL (ej: asistente-ia.html?role=fit)
            // Esto es crucial para que la página siguiente sepa el tipo de usuario.
            targetURL = `${targetURL}?role=${userRole}`;


            // 3. Realizar la redirección
            if (targetURL) {
                console.log(`Redirigiendo a la pantalla de bienvenida/IA: ${targetURL}`);
                window.location.href = targetURL;
            } else {
                alert('Error en la redirección.');
            }
        } else {
            // Si el usuario presiona continuar sin seleccionar nada
            alert('Por favor, selecciona un tipo de cuenta para continuar.');
        }
    });

    // Opcional: Mejorar la selección visual al hacer clic en la tarjeta
    const optionCards = document.querySelectorAll('.option-card');
    optionCards.forEach(card => {
        card.addEventListener('click', () => {
            // Deseleccionar todas las tarjetas visualmente
            optionCards.forEach(c => c.classList.remove('selected'));
            // Seleccionar la tarjeta actual visualmente
            card.classList.add('selected');
            // Asegurarse de que el radio button esté marcado
            card.querySelector('input[type="radio"]').checked = true;
        });
    });
});