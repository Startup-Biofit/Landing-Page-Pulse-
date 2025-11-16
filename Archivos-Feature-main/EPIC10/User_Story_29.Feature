Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP10 @US29
	Scenario: US29 - Emisión automática de comprobantes electrónicos
		Given que el usuario completa un pago exitoso
		When la transacción se confirma en el sistema
		Then el sistema genera y envía un comprobante electrónico al correo del usuario
