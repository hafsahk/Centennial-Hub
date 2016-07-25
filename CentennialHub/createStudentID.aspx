<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="createStudentID.aspx.cs" Inherits="CentennialHub.createStudentID1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Create Student ID
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 312px;
        }
        .auto-style3 {
            width: 359px;
        }
        .auto-style4 {
            width: 312px;
            height: 38px;
        }
        .auto-style5 {
            width: 359px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 312px;
            height: 33px;
        }
        .auto-style8 {
            width: 359px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    Create New Student ID<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Student ID</td>
            <td class="auto-style3">
                <asp:TextBox ID="newID" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter new id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">First Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="fname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Middle Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="mname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter middle name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Last Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="lname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter last name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style3">
                <asp:TextBox ID="password" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter a password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style3">
                <asp:TextBox ID="address" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td class="auto-style3">
                <asp:TextBox ID="email" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="enter email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter a valid email id" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Contact No.</td>
            <td class="auto-style8">
                <asp:TextBox ID="contact" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="enter contact number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Program</td>
            <td class="auto-style3">
                <asp:TextBox ID="program" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="enter the program name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Semester</td>
            <td class="auto-style3">
                <asp:TextBox ID="semester" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="enter semester " ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Cummulative GPA</td>
            <td class="auto-style3">
                <asp:TextBox ID="gpa" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="enter gpa" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
&nbsp;  
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
</asp:Content>
