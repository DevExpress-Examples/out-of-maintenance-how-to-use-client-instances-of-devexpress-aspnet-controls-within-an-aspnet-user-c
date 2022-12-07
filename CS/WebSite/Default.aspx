<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DockPanels.Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<%@ Register Src="CControl.ascx" TagName="CControl" TagPrefix="uc1" %>
<%@ Register src="ECControl.ascx" tagname="ECControl" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function GetCurrentTimeString() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();

            minutes = checkTime(minutes);
            seconds = checkTime(seconds);
            return hours + ":" + minutes + ":" + seconds;
        }

        function checkTime(i) {
            return i < 10 ? "0" + i : i;
        }

        function beforeDock(s, e) {
            e.panel.SetHeaderText(e.zone.zoneUID);
        }

        function afterFloat(s, e) {
            var panel = e.panel;
            if (!panel.IsDocked()) {
                panel.Dock(null);
                panel.SetHeaderText("<b style=\"color:red\">zoneless</b>");
            }
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxDockManager ID="dockManager" runat="server">
                <ClientSideEvents BeforeDock="function(s, e) { beforeDock(s, e); }"
                    AfterFloat="function(s, e) { afterFloat(s, e); }" />
            </dx:ASPxDockManager>
            <dx:ASPxDockPanel ID="dckpnl1" runat="server" Height="80" Width="200" OwnerZoneUID="zone1" HeaderText="zone1">
                <ForbiddenZones>
                    <dx:ForbiddenZoneItem ZoneUID="zone3" />
                    <dx:ForbiddenZoneItem ZoneUID="zone4" />
                </ForbiddenZones>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                        <uc1:CControl ID="CControl1" runat="server" />
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxDockPanel>
            <dx:ASPxDockPanel ID="dckpnl2" runat="server" Height="80" Width="200" OwnerZoneUID="zone2" HeaderText="zone2">
                <ForbiddenZones>
                    <dx:ForbiddenZoneItem ZoneUID="zone3" />
                    <dx:ForbiddenZoneItem ZoneUID="zone4" />
                </ForbiddenZones>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                        <uc1:CControl ID="CControl2" runat="server" />
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxDockPanel>
            <dx:ASPxDockPanel ID="dckpnl3" runat="server" Height="80" Width="200" OwnerZoneUID="zone3" HeaderText="zone3">
                <ForbiddenZones>
                    <dx:ForbiddenZoneItem ZoneUID="zone1" />
                    <dx:ForbiddenZoneItem ZoneUID="zone2" />
                </ForbiddenZones>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                        <uc2:ECControl ID="ECControl1" runat="server" ClientInstanceName="control1"/>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxDockPanel>
            <dx:ASPxDockPanel ID="dckpnl4" runat="server" Height="80" Width="200" OwnerZoneUID="zone4" HeaderText="zone4">
                <ForbiddenZones>
                    <dx:ForbiddenZoneItem ZoneUID="zone1" />
                    <dx:ForbiddenZoneItem ZoneUID="zone2" />
                </ForbiddenZones>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                        <uc2:ECControl ID="ECControl2" runat="server" ClientInstanceName="control2"/>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxDockPanel>
            <table>
                <tr>
                    <td>
                        <dx:ASPxDockZone ID="zone1" ZoneUID="zone1" runat="server" Height="80" Width="200" AllowGrowing="false">
                            <Styles>
                                <DockingAllowedStyle BackColor="LightGreen" />
                                <DockingForbiddenStyle BackColor="IndianRed" />
                            </Styles>
                        </dx:ASPxDockZone>
                    </td>
                    <td>
                        <dx:ASPxDockZone ID="zone2" ZoneUID="zone2" runat="server" Height="80" Width="200" AllowGrowing="false">
                            <Styles>
                                <DockingAllowedStyle BackColor="LightGreen" />
                                <DockingForbiddenStyle BackColor="IndianRed" />
                            </Styles>
                        </dx:ASPxDockZone>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dx:ASPxDockZone ID="zone3" ZoneUID="zone3" runat="server" Height="80" Width="200" AllowGrowing="false">
                            <Styles>
                                <DockingAllowedStyle BackColor="LightGreen" />
                                <DockingForbiddenStyle BackColor="IndianRed" />
                            </Styles>
                        </dx:ASPxDockZone>
                    </td>
                    <td>
                        <dx:ASPxDockZone ID="zone4" ZoneUID="zone4" runat="server" Height="80" Width="200" AllowGrowing="false">
                            <Styles>
                                <DockingAllowedStyle BackColor="LightGreen" />
                                <DockingForbiddenStyle BackColor="IndianRed" />
                            </Styles>
                        </dx:ASPxDockZone>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
