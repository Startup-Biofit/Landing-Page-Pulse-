Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP07 @US22
	Scenario: US22 - Recomendaciones de entrenadores destacados
		Given que el usuario realiza una búsqueda de entrenadores
		When el sistema aplica filtros y criterios de relevancia
		Then muestra perfiles destacados según puntuación y preferencias del usuario