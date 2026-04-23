<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="QS1.aspx.cs" Inherits="Internship_Training.QS1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="row">
         <div class="col-md-6">
            <label>Name:</label>
             <asp:TextBox runat="server" ID="txtName" CssClass="form-control my-2"></asp:TextBox>
            <label>Contact:</label>
             <asp:TextBox runat="server" ID="txtContact" CssClass="form-control my-2"></asp:TextBox>
             <asp:Button runat="server" OnClick="btnConfirm_Click" CssClass="btn btn-primary" ID="btnConfirm" Text="Confirm Details" />
         </div>
     </div>
 </div>
</asp:Content>
