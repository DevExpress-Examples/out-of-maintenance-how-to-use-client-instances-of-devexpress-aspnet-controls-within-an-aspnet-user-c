<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CControl.ascx.cs" Inherits="DockPanels.CControl" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<table>
    <tr>
        <td>
            <dx:ASPxButton ID="btnTime" runat="server" Text="Update time" AutoPostBack="false"></dx:ASPxButton>
        </td>
        <td>
            <dx:ASPxLabel ID="lblTime" runat="server" EnableClientSideAPI="true"></dx:ASPxLabel>
            <script type="text/javascript">
                    <%=lblTime.ClientID%>.SetText(GetCurrentTimeString());
            </script>
        </td>
    </tr>
</table>