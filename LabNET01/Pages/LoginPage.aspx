<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Projekt.Pages.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
                        <br /> <br /> <br /> <br />
                        <div align="center">
                            <h3>Logowanie</h3>
                            <asp:Login ID="Login1" runat="server" onloggedin="Login1_LoggedIn" font-size="0.8em" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"  ForeColor="#333333" Height="204px" Width="315px">
                                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                                <TextBoxStyle Font-Size="0.8em" />
                                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                            </asp:Login>
                        </div>
                    </AnonymousTemplate>
                </asp:LoginView>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <div>
                    <h1>Witaj <asp:LoginName ID="LoginName1" runat="server" />!</h1>
                    <asp:LoginStatus ID="LoginStatus2" runat="server" />
                    <ul>
                        <li><a href="ProductsViewAdmin.aspx">Produkty - administrator</a></li>
                        <li><a href="ProductsViewModerator.aspx">Produkty - moderator</a></li>
                        <li><a href="ProductsViewLogged.aspx">Produkty - zalogowany</a></li>
                        <li><a href="UserViewAdmin.aspx">Użytkownicy - administrator</a></li>
                        <li><a href="UserViewModerator.aspx">Użytkownicy - modertor</a></li>
                        <li><a href="UserViewLogged.aspx">Użytkownicy - zalogowany</a></li>
                    </ul>
                    
                </div>
            </LoggedInTemplate>      
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
