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
        #btns{
            padding:15px;
            margin-left: 0;
        }
    </style>
    <h5>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />&nbsp; &nbsp; &nbsp; &nbsp;   
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h5>
 
       <div id="btns">
           <asp:Button ID="btnCheckReq" runat="server" Text="Check Requirements" OnClick="Button1_Click" Width="142px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnRegister_Click" Width="65px" style="margin-left: 0px" /> <br />
           <br />
       

     <asp:Label ID="Label3" runat="server" Text=""></asp:Label> &nbsp; &nbsp;&nbsp; &nbsp;
     <asp:Label ID="Label4" runat="server" Text=""></asp:Label>&nbsp; &nbsp;&nbsp; &nbsp;
      <asp:Label ID="Label5" runat="server" Text=""></asp:Label>&nbsp; &nbsp;&nbsp;<br />
&nbsp;&nbsp;
    <br />
  <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    <br />
    
    <br />
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
