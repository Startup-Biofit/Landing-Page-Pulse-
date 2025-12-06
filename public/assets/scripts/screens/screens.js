// ===================================================
// VARIABLES GLOBALES Y FUNCIÓN DE UTILIDAD
// ===================================================

const screens = [
'screen-sexo',
'screen-estatura',
'screen-peso',
'screen-actividad',
'screen-carga'
];

let currentScreenIndex = 0;

// Objeto para almacenar los datos recolectados del usuario
let userProfile = {};

/**
 * Función para obtener parámetros de la URL.
 * @param {string} name - Nombre del parámetro (ej: 'role').
 */
function getUrlParameter(name) {
    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
    var results = regex.exec(location.search);
    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
};

/**
 * Función para mostrar una pantalla y ocultar las demás.
 * @param {string} screenId - El ID de la pantalla a mostrar.
 */
function showScreen(screenId) {
    screens.forEach(id => {
        const screenElement = document.getElementById(id);
        if (screenElement) {
            // Usa 'block' para mostrar y 'none' para ocultar.
            screenElement.style.display = (id === screenId) ? 'block' : 'none'; 
        }
    });
}


// ===================================================
// LÓGICA DE MANEJO DE DATOS Y AVANCE
// ===================================================

/**
 * Simula guardar los datos de la pantalla actual en userProfile y avanza.
 */
function collectDataAndAdvance() {
    const currentScreenId = screens[currentScreenIndex];

    // 1. Recolectar Datos de la Pantalla Actual
    switch (currentScreenId) {
        case 'screen-sexo':
            // Recoge el valor de la tarjeta con 'active-green'
            userProfile.sexo = document.querySelector('.option-card.active-green h3').textContent.trim();
            break;

        case 'screen-estatura':
            const heightSlider = document.querySelector('#screen-estatura .slider');
            // Usamos el valor del slider y el data-unit, y lo formateamos
            const heightValue = parseFloat(heightSlider.value).toFixed(2);
            userProfile.estatura = heightValue + ' ' + heightSlider.getAttribute('data-unit');
            break;

        case 'screen-peso':
            const weightSlider = document.querySelector('#screen-peso .slider');
            // Usamos el valor del slider y el data-unit, y lo formateamos
            const weightValue = Math.round(weightSlider.value);
            userProfile.peso = weightValue + ' ' + weightSlider.getAttribute('data-unit');
            break;

        case 'screen-actividad':
            // Recoge el valor de la tarjeta con 'active-green-list'
            userProfile.actividad = document.querySelector('.list-option.active-green-list h4').textContent.trim();
            break;
    }

    // 2. Avanzar a la siguiente pantalla
    currentScreenIndex++;
    const nextScreenId = screens[currentScreenIndex];

    if (nextScreenId) {
        showScreen(nextScreenId);

        // Si es la pantalla de carga, simular un tiempo de procesamiento
        if (nextScreenId === 'screen-carga') {
            
            // Aumentamos el tiempo a 2 segundos para que la carga sea visible
            setTimeout(() => {
                console.log("✅ Plan generado. Perfil completo:", userProfile);
                
                // ========================================================
                // Lógica de Redirección según el Tipo de Usuario
                // ========================================================
                const tipoUsuario = userProfile.tipoUsuario;
                let urlRedireccion = '';

                if (tipoUsuario === 'deportista') {
                    // Mapeado desde 'fit' -> Redirigir al Asistente IA / Dashboard del Usuario Fit
                    urlRedireccion = 'dashboard_usuarioFit.html'; 
                } else if (tipoUsuario === 'nutricionista') {
                    // Mapeado desde 'trainer' -> Redirigir al Dashboard del Entrenador
                    urlRedireccion = 'dashboard_entrenador.html'; 
                } else {
                    console.error("Error: Tipo de usuario no definido para la redirección.");
                    // Si falla, redirige al inicio de sesión o a una página de error
                    urlRedireccion = 'iniciar-sesion.html'; 
                }
                
                // 3. Ejecutar la Redirección
                if (urlRedireccion) {
                    window.location.href = urlRedireccion;
                }
                // ========================================================

            }, 2000); // 2000ms de espera
        }
    }
}


// ===================================================
// INICIALIZACIÓN Y EVENT LISTENERS
// ===================================================

document.addEventListener('DOMContentLoaded', () => {
    // LÓGICA DE INICIALIZACIÓN: Obtener el rol de la página anterior (screens.html?role=...)
    const urlRole = getUrlParameter('role');

    // Mapear los valores de 'seleccion.html' a los valores internos de redirección
    if (urlRole === 'fit') {
        userProfile.tipoUsuario = 'deportista'; 
    } else if (urlRole === 'trainer') {
        userProfile.tipoUsuario = 'nutricionista';
    } else {
        // Establecer un valor por defecto si no se encuentra (para evitar errores)
        userProfile.tipoUsuario = 'unknown';
    }

    console.log("Rol de usuario cargado de la URL:", userProfile.tipoUsuario);

    // 1. Mostrar solo la primera pantalla al cargar (SOLUCIÓN al problema "pantalla negra")
    showScreen(screens[currentScreenIndex]);

    // 2. Asignar el evento a todos los botones "Continuar"
    const continueButtons = document.querySelectorAll('.btn-continue');
    continueButtons.forEach(button => {
        button.addEventListener('click', collectDataAndAdvance);
    });

    // 3. Lógica para actualizar el valor del slider en tiempo real
    const sliders = document.querySelectorAll('.slider');
    sliders.forEach(slider => {
        slider.addEventListener('input', function() {
            const valueDisplay = this.closest('.slider-box').querySelector('.value-display');
            if (valueDisplay) {
                const isHeight = this.closest('#screen-estatura') !== null;
                // Formatear la altura a dos decimales y el peso a entero
                valueDisplay.textContent = isHeight ? parseFloat(this.value).toFixed(2) : Math.round(this.value);
            }
        });
    });

    // 4. Lógica para la selección en las tarjetas (opciones)
    const selectionOptions = document.querySelectorAll('.option-card, .list-option');
    selectionOptions.forEach(option => {
        option.addEventListener('click', function() {
            const container = this.closest('.options-grid') || this.closest('.options-list');
            const activeClass = this.classList.contains('option-card') ? 'active-green' : 'active-green-list';
            const inactiveClass = 'inactive'; 

            // Desactivar todas las opciones en el mismo grupo
            container.querySelectorAll('.option-card, .list-option').forEach(item => {
                item.classList.remove('active-green', 'active-green-list');
                item.classList.add(inactiveClass);
            });

            // Activar la opción clicada
            this.classList.add(activeClass);
            this.classList.remove(inactiveClass);
        });
    });
});