<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="ASPProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>&nbsp
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>&nbsp
            <asp:TextBox ID="Password1" TextMode="Password" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="LogIn" OnClick="Button1_Click1" />&nbsp&nbsp
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
            
            
            
        </div>
    </form>
</body>
</html>
