Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP05 @US15
	Scenario: US15 - Asistente virtual (Chatbot)
		Given que el usuario escribe una consulta al chatbot
		When el chatbot procesa la pregunta
		Then ofrece una respuesta automática o deriva al soporte humano