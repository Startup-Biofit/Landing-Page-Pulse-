Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.

	@EP01 @US03
	Scenario: US03 - Inicio de sesión con correo o red social
		Given que el usuario selecciona "Iniciar sesión"
		When elige iniciar sesión por correo o por una red social y provee credenciales válidas
		Then el sistema valida las credenciales y permite el acceso a la cuenta