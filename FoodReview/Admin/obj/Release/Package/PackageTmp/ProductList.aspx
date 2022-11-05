<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="OnlineBidding.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <label for="drpSpeciality" class="col-sm-2 control-label">Enter Product Name to search</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" ID="txtProdName"  CssClass="form-control" placeholder="Enter product name initials" required></asp:TextBox>
                </div>
            </div>
            <div class="col-md-10">
                <label></label>
                <div class="form-group" style="margin-left: 350px;">
                    <asp:Button runat="server" ID="btnGetProducts" Text="Get Products" CssClass="btn btn-block btn-success" OnClick="btnGetProducts_Click" />
                </div>
            </div>
        </div>
    </div>
    <asp:ListView ID="lstProducts" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemCommand="lstProducts_ItemCommand" OnItemDeleting="lstProducts_ItemDeleting" OnPagePropertiesChanging="lstProducts_PagePropertiesChanging">
        <LayoutTemplate>
            <section class="content">
                <div class="row">
                    <div class="col-xs-12" style="width: 84%">
                        <div class="box" style="margin-left: 220px;">
                            <div class="box-header">
                                <h3 class="box-title">Products</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Base Price</th>
                                            <th>Description</th>
                                            <th>PostedOn</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="6">
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
            <tr>
                <td><%#Eval("ProductName") %></td>
                <td><%#Eval("ProductBasePrice") %></td>
                <td><%#Eval("Description") %></td>
                <td><%#Eval("PostedOn") %></td>
                <td>
                    <asp:LinkButton runat="server" ID="lnkBid" CssClass="fa fa-fw fa-edit" CommandArgument='<%# Eval("ProductID") %>' ToolTip="Bid on Product" CommandName="Bid"></asp:LinkButton>
                    
                </td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
</asp:Content>
