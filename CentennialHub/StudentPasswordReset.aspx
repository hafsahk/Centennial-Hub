<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StudentPasswordReset.aspx.cs" Inherits="CentennialHub.StudentPasswordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link href="Style/design.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <style>
        #title h5{
            text-align:right;
            width:114.7%;
            }
    </style>
    <div id="wholeForm">
        <div id="title">
            <table>
                <tr>
                    <td>
                        <h5><asp:Label ID="label1" runat="server"></asp:Label></h5>
                        <h2>Reset Password</h2>
                    </td>
                    <td><a href="UpdateAccountDetails.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="Logout_Click" /></td>
                </tr>
            </table>
        </div>
        <h4>Change Password</h4>
        <div id="Passwordreset">
            <p>Please enter your current password and new password</p>
            <label>Current Password:</label><br />
            <label>New Password:</label><br />
            <label>Confirm New Password:</label><br />
            <br />
        </div>
        <div id="txtBoxesPassword">
            <asp:TextBox ID="currentPass" TextMode="Password" Width="240px" runat="server"></asp:TextBox>

            <asp:TextBox ID="newPass" TextMode="Password" Width="240px" runat="server"></asp:TextBox>

        <asp:TextBox ID="confirmPass" TextMode="Password" Width="240px" runat="server"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="newPass" ControlToValidate="confirmPass" 
            ErrorMessage="Password Mismatch"></asp:CompareValidator>  

        </div>
        <br /> <br /><br /><br /><br />
        <br />
        <br />
        <div id="sideNotes">
            <p>Password requirements</p>
            <ul>
                <li>The password length must be 10 or greater.</li>
                <li>The password must contain a letter.</li>
                <li>The password must contain a digit.</li>
                <li>The password must contain at least one of these special characters:#*/?$!@</li>
            </ul>
        </div>
        <br />
        <br />
        <div id="buttonsSaveCancl">

<script>
function myFunction() {
    alert("Password changed successfully!");
}
</script>
            <asp:Button ID="SaveButton" runat="server" Text="Save changes" Width="99px" Height="30px" OnClick="SaveButton_Click" OnClientClick = "myFunction()" />
            &nbsp; &nbsp; 
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Height="30px" Width="99px" OnClientClick="return confirm('Are you sure, you want to cancel?');" OnClick="CancelButton_Click" />
        </div>
        <br />
        <br />
    </div>

</asp:Content>
