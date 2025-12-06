document.addEventListener('DOMContentLoaded', () => {
    // Selecciona todos los elementos de ejercicio interactivos
    const interactiveItems = document.querySelectorAll('.exercise-item.interactive');

    interactiveItems.forEach(item => {
        // Obtenemos la línea principal que actuará como botón de clic
        const mainLine = item.querySelector('.exercise-main-line');
        
        // Agregamos el listener de clic a la línea principal (para no afectar los botones internos)
        mainLine.addEventListener('click', (event) => {
            // Prevenir que el clic en botones internos también active el acordeón
            if (event.target.closest('.log-set-button') || event.target.closest('.video-link')) {
                return; 
            }
            
            // Toggle (alternar) la clase 'active' en el item
            item.classList.toggle('active');
        });
    });
});