Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP04 @US12
	Scenario: US12 - Seguimiento de clientes (entrenador)
		Given que el entrenador accede a su panel de control
		When selecciona un cliente concreto
		Then se muestran métricas detalladas del cliente