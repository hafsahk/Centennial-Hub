<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="CentennialHub.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link href="Style/design.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div id="wholeForm">
        <div id="title">
            <table>
                <tr>
                    <td>
                        <h2>Reset Password</h2>
                    </td>
                    <td><a href="UpdateAccountDetails.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
            <a href="Default.aspx">Logout</a></td>
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
            <input name="currentPass" size="30" type="text" value="" /><br />
            <input name="newPass" size="30" type="text" value="" /><br />
            <input name="confirmPass" size="30" type="text" /><br />
        </div>
        <br /> <br /><br /><br /><br />
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
            <asp:Button ID="SaveButton" runat="server" Text="Save changes" Width="99px" Height="30px" />
            &nbsp; &nbsp; 
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Height="30px" Width="99px" />
        </div>
        <br />
        <br />
    </div>

</asp:Content>
