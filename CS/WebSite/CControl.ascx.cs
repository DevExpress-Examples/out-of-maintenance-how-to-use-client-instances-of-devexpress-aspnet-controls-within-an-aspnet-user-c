using System;

namespace DockPanels {
    public partial class CControl : System.Web.UI.UserControl {
        protected void Page_Load(Object sender, EventArgs e) {
            btnTime.ClientSideEvents.Click = String.Format("function() {{ {0}.SetText(GetCurrentTimeString()); }}", lblTime.ClientID);
        }
    }
}