Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP14 @US40
	Scenario: US40 - Chat en vivo con soporte técnico
		Given que el usuario inicia un chat de soporte en vivo
		When un agente o asistente virtual responde
		Then la conversación se mantiene activa hasta resolver el problema
