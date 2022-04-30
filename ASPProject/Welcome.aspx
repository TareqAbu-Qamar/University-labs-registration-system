<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ASPProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <h1 class="auto-style2"><strong>Welcome To Labs Registration Website</strong></h1>
    <form id="form1" runat="server" style="text-align:center">
    <div style="border-style: none; text-align: center">
        <asp:Image ID="images" runat="server" ImageUrl ="~/Image/images.png" style="text-align: left" /> 
    </div><br>
        <asp:Button ID="Button1" runat="server" BackColor="#0033CC" BorderColor="#0033CC" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White" OnClick="Button1_Click" Text="Student " /> &nbsp
        <asp:Button ID="Button2" runat="server" BackColor="#0033CC" BorderColor="#0033CC" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White" OnClick="Button2_Click" Text="Admin" />

    </form>
</body>
</html>
