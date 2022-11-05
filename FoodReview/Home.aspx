<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FoodReview.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
            <h1 class="heading">Food Gallery</h1>
            <hr>
        </div>

        <asp:ListView ID="lstOfFood" runat="server" ItemPlaceholderID="groupPlaceHolder1"  >
            <LayoutTemplate>
                <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

            </LayoutTemplate>

            <ItemTemplate>
                <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
                    <a href='<%# Eval("FoodImage") %>' data-lightbox-gallery="zenda-gallery">
                        <img src='<%# Eval("FoodImage") %>' alt="gallery img"></a>
                    <div>
                        <h3><%# Eval("FoodName") %></h3>
                        <span><%# Eval("FoodCategory") %></span>
                    </div>

                </div>
            </ItemTemplate>


        </asp:ListView>



<%--        <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
            <a href="images/gallery-img1.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img1.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Prawn</h3>
                <span>Seafood / Shrimp / Lemon</span>
            </div>
            <a href="images/gallery-img2.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img2.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Vegetables</h3>
                <span>Tomato / Rosemary / Lemon</span>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
            <a href="images/gallery-img4.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img4.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Bakery</h3>
                <span>Bread / Rosemary / Orange</span>
            </div>
            <a href="images/gallery-img4.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img5.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Bakery</h3>
                <span>Bread / Rosemary / Orange</span>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
            <a href="images/gallery-img4.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img4.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Salad</h3>
                <span>Chicken / Rosemary / Green</span>
            </div>
            <a href="images/gallery-img5.jpg" data-lightbox-gallery="zenda-gallery">
                <img src="images/gallery-img5.jpg" alt="gallery img"></a>
            <div>
                <h3>Lemon-Rosemary Pizza</h3>
                <span>Pasta / Rosemary / Green</span>
            </div>
        </div>--%>
    </div>
</asp:Content>
