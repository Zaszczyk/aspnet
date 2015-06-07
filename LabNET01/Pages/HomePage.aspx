<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Projekt.Pages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
                    <h2>Witaj <asp:LoginName ID="LoginName1" runat="server" /></h2>
        <ul>
            
                    <li><a href="ProductsViewAdmin.aspx">Produkty - admin</a></li>
                    <li><a href="ProductsViewModerator.aspx">Produkty - moderator</a></li>
                    <li><a href="ProductsViewLogged.aspx">Produkty - zalogowany</a></li>
                    <li><a href="UserViewAdmin.aspx">Użytkownicy - admin</a></li>
                    <li><a href="UserViewModerator.aspx">Użytkownicy - moderator</a></li>
                    <li><a href="UserViewLogged.aspx">Użytkownicy - zalogowany</a></li>
            <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
        </ul>
    </div>
    </form>
</body>
</html>
