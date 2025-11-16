Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP04 @US10
	Scenario: US10 - Registro de métricas del usuario
		Given que el usuario ingresa métricas como peso y tiempo de entrenamiento
		When guarda los cambios en su perfil
		Then se muestran gráficos comparativos que reflejan los datos guardados