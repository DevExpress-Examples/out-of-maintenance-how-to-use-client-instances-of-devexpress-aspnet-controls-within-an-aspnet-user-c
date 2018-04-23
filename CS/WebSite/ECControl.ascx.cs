using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DockPanels {
    public partial class ECControl : System.Web.UI.UserControl {
        protected void Page_Load(Object sender, EventArgs e) {
            btnTime.ClientSideEvents.Click = String.Format("function() {{ {0}.SetText(GetCurrentTimeString()); }}", lblTime.ClientInstanceName);
        }

        public String ClientInstanceName {
            get {
                return lblTime.ClientInstanceName;
            }
            set {
                lblTime.ClientInstanceName = value;
            }
        }
    }
}