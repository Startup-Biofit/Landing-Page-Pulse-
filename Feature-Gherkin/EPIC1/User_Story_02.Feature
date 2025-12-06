Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.

	@EP01 @US02
	Scenario: US02 - Registro de entrenadores
		Given que el entrenador completa su perfil profesional en el formulario de registro
		When envía el formulario con la información requerida
		Then la cuenta se crea y queda marcada como "verificación pendiente"