<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="UpdateAccountDetails.aspx.cs" Inherits="CentennialHub.UpdateAccountDetails" %>
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
                     <h2> Update Account Details</h2>
                </td>
                <td>
                    <a href="form1.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
                    <a href="Default.aspx">Logout</a>
                </td>
            </tr>
        </table>             
        </div>      
         <h4>Edit Personal Info</h4>
        <div id ="personalInfo"> 
        <label>First Name:</label><br />
        <label>Last Name:</label><br />
        <label>address:</label><br /> 
        <label>Gender:</label><br />
        <label>Student Type:</label>
       
        </div>
        <div id ="txtBoxesPersonalInfo">
        <asp:TextBox ID="fname" Width="240px" runat="server"></asp:TextBox>        <asp:TextBox ID="lname" Width="240px" runat="server"></asp:TextBox>        <asp:TextBox ID="address" Width="240px" runat="server"></asp:TextBox>        <asp:TextBox ID="gender" Width="240px" runat="server"></asp:TextBox> <br />
        <asp:CheckBox ID="Domestic"  runat="server" Text="Domestic" /> &nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="International"  runat="server" Text="International"/>
        </div>  
            <br /><br /><br /><br />
        <br /><br />
        <h4>Edit Contact Info</h4>
        <div id="ContactInfo">         
        <label>Contact</label><br />
        <label>Emergency Contact</label><br />
        <label>Primary Email</label><br />
        <label>Secondary Email</label><br /> 
        </div>
        <div id ="txtBoxesContactInfo">
        <asp:TextBox ID="contact" Width="240px" runat="server"></asp:TextBox>        <asp:TextBox ID="emergencyContact" Width="240px" runat="server"></asp:TextBox>
        <asp:TextBox ID="pEmail" Width="240px" placeholder="abc@my.centennial.ca"  runat="server"></asp:TextBox>        <asp:TextBox ID="sEmail" Width="240px"  placeholder="abc@hotmail.com "  runat="server"></asp:TextBox>
        </div>
             <br /><br /><br /><br />
        <br />
        <h4>Program Info</h4>
        <div id ="programInfo">
        <label>Program</label><br />
        <label>Semester</label><br />
        </div>
        <div id="txtBoxesProgram">
        <asp:TextBox ID="program" Width="240px" runat="server"></asp:TextBox>        <asp:TextBox ID="semester" Width="240px" runat="server"></asp:TextBox>
        </div> 
         <br />
        <br />
        <br />
       <h4>Edit Password</h4>
        <div id ="passwordChange">
            <p><a href="PasswordReset.aspx">Change Password</a></p>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div id ="buttonsSaveCancel">
            <asp:Button ID="SaveButton" runat="server" Text="Save changes" Width="99px" Height="30px" /> &nbsp; &nbsp; 
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Height="30px" Width= "99px" />
        </div>
        </div>
    <br />
    <br />
    <br />
</asp:Content>
