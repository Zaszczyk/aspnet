using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt.Pages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            Response.Redirect(Request.RawUrl);
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {

        }
    }
}