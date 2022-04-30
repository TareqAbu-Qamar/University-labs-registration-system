<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupStudent.aspx.cs" Inherits="ASPProject.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    </style>
</head>
<body>
    <p>
        Sign up for Internal labs in IT College
    </p>
    <form id="form1" runat="server">

            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="22px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Age:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-top: 0px" Width="128px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Major:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="57px">
                <asp:ListItem Selected="True">SE</asp:ListItem>
                <asp:ListItem>CS</asp:ListItem>
                <asp:ListItem>CIS</asp:ListItem>
                <asp:ListItem>NES</asp:ListItem>
                <asp:ListItem>CPE</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Address:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label>
           <asp:TextBox ID="Password1" TextMode="Password" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Save" OnClick="Button1_Click1" />
        <br />  
        <p>Already have an account?&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Times New Roman" NavigateUrl="~/StudentLogin.aspx">Sign in</asp:HyperLink></p>
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ADMIN\SOURCE\REPOS\ASPPROJECT\ASPPROJECT\APP_DATA\ENROLLMENT.MDFConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [Student] ([StudentId], [Fname], [Lname], [Age], [Gender], [Email], [Major], [Address], [Password]) VALUES (@StudentId, @Fname, @Lname, @Age, @Gender, @Email, @Major, @Address, @Password)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Fname] = @Fname, [Lname] = @Lname, [Age] = @Age, [Gender] = @Gender, [Email] = @Email, [Major] = @Major, [Address] = @Address, [Password] = @Password WHERE [StudentId] = @StudentId" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="StudentId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="StudentId" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Fname" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Lname" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="Age" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="Gender" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="Email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="Major" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox6" Name="Address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Password1" Name="Password" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Major" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="StudentId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
