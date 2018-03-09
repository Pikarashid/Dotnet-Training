<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Content/Style.css" rel="stylesheet" />
</head>



<body>
    <form id="form1" runat="server">
    
    <div>
        <br />
        <br /> 
        <br />
        <marquee>Please Login Here..Thank You (^-^)</marquee>
        <center><h3>Shopping Cart</h3></center>
        <div class="Login" style="background: pink"> 

            <div>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
            </div>
            <br/>
            <div> 
                <center><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></center>
                </div>
                <div class="status">
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
