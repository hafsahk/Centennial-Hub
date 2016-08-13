<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="studentHomepage.aspx.cs" Inherits="CentennialHub.studentHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Student Homepage
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
   <%-- <h6> </h6>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="GettingStudentData" OnClick="LinkButton1_Click">View/Build Timetable</asp:LinkButton>--%>
    <ul class="studentmenu">
    <%--    <li><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></li>
    --%>       <li><a href="BuildTimetable.aspx"> view/Build Timetable</a></li>
           <li><a href="#"> View Student Record</a></li>
           <li><a href="UpdateAccountDetails.aspx">Update Information</a></li>
           <li><a href="StudentPasswordReset.aspx">Change Password</a> </li>
           <li><a href="#">Drop Courses</a></li>
           <li><a href="#">Apply for Re-admit</a></li>
            </ul>
</asp:Content>
