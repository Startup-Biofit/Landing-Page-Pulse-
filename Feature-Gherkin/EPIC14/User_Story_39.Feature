Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP14 @US39
	Scenario: US39 - Acceso a centro de ayuda y tutoriales
		Given que el usuario accede al "Centro de ayuda"
		When selecciona un tema o artículo
		Then el sistema muestra el contenido correspondiente con instrucciones claras
