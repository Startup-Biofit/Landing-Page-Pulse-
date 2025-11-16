Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP06 @US18
	Scenario: US18 - Calificación de entrenadores
		Given que el usuario finaliza un servicio con un entrenador
		When deja una calificación y comentario
		Then el puntaje del entrenador se actualiza