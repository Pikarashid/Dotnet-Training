<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="JqueryJavascript.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
     function Message()
        {
            alert(document.getElementById("txtMessage").value);
        }
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <input type="text" id="txtMessage" />
        <input type="button" onclick="Message()" value="Submit" />
    </div>
    </form>
</body>
</html>
