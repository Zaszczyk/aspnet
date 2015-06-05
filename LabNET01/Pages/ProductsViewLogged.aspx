﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsViewLogged.aspx.cs" Inherits="Projekt.Pages.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4><a href="javascript: history.go(-1)">Go Back</a></h4>
    <h4 align="right"><asp:LoginStatus ID="LoginStatus1" runat="server" /></h4>
    <h2 align="center">Products Table </h2>
    <h4 align="center">View for logged users</h4>
        <h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="63px" Width="280px" BorderColor="Black" BorderStyle="Double" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </h3>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                    DeleteCommand="DELETE FROM [Products] WHERE [Id] = @DeleteId" 
                    InsertCommand="INSERT INTO [Products] ([Name], [Price], [Quantity], [Weight], [Producer]) VALUES (@Name, @Price, @Quantity, @Weight, @Producer)" 
                    SelectCommand="SELECT * FROM [Products]" 
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Producer] = @Producer WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter Name="DeleteId" ControlId="DropDownList1" PropertyName="SelectedValue" />
                    </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox3"  Name="Name" Type="String" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox4"  Name="Price" Type="Double" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox5"  Name="Quantity" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox6"  Name="Weight" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox7"  Name="Producer" Type="String" PropertyName="Text"/>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox1"  Name="Name" Type="String" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox8"  Name="Price" Type="Double" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox9"  Name="Quantity" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox10"  Name="Weight" Type="String" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox11"  Name="Producer" Type="String" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="DropDownList2" Name="Id" Type="Int32" PropertyName="SelectedValue" />
                        </UpdateParameters>
            </asp:SqlDataSource>
         <br /> <br /> <br />
    </form>
</body>
</html>