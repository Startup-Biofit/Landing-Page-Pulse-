Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    @EP11 @US33
	Scenario: US33 - Exportación de reportes personalizados
		Given que el usuario o entrenador selecciona "Exportar reporte"
		When define el rango de fechas y solicita la exportación
		Then el sistema genera un archivo descargable (PDF/Excel) con las métricas solicitadas
