<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DayMonthYear.aspx.cs" Inherits="JqueryJavascript.DayMonthYear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        function Message() {

            $("#Message").append("Day-" + $("#dateval").val().split('-')[0] + "<br> Month-" + $("#dateval").val().split('-')[1] + "<br> Year-" + $("#dateval").val().split('-')[2] + "<br>");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" id="dateval" />
 <div id="Message"></div>

        <input type="button" onclick="Message()" value="Submit" />
    </div>
    </form>
</body>
</html>

