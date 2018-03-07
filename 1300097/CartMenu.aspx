<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CartMenu.aspx.cs" Inherits="CartMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="orderID" DataSourceID="CartDB" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" ReadOnly="True" SortExpression="orderID" />
                    <asp:BoundField DataField="fk_custID" HeaderText="fk_custID" SortExpression="fk_custID" />
                    <asp:BoundField DataField="fk_ISBN" HeaderText="fk_ISBN" SortExpression="fk_ISBN" />
                    <asp:BoundField DataField="fk_guestID" HeaderText="fk_guestID" SortExpression="fk_guestID" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="CartDB" runat="server" ConnectionString="<%$ ConnectionStrings:1300097ConnectionString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
