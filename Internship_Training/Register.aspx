<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Internship_Training.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <asp:Label runat="server" ID="lblName"></asp:Label>
                <h2>Register Now</h2>

                <div class="mb-3 mt-3">
                    <label>Name:</label>
                    <%-- <input type="text" id="control1" />--%>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <div class="mb-3 mt-3">
                    <label>Contact:</label>
                    <asp:TextBox TextMode="Number" ID="txtContact" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <div class="mb-3 mt-3">
                    <label>City:</label>
                    <asp:DropDownList ID="ddlCities" CssClass="form-control" runat="server">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem>Kolhapur</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <asp:Button runat="server" Text="Register" CssClass="btn btn-outline-success" ID="btnRegister" />

            </div>
        </div>
    </div>
</asp:Content>
