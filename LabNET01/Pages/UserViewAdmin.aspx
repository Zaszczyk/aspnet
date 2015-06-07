<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserViewAdmin.aspx.cs" Inherits="Projekt.Pages.UserViewAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Verdana;
        }

        .auto-style1 {
            font-family: Verdana;
            color: #000099;
        }

        #insert_box_users {
            height: 79px;
            width: 1070px;
            margin-left: 0px;
        }

        #delete_box_users {
            height: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4 align="left"><a href="javascript: history.go(-1)">Go Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
            </h4>
            <h4 align="left">&nbsp;</h4>
            <h2 align="center" class="auto-style1">Users</h2>
            <h4 align="center">Admin View</h4>

            <h6>
                <div>
                    <table width="20%" align="center">
                        <tr>
                            <td align="center">
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                                    <AlternatingItemTemplate>
                                        <li style="background-color: #FFF8DC;">UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                                            <br />
                                            UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                            <br />
                                            Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                                            <br />
                                            Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="background-color: #008A8C; color: #FFFFFF;">UserId:
                    <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                                            <br />
                                            UserName:
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                            <br />
                                            Password:
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                                            <br />
                                            Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">UserId:
                    <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                                            <br />
                                            UserName:
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                            <br />
                                            Password:
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                                            <br />
                                            Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="background-color: #DCDCDC; color: #000000;">UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                                            <br />
                                            UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                            <br />
                                            Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                                            <br />
                                            Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                                            <br />
                                            UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                            <br />
                                            Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                                            <br />
                                            Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </td>
                        </tr>
                    </table>
                </div>
            </h6>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId"></asp:SqlDataSource>
            <div align="left" id="delete_box_users" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label1" runat="server">User Name</asp:Label>
                <br />
                <asp:Button ID="Button1" Text="DELETE" runat="server" OnClick="Delete_Click" Width="74px" />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" Height="16px">
                </asp:DropDownList>
                <br />
                <div id="insert_box_users" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label13" runat="server">Role Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp<asp:Label ID="label10" runat="server">User Name</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label11" runat="server">Password</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="label12" runat="server">E-mail</asp:Label>
                    <br />
                    <asp:Button ID="Button2" Text="INSERT" runat="server" OnClick="Insert_Click" />
                    <asp:TextBox ID="insert_role" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="insert_role"
                        ErrorMessage="Role is a required field."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="insert_username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="insert_username"
                        ErrorMessage="Username is a required field."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="insert_password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="insert_password"
                        ErrorMessage="Password is a required field."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:TextBox ID="insert_email" runat="server" OnTextChanged="insert_email_TextChanged" Width="126px">
                      
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="insert_email"
                        ErrorMessage="Email is a required field."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>






                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
            <div>

                <div id="update_box_users" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label5" runat="server">User Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">Password</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label8" runat="server">E-mail</asp:Label>
                    <br />
                    <asp:Button ID="Button3" Text="UPDATE" runat="server" OnClick="Update_Click" />
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName">
                    </asp:DropDownList>
                    <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="insert_username"
                        ErrorMessage="New password is required."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="insert_username"
                        ErrorMessage="New email is required."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>

                <br />
                <br />
                <div style='margin-left: 600px'>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
