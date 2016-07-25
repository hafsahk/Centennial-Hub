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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    Create New Student ID<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Student ID</td>
            <td>
                <asp:TextBox ID="newID" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">First Name</td>
            <td>
                <asp:TextBox ID="fname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Middle Name</td>
            <td>
                <asp:TextBox ID="mname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name</td>
            <td>
                <asp:TextBox ID="lname" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="password" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="address" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="email" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Contact No.</td>
            <td>
                <asp:TextBox ID="contact" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Program</td>
            <td>
                <asp:TextBox ID="program" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Semester</td>
            <td>
                <asp:TextBox ID="semester" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Cummulative GPA</td>
            <td>
                <asp:TextBox ID="gpa" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;  
</asp:Content>
