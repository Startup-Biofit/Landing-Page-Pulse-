Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP10 @US28
	Scenario: US28 - Procesamiento seguro de pagos para planes premium
		Given que el usuario selecciona un plan premium
		When ingresa los datos de pago y confirma la transacción
		Then el sistema procesa la transacción y muestra confirmación de pago exitoso
