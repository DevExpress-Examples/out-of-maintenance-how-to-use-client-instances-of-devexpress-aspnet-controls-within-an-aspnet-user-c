Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace DockPanels
	Partial Public Class ECControl
		Inherits System.Web.UI.UserControl
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			lblTime.Text = DateTime.Now.ToString("HH:mm:ss")
			btnTime.ClientSideEvents.Click = String.Format("function() {{ {0}.SetText(GetCurrentTimeString()); }}", lblTime.ClientInstanceName)
		End Sub

		Public Property ClientInstanceName() As String
			Get
				Return lblTime.ClientInstanceName
			End Get
			Set(ByVal value As String)
				lblTime.ClientInstanceName = value
			End Set
		End Property
	End Class
End Namespace