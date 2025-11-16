Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP10 @US30
	Scenario: US30 - Cancelación y renovación automática de suscripciones
		Given que el usuario accede a la configuración de suscripción
		When cambia el estado de renovación automática y guarda
		Then el sistema actualiza la preferencia y notifica la modificación
