<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="PurchaseId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">PurchaseId:
                    <asp:Label ID="PurchaseIdLabel" runat="server" Text='<%# Eval("PurchaseId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Cost:
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityLabel" Height="18px" Width="41px" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"/>
                    <asp:Button ID="update" runat="server" OnClick="update_quan" Text="Update" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">PurchaseId:
                    <asp:Label ID="PurchaseIdLabel1" runat="server" Text='<%# Eval("PurchaseId") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Cost:
                    <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" Height="18px" Width="41px" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Cost:
                    <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                    <br />Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />Quantity:
                    <asp:TextBox ID="QuantityTextBox" Height="18px" Width="41px" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">PurchaseId:
                    <asp:Label ID="PurchaseIdLabel" runat="server" Text='<%# Eval("PurchaseId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Cost:
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityLabel" Height="18px" Width="41px" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                     <asp:Button ID="update" runat="server" OnClick="update_quan" Text="Update" />
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
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">PurchaseId:
                    <asp:Label ID="PurchaseIdLabel" runat="server" Text='<%# Eval("PurchaseId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Cost:
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityLabel" Height="18px" Width="41px" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                     <asp:Button ID="update" runat="server" OnClick="update_quan" Text="Update" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SoftArchivesConnectionString %>" DeleteCommand="DELETE FROM [Purchases] WHERE [PurchaseId] = @PurchaseId" InsertCommand="INSERT INTO [Purchases] ([Name], [Cost], [Description], [Quantity]) VALUES (@Name, @Cost, @Description, @Quantity)" SelectCommand="SELECT * FROM [Purchases]" UpdateCommand="UPDATE [Purchases] SET [Name] = @Name, [Cost] = @Cost, [Description] = @Description, [Quantity] = @Quantity WHERE [PurchaseId] = @PurchaseId">
            <DeleteParameters>
                <asp:Parameter Name="PurchaseId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Cost" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Cost" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="PurchaseId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Order" />
    
    </div>
    </form>
</body>
</html>
