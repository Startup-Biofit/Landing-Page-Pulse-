Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.

	# EP01 - Registro y autenticación
	@EP01 @US01
	Scenario: US01 - Registro de usuarios Fit
		Given que el usuario accede al formulario de registro
		When ingresa sus datos personales válidos y envía el formulario
		Then el sistema crea una cuenta y redirige al usuario a la pantalla principal