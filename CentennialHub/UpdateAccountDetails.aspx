<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="UpdateAccountDetails.aspx.cs" Inherits="CentennialHub.UpdateAccountDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <style type="text/css">
        #wholeForm h2 {
            border-bottom:3px #cde058 solid;
            padding:5px;
        }
        #wholeForm {
            padding: 10px;
            overflow: auto;
            width: 98%;
            margin-right: 20%;
            display: inline-block;
            border:1px solid blue;
        }
        #personalInfo {
            padding: 10px;
            float: left;
            margin-top: 0;
            overflow: auto;
            height: auto;
            width:98%;
             border:1px solid green;
        }

        #txtBoxesPersonalInfo {
            margin-top: 1.5%;
            left: 20%;
            position: absolute;
            float: left;
            padding: 5px;
            overflow: auto;
            width: 20%;
            height: auto;
            border:1px solid red;
        }
        #wholeForm h4{
            padding:5px;
            text-align:center;
        }
    </style>
    <div id ="wholeForm">
        <h2> Update Account Details</h2>
         <h4>Edit Personal Info</h4>
        <div id ="personalInfo"> 
            <br />
        <label>First Name:</label><br /><br />
        <label>Last Name:</label><br /><br />
        <label>DOB:</label><br /> <br />
        <label>Gender:</label><br /> <br />
        <asp:CheckBox ID="chkCitizen"  runat="server" Text="Citizen" /> &nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ChkPermanentResident"  runat="server" Text="Permanent Resident" />&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ChkBornInCanada"  runat="server" Text="Born in canada"/>
        </div>

        <div id ="txtBoxesPersonalInfo">
        <input name="fname" size="30" type="text" value=""/><br /><br />        <input name="lname" size="30" type="text" value=""/><br /><br />        <input name="DOB" size="30" type="text" value="" placeholder="dd/mm/yyyy" /><br /><br />        <asp:DropDownList ID="gender" runat="server" Height="20px" Width="90px"></asp:DropDownList>
        </div>
       

    </div>
    
</asp:Content>
