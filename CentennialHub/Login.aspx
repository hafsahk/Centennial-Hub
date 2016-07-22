<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 78%;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 270px;
        }
        .auto-style4 {
            width: 625px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Login</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Id</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Login" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>

   
   

 

    
    
   
    

</asp:Content>

