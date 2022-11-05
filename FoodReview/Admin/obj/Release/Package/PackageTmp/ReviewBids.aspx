<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="ReviewBids.aspx.cs" Inherits="OnlineBidding.ReviewBids" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/jquery-1.9.0.js"></script>
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <asp:ListView ID="lstProducts" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemDataBound="lstProducts_ItemDataBound" OnItemCommand="lstProducts_ItemCommand" OnPagePropertiesChanging="lstProducts_PagePropertiesChanging">
                    <LayoutTemplate>
                        <section class="content">
                            <div class="row">
                                <div class="col-xs-12" style="width: 84%">
                                    <div class="box" style="margin-left: 220px; margin-top: 20px; margin-bottom: -30px;">
                                        <div class="box-header">
                                            <h3 class="box-title">Bids For Review</h3>

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
                                                        <th>Bid Status</th>
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
                            <td>
                                <asp:CheckBox ID="chkConfirmBid" CssClass="form-control" runat="server" Checked='<%#Eval("IsAccepted") %>' />
                                <asp:HiddenField ID="hdnProductBid" runat="server" Value='<%#Eval("ProductBidID") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>


                </asp:ListView>
            </div>
            <div class="col-md-6 pull-right" style="margin-top: 30px;">
                <label></label>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnConfirmBid" Text="Confirm Bid" OnClick="btnConfirmBid_Click" CssClass="btn btn-block btn-success" />
                    <asp:HiddenField ID="hdnConfirmID" runat="server" Value="0" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input[id^='ctl00_ContentPlaceHolder1_lstProducts']").click(
             function () {

                 if ($(this).is(':checked')) {
                     $("input[id^='ctl00_ContentPlaceHolder1_lstProducts']").attr("disabled", true);
                     $(this).prop('checked', true);
                     $(this).removeAttr("disabled");
                     $('#ctl00_ContentPlaceHolder1_hdnConfirmID').val($(this).parent().next().attr('value'));
                 }
                 else {
                     $("input[id^='ctl00_ContentPlaceHolder1_lstProducts']").removeAttr("disabled");
                     $('#ctl00_ContentPlaceHolder1_hdnConfirmID').val(0);
                 }
             });

        });


    </script>
</asp:Content>
