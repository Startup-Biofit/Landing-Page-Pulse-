Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP06 @US17
	Scenario: US17 - Publicación de servicios
		Given que el entrenador completa el formulario de servicio con precio y horario
		When guarda el servicio
		Then el servicio aparece en el buscador para usuarios