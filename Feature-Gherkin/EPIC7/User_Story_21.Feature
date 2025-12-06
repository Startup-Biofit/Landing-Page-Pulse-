Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP07 @US21
	Scenario: US21 - Recompensas por constancia
		Given que el usuario completa rutinas de forma consecutiva
		When alcanza un logro definido por el sistema
		Then recibe una insignia digital y/o puntos asignados
