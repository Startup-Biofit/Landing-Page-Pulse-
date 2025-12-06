Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP02 @US05
	Scenario: US05 - Recomendaciones automáticas de rutina
		Given que el usuario completa una rutina y el rendimiento se actualiza
		When la IA procesa el nuevo rendimiento
		Then la IA recomienda una nueva rutina semanal adaptada al progreso
