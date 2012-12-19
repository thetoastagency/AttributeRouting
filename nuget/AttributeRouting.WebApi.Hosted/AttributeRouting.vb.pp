﻿Imports System.Web.Http.SelfHost
Imports AttributeRouting.Web.Http.SelfHost

Namespace $rootnamespace$
    Public Class AttributeRouting
	
		' Call this static method from a start up class in your applicaton (e.g.Program.cs)
		' Pass in the configuration you're using for your self-hosted Web API
		Public Shared Sub RegisterRoutes(config As HttpSelfHostConfiguration)
            
			' See http://attributerouting.net for full documentation.
			' To debug routes locally, you can log to Console.Out (or any other TextWriter) like so:
			'     config.Routes.Cast<HttpRoute>().LogTo(Console.Out);

			config.Routes.MapHttpAttributeRoutes()
		End Sub
    End Class
End Namespace