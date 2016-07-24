<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="advisorPasswordReset.aspx.cs" Inherits="CentennialHub.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div>
        <div id="title">
            <table>
                <tr>
                    <td>
                        <h2>Reset Password</h2>
                    </td>
                    <td><a href="UpdateAccountDetails.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
                        <a href="Default.aspx">Logout</a>

                    </td>
                </tr>
            </table>
        </div>        
        <table>
            <tr>
                <td>
                    <h4>Change Password</h4>
                </td>
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td><p>Please enter your current password and new password</p></td>
                <td><p>Password requirements</p></td>
            </tr>
            <tr>
                <td>                        
                        <label style="display:inline-block; width:190px;">Current Password:</label>
                        <input name="currentPass" size="30" type="text" value="" /><br />
                        <label style=" display:inline-block;width:190px;">New Password:</label>
                        <input name="newPass" size="30" type="text" value="" /><br />
                        <label style="display:inline-block; width:190px;">Confirm New Password:</label>
                        <input name="confirmPass" size="30" type="text" /><br /><br />
                </td>
                <td>                        
                            <ul style="padding-left: 10px;">
                                <li>The password length must be 10 or greater.</li>
                                <li>The password must contain a letter.</li>
                                <li>The password must contain a digit.</li>
                                <li>The password must contain at least one of these special characters:#*/?$!@</li>
                            </ul>
                </td>
            </tr>
            </table>
                    
        <div id="buttonsSaveCancl">
            <asp:Button ID="SaveButton" runat="server" Text="Save changes" Width="99px" Height="30px" />&nbsp; &nbsp; 
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Height="30px" Width="99px" />
        </div><br /><br />
   </div>
</asp:Content>
