<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="createAdvisorID.aspx.cs" Inherits="CentennialHub.createStudentID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Create Advisor ID
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 269px;
        }
        .auto-style3 {
            width: 269px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            width: 366px;
        }
        .auto-style6 {
            height: 33px;
            width: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <p>Create New Advisor ID</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Faculty ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="id" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a new ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">First Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="fname" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter your first name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Middle Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="mname" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter your middle name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="lname" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter your last name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="password" runat="server" Width="329px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter a password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style5">
                <asp:TextBox ID="address" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter your address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td class="auto-style5">
                <asp:TextBox ID="email" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="enter email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid email id" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact No.</td>
            <td class="auto-style5">
                <asp:TextBox ID="contact" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="enter your contact number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Type</td>
            <td class="auto-style5">
                <asp:TextBox ID="typ" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="enter the type of id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Department</td>
            <td class="auto-style5">
                <asp:TextBox ID="department" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="enter the department name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>
