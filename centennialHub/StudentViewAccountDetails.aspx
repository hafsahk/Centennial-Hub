<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StudentViewAccountDetails.aspx.cs" Inherits="CentennialHub.ViewAccountDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Style/design.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
   
    <div id ="wholeForm">  
        <div id ="title">
     <table>
            <tr>
                <td>
                     <h2 align="center">  Account Details</h2>
                </td>
                <td>
                    <a href="#">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
                    <a href="Default.aspx">Logout</a>
                </td>
            </tr>
        </table>             
        </div>      
         <h4>Personal Info</h4>
        <div id ="personalInfo"> 
        <label>First Name:</label><br />
        <label>Last Name:</label><br />
        <label>address:</label><br /> 
         <label>Gender:</label><br />  
        </div>
        <div id ="txtBoxesPersonalInfo">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <br />
       
        </div>  
        <br /> <br /><br /><br />
        <h4> Contact Info</h4>
        <div id="ContactInfo">         
        <label>Contact:</label><br />
        <label>Emergency Contact:</label><br />
        <label>Primary Email:</label><br />
        <label>Secondary Email:</label><br /> 
        </div>
        <div id ="txtBoxesContactInfo">
       
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> <br />
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> 
        </div>
             <br /><br /><br /><br />
        <br />
        <h4>Program Info</h4>
        <div id ="programInfo">
        <label>Program:</label><br />
        <label>Semester:</label><br />
        </div>
        <div id="txtBoxesProgram">
         <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> <br />
         <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
       
        </div> 
    
      
        </div>
    

</asp:Content>
