<%@ Control Language="vb" AutoEventWireup="true" CodeBehind="ECControl.ascx.vb" Inherits="DockPanels.ECControl" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<table>
	<tr>
		<td>
			<dx:ASPxButton ID="btnTime" runat="server" Text="Update time" AutoPostBack="false"></dx:ASPxButton>
		</td>
		<td>
			<dx:ASPxLabel ID="lblTime" runat="server" EnableClientSideAPI="true"></dx:ASPxLabel>
		</td>
	</tr>
</table>