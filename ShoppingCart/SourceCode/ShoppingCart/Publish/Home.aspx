<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Home.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="header">
                <div id="logo_text">

                    <marquee>Hello!!! Welcome To My Website (^.^)
                        <br />
                        <center>Enjoy Shopping With Us <3</center>
                    </marquee>
                    <h3>Shopping cart</h3>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="ShoppingCart.aspx">Shopping cart</a></li>
                    </ul>
                    <div>
                        <div class="btn1">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </div>
                    </div>
                    <div>
                        <div class="btn2">
                            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                        </div>
                    </div>
                </div>
                <div class="content">
                    <asp:Repeater ID="productContent" runat="server">
                        <ItemTemplate>
                            <div class="product">
                                <div id="p_image">
                                    <img src='<%#Eval("ProductImage")%>' />
                                </div>
                                <div class="description">
                                    <div class="P_name"><span><%#Eval("ProductName")%></span></div>
                                    <div class="price"><%#Eval("ProductPrice")%></div>
                                    <div class="cart">
                                        <asp:Button ID="btnAddtoCart" OnCommand="btnAddtoCart_Command"
                                            CommandArgument='<%#Eval("ProductId")%>' runat="server" Text="Add to cart" />

                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>


                </div>




            </div>
        </div>

    </form>
</body>
</html>

