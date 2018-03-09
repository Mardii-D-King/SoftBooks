<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="custId" DataSourceID="custDB" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="custId" HeaderText="custId" ReadOnly="True" SortExpression="custId" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="custDB" runat="server" ConnectionString="<%$ ConnectionStrings:1300097ConnectionString %>" SelectCommand="SELECT [Name], [Email], [custId] FROM [Customer]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
