Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP06 @US19
	Scenario: US19 - Evaluación del usuario por entrenador
		Given que el entrenador finaliza una sesión con un cliente
		When registra una evaluación en el sistema
		Then el usuario puede ver la evaluación en su perfil