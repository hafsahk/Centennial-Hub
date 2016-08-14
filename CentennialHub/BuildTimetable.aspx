<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="BuildTimetable.aspx.cs" Inherits="CentennialHub.BuildTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <style>
        h5{
            width:85%;
            text-align:right;
        }
    </style>
    <h5>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />&nbsp; &nbsp; &nbsp; &nbsp;   
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h5>
 <ul class="studentmenu">
       <li><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" Width="69px" /></li>
       <li>
           <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
       </li>
 </ul>
</asp:Content>
