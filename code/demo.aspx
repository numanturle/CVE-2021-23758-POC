<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="CVE_2021_23758_POC.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        function testAjax() {
            var user = {
                Name: "admin",
                Password: "1337"
            };
            var sonuc = window.CVE_2021_23758_POC.demo.TestAjax(user).value;
            alert(sonuc)
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" onclick="testAjax()" value="Ajax Test" />
        </div>
    </form>
</body>
</html>
