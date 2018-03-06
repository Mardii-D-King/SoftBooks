<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="bookList">
        <asp:Label ID="show" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="db_1300097" DataKeyNames="ISBN">

            <Columns>

                <asp:ButtonField Text="Add To Cart" CommandName="Select"/>

                <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                    <ItemTemplate>
                        <asp:Label ID="isbn_lbl" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <ItemTemplate>
                        <asp:Label ID="Name_lbl" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Discription" SortExpression="Discription">
                    <ItemTemplate>
                        <asp:Label ID="author_lbl" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <ItemTemplate>
                        <asp:Label ID="price_lbl" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                    <ItemTemplate>
                        <asp:Label ID="genre_lbl" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                            ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="db_1300097" runat="server" ConnectionString="<%$ ConnectionStrings:1300097ConnectionString %>" SelectCommand="SELECT [ISBN], [Name], [Author], [Price], [Genre], [ImageData] FROM [Book]"></asp:SqlDataSource>

    </div>
</asp:Content>
