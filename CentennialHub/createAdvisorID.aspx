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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <p>Create New Advisor ID</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Faculty ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">First Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Middle Name</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Contact No.</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Type</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Department</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>
