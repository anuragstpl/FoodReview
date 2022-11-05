<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="ListProducts.aspx.cs" Inherits="OnlineBidding.ListProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <p style="margin-right:50px;"><asp:LinkButton runat="server" ID="addProduct" CssClass="pull-right" OnClick="addProduct_Click" Text="Add Product"></asp:LinkButton></p>
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
                                            <th>ProductImage</th>
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
                    <asp:Image runat="server" ImageUrl='<%#Eval("ProductImage") %>' ID="productImg" Height="50" /></td>
                <td>
                    <asp:LinkButton runat="server" ID="lnkEdit" CssClass="fa fa-fw fa-edit" CommandArgument='<%# Eval("ProductID") %>' ToolTip="Edit User" CommandName="Edit"></asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton runat="server" ID="lnkDelete" CssClass="fa fa-fw fa-remove" OnClientClick="javascript:return confirm('Are you sure you want to delete this item?');" CommandArgument='<%# Eval("ProductID") %>' ToolTip="Delete User" CommandName="Delete"></asp:LinkButton>
                    
                </td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
</asp:Content>
