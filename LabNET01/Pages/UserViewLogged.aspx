<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserViewLogged.aspx.cs" Inherits="Projekt.Pages.UserViewLogged" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="user_logged" runat="server">
            <div>
                <h4><a href="javascript: history.go(-1)">Go Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </h4>
                <h4 align="right">&nbsp;</h4>
                <h2 align="center" class="auto-style1">Users</h2>
                <h4 align="center">User view</h4>

                <h5>
                    <div>
                        <table width="20%" align="center">
                            <tr>
                                <td align="center">
                                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
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
                                            <li style="background-color: #008A8C;color: #FFFFFF;">UserId:
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
                                            <li style="background-color: #DCDCDC;color: #000000;">UserId:
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
                                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                            </div>
                                        </LayoutTemplate>
                                        <SelectedItemTemplate>
                                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">UserId:
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
                </h5>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId WHERE [UserName] = @Username" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>"
                    UpdateCommand="UPDATE [aspnet_Membership] SET [Password] = @Password, [Email] = @Email WHERE [UserId] = @UserId">
                    <SelectParameters>
                        <asp:Parameter Name="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div>

                    <br />
                    <div id="update_emai_box" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label1" runat="server">E-mail</asp:Label>
                        <br />
                        &nbsp;&nbsp;<asp:Button ID="Button1" Text="UPDATE E-MAIL" runat="server" OnClick="Update_Email_Click" Height="26px" Width="149px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
                    </div>
                    <div id="update_password_box" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="label7" runat="server">Password</asp:Label>
                        <br />
                        <asp:Button ID="Button3" Text="UPDATE PASSWORD" runat="server" OnClick="Update_Password_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                    <br />
                    <div style='margin-left: 750px'>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:LoginName ID="LoginName1" runat="server" Visible="false" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
