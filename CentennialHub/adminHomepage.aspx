<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="adminHomepage.aspx.cs" Inherits="CentennialHub.adminHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Admin Homepage
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
     <ul class="adminMenu">
                
                <li><a href="createStudentID.aspx" >Create Student ID</a></li>
            <li><a href="createAdvisorID.aspx" >Create Advisor ID</a></li>
                 <li><a href="#">Update Content</a></li>
           <li><a href="PasswordReset.aspx">Update Password</a></li>
           
            </ul>
</asp:Content>
