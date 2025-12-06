Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP02 @US04
	Scenario: US04 - Creación de plan personalizado con IA
		Given que el usuario completa el test inicial con su condición física y objetivos
		When el sistema analiza las respuestas del test
		Then el sistema genera automáticamente un plan de entrenamiento adaptado