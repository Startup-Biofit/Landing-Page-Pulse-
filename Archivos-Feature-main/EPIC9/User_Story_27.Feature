Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP09 @US27
	Scenario: US27 - Recuperación de contraseña mediante token seguro
		Given que el usuario selecciona "Recuperar contraseña"
		When el sistema valida su correo y genera un token temporal
		Then se envía un enlace temporal por correo que permite restablecer la contraseña de forma segura
