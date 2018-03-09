<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Carousel(Slideshow) starts here-->
        <div align="center">
            <div class="d-block w-50 h-50">

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-wrap="true">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">

                        <div class="carousel-item active">
                            <img src="imgs/poetry.jpg" alt="First slide">
                            <div class="carousel-caption">
                                <h5>Poetry Books</h5>
                                <p>Books for kids and adults that loves adventures</p>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <img src="imgs/story.jpg">
                            <div class="carousel-caption">
                                <h5>Story Books</h5>
                                <p>Books for kids and adults that loves adventures</p>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <img src="imgs/novels.jpg" alt="Third slide">
                            <div class="carousel-caption">
                                <h5>Novels</h5>
                                <p>Books for kids and adults that loves adventures</p>
                            </div>
                        </div>
                    </div>

                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>

        <!--Carousel(Slideshow) ends here-->

        </br> </br>

        <!--Sidebar Menu starts here-->
        <div>
            <div id="list-example" class="list-group" style="width: 15rem;">
                <a class="list-group-item list-group-item-action" href="#list-item-1">Item 1</a>
                <a class="list-group-item list-group-item-action" href="#list-item-2">Poetry</a>
                <a class="list-group-item list-group-item-action" href="#list-item-3">Story</a>
                <a class="list-group-item list-group-item-action" href="#list-item-4">Novels</a>
            </div>
        </div>
        <!--Sidebar Menu ends here-->

    <div id="bookList">
   
        <div id="grid">
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
            </div>
     </div>
        <asp:SqlDataSource ID="db_1300097" runat="server" ConnectionString="<%$ ConnectionStrings:1300097ConnectionString %>" SelectCommand="SELECT [ISBN], [Name], [Author], [Price], [Genre], [ImageData] FROM [Book]"></asp:SqlDataSource>

   
</asp:Content>
