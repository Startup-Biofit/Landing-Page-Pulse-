Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP02 @US06
	Scenario: US06 - Recomendaciones alimenticias
		Given que el usuario ingresa su meta (ej. bajar peso, ganar masa)
		When el sistema procesa su perfil y metas
		Then se muestran recomendaciones nutricionales adecuadas