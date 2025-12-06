Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP08 @US24
	Scenario: US24 - Configuración de notificaciones
		Given que el usuario abre la configuración de notificaciones
		When activa o desactiva tipos de alertas y guarda los cambios
		Then el sistema guarda las preferencias de notificación