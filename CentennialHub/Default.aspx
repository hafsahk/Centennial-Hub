<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
     <ul>
        <li>Login As a</li>
        <li><a href="studentLogin.aspx">Student</a></li>
        <li><a href="advisorLogin.aspx">Advisor</a></li>
        <li><a href="Login.aspx">Admin</a></li>
    </ul>
</asp:Content>

