<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineBidding.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lstProducts" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemCommand="lstProducts_ItemCommand">
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
                                            <th>Review Bidss</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                    </tbody>
                                    
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
                <asp:LinkButton runat="server" ID="lnkReviewBids"  CommandArgument='<%# Eval("ProductID") %>' ToolTip="Review Bids" CommandName="Review">Review Bids</asp:LinkButton>

                </td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
</asp:Content>
