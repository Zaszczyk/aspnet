<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="Projekt.Pages.ProductsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #insert_box {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4><a href="javascript: history.go(-1)">Go Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus2" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
    </h4>
    <h4 align="left">&nbsp;</h4>
    <h2 align="center">Products Table </h2>
    <h2 align="center"><a href="ProductsPage.aspx">ProductsPage.aspx</a></h2>
    <h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" Height="63px" Width="280px" BorderColor="#999999" BorderStyle="Solid" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" BackColor="White" BorderWidth="1px" GridLines="Vertical">
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>"
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
    </h3>
    <br />
    <br />
    <br />
    <div id="delete_box" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="label1" runat="server">ID</asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Delete" runat="server" Text="DELETE" OnClick="DeleteButton_Click" />
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <div align="left" id="insert_box" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="label2" runat="server">Name</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="label3" runat="server">Price</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="label6" runat="server">Quantity</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label5" runat="server">Weight</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label4" runat="server">Producer</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Insert" runat="server" Text="INSERT" OnClick="InsertButton_Click" />
            &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <div id="update_box" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">ID</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label8" runat="server">Name</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label11" runat="server">Price</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label10" runat="server">Quantity</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="label9" runat="server">Weight</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label12" runat="server">Producer</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;         
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
        </div>
        <br />
    </div>
    <br />
    <div style='margin-left: 500px'>
    </div>
</asp:Content>
