<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CartMenu.aspx.cs" Inherits="_CartMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CartMenu" Runat="Server">

     <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="cartDB">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFFFFF;color: #284775;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    ImageData:
                    <asp:Label ID="ImageDataLabel" runat="server" Text='<%# Eval("ImageData") %>' />
                    <br />
                    Genre:
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #999999;">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Author:
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    ImageData:
                    <asp:TextBox ID="ImageDataTextBox" runat="server" Text='<%# Bind("ImageData") %>' />
                    <br />
                    Genre:
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Author:
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    <br />Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />ImageData:
                    <asp:TextBox ID="ImageDataTextBox" runat="server" Text='<%# Bind("ImageData") %>' />
                    <br />Genre:
                    <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #E0FFFF;color: #333333;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    ImageData:
                    <asp:Label ID="ImageDataLabel" runat="server" Text='<%# Eval("ImageData") %>' />
                    <br />
                    Genre:
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Author:
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    ImageData:
                    <asp:Label ID="ImageDataLabel" runat="server" Text='<%# Eval("ImageData") %>' />
                    <br />
                    Genre:
                    <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="cartDB" runat="server" ConnectionString="<%$ ConnectionStrings:1300097ConnectionString %>" SelectCommand="SELECT [Name], [Author], [Price], [Quantity], [ImageData], [Genre] FROM [Book]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed To Payment" />
            <br />
        </div>
</asp:Content>


