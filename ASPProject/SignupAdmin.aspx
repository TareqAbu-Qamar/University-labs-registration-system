<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupAdmin.aspx.cs" Inherits="ASPProject.SignupAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Admin ID: "></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label2" runat="server" Text="First Name: "></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="Last Name: "></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label4" runat="server" Text="Department: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="57px">
                <asp:ListItem Selected="True">SE</asp:ListItem>
                <asp:ListItem>CS</asp:ListItem>
                <asp:ListItem>CIS</asp:ListItem>
                <asp:ListItem>NES</asp:ListItem>
                <asp:ListItem>CPE</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="Password1" TextMode="Password" runat="server" style="margin-bottom: 0px"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Save" OnClick="Button1_Click1" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\SOURCE\REPOS\ASPPROJECT\ASPPROJECT\APP_DATA\ENROLLMENT.MDFConnectionString2 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Admin] ([Username], [Fname], [Lname], [Department], [Email], [Password]) VALUES (@Username, @Fname, @Lname, @Department, @Email, @Password)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Fname] = @Fname, [Lname] = @Lname, [Department] = @Department, [Email] = @Email, [Password] = @Password WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" Name="Fname" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="Lname" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Department" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="Email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Password1" Name="Password" PropertyName="Text" Type="String" />
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
        
    </form>
</body>
</html>
