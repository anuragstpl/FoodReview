<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="OnlineBidding.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="/plugins/select2/select2.min.css">
     <div>

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Add Food
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
                    <li><a href="#">Food</a></li>
                    <li class="active">Add Food</li>
                </ol>
            </section>

            <!-- General Info -->
            <section class="content">

                <!-- SELECT2 EXAMPLE -->
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Food Info</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Name*</label>
                                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" required placeholder="Enter Name"></asp:TextBox>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>Reciepe*</label>
                                    <asp:TextBox runat="server" ID="txtPrice" TextMode="MultiLine" Rows="3" CssClass="form-control" required placeholder="Enter Reciepe"></asp:TextBox>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>Category*</label>
                                    <asp:DropDownList runat="server" ID="ddlFoodCategory" CssClass="form-control">
                                        <asp:ListItem>Malaysian</asp:ListItem>
                                        <asp:ListItem>Indian</asp:ListItem>
                                        <asp:ListItem>Chinese</asp:ListItem>
                                        <asp:ListItem>Arabic</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description*</label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescription" Rows="3" CssClass="form-control" required placeholder="Enter Description"></asp:TextBox>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Food Image*</label>
                                    <asp:FileUpload ID="productImage" runat="server" CssClass="form-control"  />
                                </div>

                            </div>

                            
                            <div class="col-md-6">
                                <label></label>
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnAddProduct" Text="Add Food" CssClass="btn btn-block btn-success" OnClick="btnAddProduct_Click" />
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->


            </section>
            <!-- /.content -->
            <!-- General Info -->
            
            <!-- /.content -->
        </div>

    </div>
</asp:Content>
