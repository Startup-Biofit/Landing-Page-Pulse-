Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP03 @US09
	Scenario: US09 - Clases guiadas con entrenador VR
		Given que el entrenador crea una sesión VR y la publica
		When el cliente se une a la sesión VR
		Then entrenador y cliente interactúan en el entorno virtual compartido