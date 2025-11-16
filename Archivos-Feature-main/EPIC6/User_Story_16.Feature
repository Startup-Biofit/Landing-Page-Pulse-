Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP06 @US16
	Scenario: US16 - Panel de control para entrenadores
		Given que el entrenador inicia sesión en su cuenta
		When accede al panel de control
		Then visualiza su lista de clientes activos y métricas clave