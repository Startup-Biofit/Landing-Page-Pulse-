Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP03 @US08
	Scenario: US08 - Entrenamiento en entorno virtual
		Given que el usuario elige el modo VR para su entrenamiento
		When inicia la sesión de entrenamiento en VR
		Then se carga el entorno 3D y la aplicación guía paso a paso