﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt.Pages
{
    public partial class UserViewAdmin : System.Web.UI.Page
    {
        protected void Delete_Click(object sender, EventArgs e)
        {
            Membership.DeleteUser(DropDownList1.SelectedItem.Value, true);
            Response.Redirect(Request.RawUrl);
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            Membership.CreateUser(insert_username.Text, insert_password.Text, insert_email.Text);
            Response.Redirect(Request.RawUrl);
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            MembershipUser mem = Membership.GetUser(DropDownList2.SelectedItem.Value);
            Roles.AddUserToRole(mem.UserName, insert_role.Text);
            mem.Email = update_email.Text;
            mem.ChangePassword(mem.ResetPassword(), update_password.Text);
            Membership.UpdateUser(mem);
            Response.Redirect(Request.RawUrl);
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void insert_email_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}