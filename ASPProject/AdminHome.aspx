<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ASPProject.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="LabId"></asp:Label>&nbsp
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>&nbsp
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Day"></asp:Label>&nbsp<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1">
                <asp:ListItem>Sun</asp:ListItem>
                <asp:ListItem>Mon</asp:ListItem>
                <asp:ListItem>Tue</asp:ListItem>
                <asp:ListItem>Wed</asp:ListItem>
                <asp:ListItem>Thu</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>&nbsp
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\SOURCE\REPOS\ASPPROJECT\ASPPROJECT\APP_DATA\ENROLLMENT.MDFConnectionString4 %>" DeleteCommand="DELETE FROM [Labs] WHERE [LabId] = @LabId" InsertCommand="INSERT INTO [Labs] ([LabId], [Name], [Time]) VALUES (@LabId, @Name, @Time)" SelectCommand="SELECT * FROM [Labs]" UpdateCommand="UPDATE [Labs] SET [Name] = @Name, [Time] = @Time WHERE [LabId] = @LabId" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="LabId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="LabId" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Time" PropertyName="Text" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Time" Type="DateTime" />
                    <asp:Parameter Name="LabId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
