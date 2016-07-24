<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="studentHomepage.aspx.cs" Inherits="CentennialHub.studentHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Student Homepage
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <ul class="studentmenu">
           <li><a href="#">Build Timetable</a></li>
           <li><a href="#">View Student Record</a></li>
           <li><a href="UpdateAccountDetails.aspx">Update Information</a></li>
           <li><a href="PasswordReset.aspx">Update Password</a></li>
           <li><a href="#">Drop Courses</a></li>
           <li><a href="#">Apply for Re-admit</a></li>
            </ul>
</asp:Content>
