<%@ Page Title="" Language="C#" MasterPageFile="~/FoodMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodReview.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
				<h1 class="heading">Login</h1>
				<hr>
			</div>
			<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeIn" data-wow-delay="0.9s">

					<div class="col-md-12 col-sm-12">
						 <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
					</div>
                    <div class="col-md-12 col-sm-12">
						 <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
					</div>
					<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="form-control" OnClick="btnLogin_Click"/>
					</div>
			</div>
			<div class="col-md-2 col-sm-1"></div>
		</div>
	</div>
</section>
</asp:Content>
