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
        <label>DOB:</label><br /> 
        <label>Gender:</label><br />
        <asp:CheckBox ID="chkCitizen"  runat="server" Text="Citizen" /> &nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ChkPermanentResident"  runat="server" Text="Permanent Resident" />&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ChkBornInCanada"  runat="server" Text="Born in canada"/>
        </div>

        <div id ="txtBoxesPersonalInfo">
        <input name="fname" size="30" type="text" value=""/><br />
        <input name="lname" size="30" type="text" value=""/><br />
        <input name="DOB" size="30" type="text" value="" placeholder="dd/mm/yyyy" /><br />
        <asp:DropDownList ID="gender" runat="server" Height="20px" Width="90px"></asp:DropDownList>
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
        <input name="contact" size="30" type="text" value=""/><br />
        <input name="emergencyContact" size="30" type="text" value=""/><br />
        <input name="pEmail" size="30" type="text" value="" placeholder="abc@my.centennial.ca" /><br />
        <input name="sEmail" size="30" type="text" value="" placeholder="abc@hotmail.com " /><br />
        </div>
             <br /><br /><br /><br />
        <br />
        <h4>Program Info</h4>
        <div id ="programInfo">
        <label>Program</label><br />
        <label>Semester</label><br />
        </div>
        <div id="txtBoxesProgram">
        <input name="program" size="30" type="text" value=""/><br />
        <input name="semester" size="30" type="text" value=""/><br />
        </div> 
         <br />
        <br />
        <br />
       <h4>Edit Password</h4>
        <div id ="passwordChange">
            <p><a href="PasswordReset.aspx">Change Password</a></p>
        </div>
        <div id ="buttonsSaveCancel">
            <asp:Button ID="SaveButton" runat="server" Text="Save changes" Width="103px" Height="35px" /> &nbsp; &nbsp; 
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Height="35px" Width="106px" />
        </div>
        </div>
    
</asp:Content>
