Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP05 @US14
	Scenario: US14 - Notificaciones de seguimiento
		Given que el usuario tiene una rutina activa con horarios definidos
		When se acerca la hora programada para una rutina
		Then el usuario recibe una notificación recordatoria