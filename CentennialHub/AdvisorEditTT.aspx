<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AdvisorEditTT.aspx.cs" Inherits="CentennialHub.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table>
            <tr>
                <td>
                     <h2> Student Time Table  </h2>
                </td>
                <td>
                    <a href="adminHomepage.aspx">Back</a>  &nbsp; &nbsp; | &nbsp; &nbsp;
                    <a href="Default.aspx">Logout</a>
                </td>
            </tr>
        </table> 
    <asp:Table runat="server" ID="Table1">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Courses"></asp:Label>
                <hr />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                <hr />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Code"></asp:Label>
                <hr />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Credit"></asp:Label>
                <hr />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Title"></asp:Label>
                <hr />
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" />
                <asp:Label ID="Label6" runat="server" Text="Software Engineering Techinician"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="COMP"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="231"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server" Text="4 "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server" Text="Computer Programer Project"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox2" runat="server" />
                <asp:Label ID="Label11" runat="server" Text="Software Engineering Techinician"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label12" runat="server" Text="COMP"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label13" runat="server" Text="212"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label14" runat="server" Text="4 "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label15" runat="server" Text="Programming 3"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox3" runat="server" />
                <asp:Label ID="Label16" runat="server" Text="Software Engineering Techinician"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label17" runat="server" Text="CNET"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label18" runat="server" Text="124"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label19" runat="server" Text="4"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label20" runat="server" Text="Fundamental of Computer Network"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox4" runat="server" />
                <asp:Label ID="Label21" runat="server" Text="Software Engineering Techinician"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label22" runat="server" Text="COMP"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label23" runat="server" Text="311"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label24" runat="server" Text="4"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label25" runat="server" Text="Software Testing & Quality"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Drop" />
    <asp:Button ID="Button2" runat="server" Text="Cancel" />
    <br />
    <br />

    <asp:Label ID="Label26" runat="server" Text="Total Credit Hours:"></asp:Label>
    <asp:Label ID="Label27" runat="server" Text="16"></asp:Label>
    <br />
    
</asp:Content>
