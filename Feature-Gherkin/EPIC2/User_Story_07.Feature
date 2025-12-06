Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP02 @US07
	Scenario: US07 - Actualización automática de plan
		Given que el usuario registra métricas y rendimiento en sus entrenamientos
		When el sistema detecta progreso significativo
		Then la IA ajusta el nivel de dificultad del plan automáticamente