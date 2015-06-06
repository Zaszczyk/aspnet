<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsViewModerator.aspx.cs" Inherits="Projekt.Pages.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4><a href="javascript: history.go(-1)">Go Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
            </h4>
            <h4 align="left">&nbsp;</h4>
            <h2 align="center"><span class="newStyle1">Products Table</span></h2>
            <h4 align="center">Mod view</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="16px" Width="262px" BorderColor="#999999" BorderStyle="Solid" HorizontalAlign="Center" AllowPaging="True" BackColor="White" BorderWidth="1px" GridLines="Vertical" AllowSorting="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>"
            SelectCommand="SELECT * FROM [Products]"
            UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Producer] = @Producer WHERE [Id] = @Id">
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" Type="String" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="Price" Type="Double" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox9" Name="Quantity" Type="Int32" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox10" Name="Weight" Type="String" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox11" Name="Producer" Type="String" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="Id" Type="Int32" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <br />
        <div id="update_box" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">ID</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label8" runat="server">Name</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label11" runat="server">Price</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label10" runat="server">Quantity</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label9" runat="server">Weight</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label12" runat="server">Producer</asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Update" runat="server" Text="UPDATE" OnClick="UpdateButton_Click" />
            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
            </asp:DropDownList>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <div style='margin-left: 500px'>
            <br />
            <br />
            <br />
            <br />
    </form>
</body>
</html>
