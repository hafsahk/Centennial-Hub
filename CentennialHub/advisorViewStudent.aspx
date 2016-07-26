<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="advisorViewStudent.aspx.cs" Inherits="CentennialHub.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
     <table>
            <tr>
                <td>
                     <h2> Student Details </h2>
                </td>
                <td>
                    <a href="adminHomepage.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
                    <a href="Default.aspx">Logout</a>
                </td>
            </tr>
        </table>      
    <br />
    <asp:Label ID="Label1" runat="server" Text="Student ID : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <br />
    
    <asp:Label ID="Label2" runat="server" Text="First Name : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Last Name : "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Label ID="Label4" runat="server" Text="Program Name : "></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label5" runat="server" Text="Email Address : "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Label ID="Label6" runat="server" Text="Current Semester : "></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    
     <a href="advisorEdit.aspx">Edit Time Table</a>
</asp:Content>
