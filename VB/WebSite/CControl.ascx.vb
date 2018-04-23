Imports Microsoft.VisualBasic
Imports System

Namespace DockPanels
	Partial Public Class CControl
		Inherits System.Web.UI.UserControl
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			lblTime.Text = DateTime.Now.ToString("HH:mm:ss")
			btnTime.ClientSideEvents.Click = String.Format("function() {{ {0}.SetText(GetCurrentTimeString()); }}", lblTime.ClientID)
		End Sub
	End Class
End Namespace