Feature: Acceptance tests - Plataforma Fit
	En esta característica se incluyen los escenarios de aceptación para las historias de usuario
	definidas en el backlog de la aplicación Plataforma Fit.
	
    	@EP08 @US23
	Scenario: US23 - Edición de perfil
		Given que el usuario accede a su perfil
		When modifica sus datos personales y objetivos y guarda
		Then la información se actualiza correctamente