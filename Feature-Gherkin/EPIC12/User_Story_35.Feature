Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP12 @US35
	Scenario: US35 - Encuestas de satisfacción post-rutina
		Given que el usuario completa una rutina
		When finaliza la sesión
		Then el sistema muestra una encuesta rápida para recopilar su nivel de satisfacción
