<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Internship_Training.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container mt-3">
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
    </form>
</body>
</html>
