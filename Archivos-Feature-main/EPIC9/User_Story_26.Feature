Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP09 @US26
	Scenario: US26 - Cierre de sesión y control de sesiones activas
		Given que el usuario selecciona "Cerrar sesión"
		When confirma la acción
		Then el sistema finaliza la sesión activa y redirige a la pantalla de inicio