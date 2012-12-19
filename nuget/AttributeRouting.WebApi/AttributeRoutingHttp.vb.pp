﻿Imports System.Web.Http
Imports AttributeRouting.Web.Http.WebHost

<assembly: WebActivator.PreApplicationStartMethod(GetType($rootnamespace$.App_Start.AttributeRoutingHttp), "Start")>

Namespace $rootnamespace$.App_Start
    Public Class AttributeRoutingHttp
		Public Shared Sub RegisterRoutes(routes As HttpRouteCollection)
            
			' See http://attributerouting.net for full documentation.
			' To debug routes locally using the built in ASP.NET development server, go to /routes.axd
            
            routes.MapHttpAttributeRoutes()
		End Sub

        Public Shared Sub Start()
		
			GlobalConfiguration.Configuration.MessageHandlers.Add(New BypassHttpRoutingDispatcherHandler())
            
			RegisterRoutes(GlobalConfiguration.Configuration.Routes)
        
		End Sub
    End Class
End Namespace