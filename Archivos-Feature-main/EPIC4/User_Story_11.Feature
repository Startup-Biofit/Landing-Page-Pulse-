Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP04 @US11
	Scenario: US11 - Visualización de progreso
		Given que el usuario accede a la sección "Mis estadísticas"
		When selecciona un periodo de tiempo para visualizar
		Then el sistema muestra su progreso mediante gráficos y reportes