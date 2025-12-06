Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP07 @US20
	Scenario: US20 - Foros y comunidad
		Given que el usuario accede a la sección Comunidad/Foros
		When publica un comentario en un hilo
		Then otros usuarios pueden ver y responder al comentario