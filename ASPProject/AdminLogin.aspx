<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ASPProject.AdminLogin" %>

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
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\SOURCE\REPOS\ASPPROJECT\ASPPROJECT\APP_DATA\ENROLLMENT.MDFConnectionString3 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Admin] ([Username], [Fname], [Lname], [Department], [Email], [Password]) VALUES (@Username, @Fname, @Lname, @Department, @Email, @Password)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Fname] = @Fname, [Lname] = @Lname, [Department] = @Department, [Email] = @Email, [Password] = @Password WHERE [Username] = @Username">
                <DeleteParameters>
                    <asp:Parameter Name="Username" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="Int32" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Username" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        
    </form>
</body>
</html>
