<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsViewLogged.aspx.cs" Inherits="Projekt.Pages.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
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
            <h2 align="center"><span class="newStyle1">Products Table</span> </h2>
            <h4 align="center">User view</h4>
            <h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="63px" Width="280px" BorderColor="#999999" BorderStyle="Solid" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" BackColor="White" BorderWidth="1px" GridLines="Vertical">
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
            </h3>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>"
            DeleteCommand="DELETE FROM [Products] WHERE [Id] = @DeleteId"
            InsertCommand="INSERT INTO [Products] ([Name], [Price], [Quantity], [Weight], [Producer]) VALUES (@Name, @Price, @Quantity, @Weight, @Producer)"
            SelectCommand="SELECT * FROM [Products]"
            UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Producer] = @Producer WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:ControlParameter Name="DeleteId" ControlID="DropDownList1" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="Name" Type="String" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="Price" Type="Double" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="Quantity" Type="Int32" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="Weight" Type="Int32" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="Producer" Type="String" PropertyName="Text" />
            </InsertParameters>
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
        <br />
    </form>
</body>
</html>
