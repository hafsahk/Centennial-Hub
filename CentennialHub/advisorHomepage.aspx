<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="advisorHomepage.aspx.cs" Inherits="CentennialHub.advisorHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Advisor Homepage
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <style>
        h5{
            width:80%;
            text-align:right;
        }
    </style>
    <h5>
        <asp:Button ID="btnLogout" runat="server" OnClick="Button1_Click" Text="Logout" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </h5>
     <ul class="studentmenu">
                 <li><a href="#">Build Student Timetable</a></li>
          <li><a href="#">Edit Student Timetable</a></li>
          <li><a href="#">View Student Record</a></li>
          <li><a href="#">Update Information</a></li>
            <li><a href="AdvisorPasswordUpdate.aspx">Update Password</a></li>
           <li><a href="#">Apply for Re-admit</a></li>
            </ul>
</asp:Content>
