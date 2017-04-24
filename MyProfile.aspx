<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                CustId:
                <asp:Label ID="CustIdLabel1" runat="server" Text='<%# Eval("CustId") %>' />
                <br />
                Firstname:
                <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
                <br />
                Lastname:
                <asp:TextBox ID="LastnameTextBox" runat="server" Text='<%# Bind("Lastname") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Firstname:
                <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
                <br />
                Lastname:
                <asp:TextBox ID="LastnameTextBox" runat="server" Text='<%# Bind("Lastname") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                CustId:
                <asp:Label ID="CustIdLabel" runat="server" Text='<%# Eval("CustId") %>' />
                <br />
                Firstname:
                <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' />
                <br />
                Lastname:
                <asp:Label ID="LastnameLabel" runat="server" Text='<%# Bind("Lastname") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SoftArchivesConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustId] = @CustId" InsertCommand="INSERT INTO [Customer] ([Firstname], [Lastname], [Password], [Email]) VALUES (@Firstname, @Lastname, @Password, @Email)" SelectCommand="SELECT * FROM [Customer] WHERE ([CustId] = @CustId)" UpdateCommand="UPDATE [Customer] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Password] = @Password, [Email] = @Email WHERE [CustId] = @CustId">
            <DeleteParameters>
                <asp:Parameter Name="CustId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="CustId" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="CustId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
