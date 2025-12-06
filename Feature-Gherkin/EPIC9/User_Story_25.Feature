Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP09 @US25
	Scenario: US25 - Validación de datos de registro y autenticación
		Given que el usuario completa el formulario de registro
		When hace clic en "Crear cuenta"
		Then el sistema valida que todos los campos estén correctamente llenos y muestra un mensaje de registro exitoso