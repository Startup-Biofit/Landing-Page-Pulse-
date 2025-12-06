Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP05 @US13
	Scenario: US13 - Chat entre usuario y entrenador
		Given que el usuario abre el chat con su entrenador
		When envía un mensaje al entrenador
		Then el entrenador recibe una notificación del nuevo mensaje