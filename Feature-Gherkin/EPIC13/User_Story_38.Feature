Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP13 @US38
	Scenario: US38 - Sistema de puntos y recompensas
		Given que el usuario completa una rutina y la marca como finalizada
		When el sistema contabiliza la finalización
		Then suma puntos a la cuenta del usuario y actualiza el total disponible
