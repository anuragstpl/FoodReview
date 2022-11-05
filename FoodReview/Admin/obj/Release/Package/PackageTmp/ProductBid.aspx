<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="ProductBid.aspx.cs" Inherits="OnlineBidding.ProductBid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Allerta" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.0/css/mdb.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.0/js/mdb.min.js"></script>
    <style type="text/css">
        .prod_page {
            float: left;
            width: 100%;
        }

        .product_item_view {
            float: left;
            width: 100%;
            margin-top: 40%;
        }


        .product_detail_view {
            float: left;
            width: 78%;
            padding: 20px;
            box-shadow: 0 0 3px #aaa;
            padding: 10px;
            margin-top: 2%;
            margin-left: 260px;
        }

        .pro_heading {
            float: left;
            width: 100%;
            font-size: 45px;
            font-weight: normal;
            font-family: 'Allerta', sans-serif;
            ;
        }

        .new_coll {
            float: left;
            width: 100%;
            font-size: 18px;
            font-style: italic;
            margin: 30px 0;
            position: relative;
        }

        #stock_available {
            color: red;
            font-size: 18px;
            font-weight: 500;
            font-style: normal;
            text-decoration: none !important;
            padding: 40%;
        }

        .pro_rate {
            float: left;
            width: 100%;
            margin: 15px 0;
            padding-left: 10%;
            font-size: 25px;
            font-style: italic;
        }

        /*label {
            font-size: 1.8rem;
        }*/

        .color_quantity {
            width: 80%;
            float: left;
            margin-left: 10%;
            border-top: 1px solid #aaa;
            border-bottom: 1px solid #aaa;
            height: 70px;
            padding: 10px;
            margin-bottom: 30px;
        }

        .color {
            width: 35%;
            float: left;
        }

        .color_select {
            float: left;
            width: 50%;
            margin-left: 10px;
            margin-top: 10px;
        }

            .color_select li {
                float: left;
                width: 7%;
                text-align: center;
                padding: 0 10px;
            }

        #red {
            width: 15px;
            height: 15px;
            background-color: red;
            float: left;
            border-radius: 1em;
        }

        #green {
            width: 15px;
            height: 15px;
            background: green;
            background-color: green;
            float: left;
            border-radius: 1em;
        }

        #black {
            width: 15px;
            height: 15px;
            background: black;
            background-color: black;
            float: left;
            border-radius: 1em;
        }

        .color span {
            float: left;
            margin-bottom: 2px;
            width: 100%;
        }

        .slash {
            float: left;
            width: 5%;
            font-size: 75px;
            padding: 0;
            margin: 0;
            line-height: 0.6;
        }

        .quantity {
            float: left;
            width: 45%;
        }
    </style>
    <%--  <link
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
        crossorigin="anonymous">--%>
    <div class="product_detail_view">
        <div class="container" id="product-section">
            <div class="row" style="margin-top: 15px;">
                <div class="col-md-6" style="width: 28%">
                    <asp:Image ID="Image1" runat="server" Height="300" Width="300" CssClass="image-responsive" />
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 style="margin-top: 0px; font-family: serif">
                                <asp:Label ID="lblProdName" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 bottom-rule">
                            <h2 class="product-price">
                                <asp:Label ID="lblProdPrice" runat="server" Text="Label"></asp:Label></h2>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <p class="description">
                                <b>Posted By : </b>
                                <asp:Label ID="lblPostedBy" runat="server" Text="Label"></asp:Label><br />
                                <b>Posted On : </b>
                                <asp:Label ID="lblPostedOn" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <p class="description">
                                <asp:Label ID="lblDescription" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div>
        </div>
    </div>
    <asp:ListView ID="lstProducts" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemCommand="lstProducts_ItemCommand" OnItemDeleting="lstProducts_ItemDeleting" OnPagePropertiesChanging="lstProducts_PagePropertiesChanging">
        <LayoutTemplate>
            <section class="content">
                <div class="row">
                    <div class="col-xs-12" style="width: 84%">
                        <div class="box" style="margin-left: 220px; margin-top: 20px; margin-bottom: -30px;">
                            <div class="box-header">
                                <h3 class="box-title">Available Bids</h3>

                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">

                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Bidding Time</th>
                                            <th>Base Price</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="4">
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstProducts" PageSize="10">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                            ShowNextPageButton="false" />
                                                        <asp:NumericPagerField ButtonType="Link" />
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>
                </div>
            </section>
        </LayoutTemplate>

        <ItemTemplate>
            <%--<table>
                <tr>
                    <td></td>
                </tr>
            </table>--%>
            <tr>
                <td><%#Eval("BiddingTitle") %></td>
                <td><%#Eval("BiddingDescription") %></td>
                <%--<td><%#Eval("UserID") %></td>--%>
                <td><%#Eval("BiddingTime") %></td>
                <td><%#Eval("Price") %></td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
    <asp:Panel runat="server" ID="pnlAddBid">
        <div class="box-body" style="margin-left: 250px;">
            <div class="row">
                <div class="col-md-6">
                    <p>&nbsp;</p>
                    <div class="form-group">
                        <label>Title*</label>
                        <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control" required placeholder="Enter Title"></asp:TextBox>
                    </div>
                    <!-- /.form-group -->
                    <div class="form-group">
                        <label>Price*</label>
                        <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" required placeholder="Enter Price"></asp:TextBox>
                    </div>
                    <!-- /.form-group -->
                </div>
                <!-- /.col -->
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Description*</label>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescription" Rows="3" CssClass="form-control" required placeholder="Enter Description"></asp:TextBox>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-md-6">
                    <label></label>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnMakeBid" OnClick="btnMakeBid_Click" Text="Make Bid" CssClass="btn btn-block btn-success" />
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
    </asp:Panel>
</asp:Content>
