Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP13 @US37
	Scenario: US37 - Ranking semanal de usuarios activos
		Given que el usuario accede al ranking semanal
		When la semana concluye y se calculan puntuaciones
		Then el sistema muestra la lista actualizada con posiciones y puntajes
