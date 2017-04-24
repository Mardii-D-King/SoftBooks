<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="CashOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Method of Payment"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Customer ID is
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Name on Card: "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Debit" AutoPostBack="True" />
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CardId" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                CardId:
                <asp:Label ID="CardIdLabel1" runat="server" Text='<%# Eval("CardId") %>' />
                <br />
                CardName:
                <asp:TextBox ID="CardNameTextBox" runat="server" Text='<%# Bind("CardName") %>' />
                <br />
                CardNum:
                <asp:TextBox ID="CardNumTextBox" runat="server" Text='<%# Bind("CardNum") %>' />
                <br />
                Owner:
                <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CardName:
                <asp:TextBox ID="CardNameTextBox" runat="server" Text='<%# Bind("CardName") %>' />
                <br />
                CardNum:
                <asp:TextBox ID="CardNumTextBox" runat="server" Text='<%# Bind("CardNum") %>' />
                <br />
                Owner:
                <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                <asp:Button ID="add" runat="server" OnClick="Add" Text="Add"/>
            </InsertItemTemplate>
            <ItemTemplate>
                CardId:
                <asp:Label ID="CardIdLabel" runat="server" Text='<%# Eval("CardId") %>' />
                <br />
                CardName:
                <asp:Label ID="CardNameLabel" runat="server" Text='<%# Bind("CardName") %>' />
                <br />
                CardNum:
                <asp:Label ID="CardNumLabel" runat="server" Text='<%# Bind("CardNum") %>' />
                <br />
                Owner:
                <asp:Label ID="OwnerLabel" runat="server" Text='<%# Bind("Owner") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SoftArchivesConnectionString %>" DeleteCommand="DELETE FROM [Card] WHERE [CardId] = @original_CardId AND (([CardName] = @original_CardName) OR ([CardName] IS NULL AND @original_CardName IS NULL)) AND (([CardNum] = @original_CardNum) OR ([CardNum] IS NULL AND @original_CardNum IS NULL)) AND (([Owner] = @original_Owner) OR ([Owner] IS NULL AND @original_Owner IS NULL))" InsertCommand="INSERT INTO [Card] ([CardName], [CardNum], [Owner]) VALUES (@CardName, @CardNum, @Owner)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CardId], [CardName], [CardNum], [Owner] FROM [Card]" UpdateCommand="UPDATE [Card] SET [CardName] = @CardName, [CardNum] = @CardNum, [Owner] = @Owner WHERE [CardId] = @original_CardId AND (([CardName] = @original_CardName) OR ([CardName] IS NULL AND @original_CardName IS NULL)) AND (([CardNum] = @original_CardNum) OR ([CardNum] IS NULL AND @original_CardNum IS NULL)) AND (([Owner] = @original_Owner) OR ([Owner] IS NULL AND @original_Owner IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CardId" Type="Int32" />
                <asp:Parameter Name="original_CardName" Type="String" />
                <asp:Parameter Name="original_CardNum" Type="Int32" />
                <asp:Parameter Name="original_Owner" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CardName" Type="String" />
                <asp:Parameter Name="CardNum" Type="Int32" />
                <asp:Parameter Name="Owner" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CardName" Type="String" />
                <asp:Parameter Name="CardNum" Type="Int32" />
                <asp:Parameter Name="Owner" Type="String" />
                <asp:Parameter Name="original_CardId" Type="Int32" />
                <asp:Parameter Name="original_CardName" Type="String" />
                <asp:Parameter Name="original_CardNum" Type="Int32" />
                <asp:Parameter Name="original_Owner" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
