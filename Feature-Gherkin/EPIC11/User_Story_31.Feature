Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP11 @US31
	Scenario: US31 - Generación automática de rutinas adaptativas (ML)
		Given que el usuario completa varias rutinas y registra métricas
		When la IA analiza las métricas acumuladas
		Then la plataforma ajusta automáticamente la dificultad y el tipo de ejercicios
