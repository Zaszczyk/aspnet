<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagePage.aspx.cs" Inherits="Projekt.Pages.UserManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        #delete_box_users {
            height: 49px;
            width: 599px;
        }

        #insert_box_users {
            height: 72px;
            width: 680px;
        }

        .newStyle2 {
            font-family: verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div id="all_page" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId WHERE [UserName] = @Username" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>"
                UpdateCommand="UPDATE [aspnet_Membership] SET [Password] = @Password, [Email] = @Email WHERE [UserId] = @UserId">
                <SelectParameters>
                    <asp:Parameter Name="Username" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId"></asp:SqlDataSource>

            <h4 align="left"><a href="javascript: history.go(-1)">Go Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </h4>
            <h2 align="center" class="newStyle2"><span class="newStyle1">User Management</span></h2>
            <h3 align="left">
                <div id="edit_own_data_users" runat="server" align="center">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="390px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="DetailsView1_PageIndexChanging" AllowPaging="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                    </asp:DetailsView>
                </div>
            </h3>
            <div id="admin_view_users" runat="server">
                <h3 align="left">
                    <asp:DataList align="left" ID="DataList1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource2" CaptionAlign="Top" HorizontalAlign="Center" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ShowFooter="False" GridLines="Vertical" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" ForeColor="Black">
                        <AlternatingItemStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle Font-Bold="True" Font-Underline="True" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Medium" BackColor="Black" ForeColor="White" />
                        <HeaderTemplate>
                            <tr>
                                <td>UserID</td>
                                <td>User Name</td>
                                <td>Password</td>
                                <td>Email</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "UserID") %> '>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "UserName") %> '>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Email") %>'> </asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Password") %> '> 
                                    </asp:Label>
                                </td>
                                <td></td>
                            </tr>
                        </ItemTemplate>
                        <SelectedItemStyle Font-Bold="True" BackColor="#000099" ForeColor="White" />
                    </asp:DataList>
                </h3>

                <div id="delete_box_users" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label1" runat="server">User Name</asp:Label>
                    <br />
                    <asp:Button ID="Button1" Text="DELETE" runat="server" OnClick="Delete_Click" />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                </div>
                <div id="insert_box_users" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label13" runat="server">Role Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="label10" runat="server">User Name</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label11" runat="server">Password</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label12" runat="server">E-mail</asp:Label>
                    <br />
                    <asp:Button ID="Button2" Text="INSERT" runat="server" OnClick="Insert_Click" />
                    <asp:TextBox ID="insert_role" runat="server"></asp:TextBox>
                    <asp:TextBox ID="insert_username" runat="server"></asp:TextBox>
                    <asp:TextBox ID="insert_password" runat="server"></asp:TextBox>
                    <asp:TextBox ID="insert_email" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <div id="update_box_users" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="label5" runat="server">User Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">Password</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label8" runat="server">E-mail</asp:Label>
                        <br />
                        <asp:Button ID="Button3" Text="UPDATE" runat="server" OnClick="Update_Click" />
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
                        </asp:DropDownList>
                        <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                        <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
                    </div>
                    <br />
                </div>

                <br />
                <br />
                <br />
            </div>
        </div>
        <div style='margin-bottom: 400px'>
            <asp:LoginName ID="LoginName1" runat="server" Visible="false" />
        </div>
    </form>
</body>
</html>
