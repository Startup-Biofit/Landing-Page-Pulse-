Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP13 @US36
	Scenario: US36 - Participación en retos y desafíos entre usuarios
		Given que el usuario selecciona un reto disponible
		When se une al desafío
		Then la app muestra su progreso y ranking dentro del evento
