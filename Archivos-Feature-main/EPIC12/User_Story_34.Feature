Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP12 @US34
	Scenario: US34 - Envío de resumen semanal de progreso por correo
		Given que el usuario cumple una semana de actividad
		When el sistema genera el informe semanal
		Then se envía automáticamente un correo con el resumen de progreso y recomendaciones
