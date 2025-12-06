Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP11 @US32
	Scenario: US32 - Integración con dispositivos inteligentes
		Given que el usuario vincula su smartwatch u otro dispositivo de salud
		When la conexión se establece correctamente
		Then los datos de actividad física se sincronizan y actualizan en el perfil
