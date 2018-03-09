<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToNumberJavascript.aspx.cs" Inherits="JqueryJavascript.AddToNumberJavascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Message() {
            var Num1 = document.getElementById("Num1").value;
            var Num2 = document.getElementById("Num2").value;
            var Total = Number(Num1) + Number(Num2);
            alert(Total);
        }
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <input type="text" id="Num1" />
    <input type="text" id="Num2" />
        <input type="button" onclick="Message()" value="Total" />
    </div>
    </form>
</body>
</html>