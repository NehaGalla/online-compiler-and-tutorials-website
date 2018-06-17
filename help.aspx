<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits=" help" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phcontent" runat="Server">
    <div class="mail" style="top:200px; position:absolute">
        <table id="sendmail" runat="server" width="1003px" height="100vh" style="border-width:5px; border-style:solid; border-color:black">
             <tr><td style="border-width:1px; border-style:solid; border-color:black">
                 <h3> enter your query along with your mailid</h3>
                 </td></tr>
            <tr><td style="border-width:1px; border-style:solid; border-color:black">
                <asp:Label ID="Label1" runat="server" Text="emailid"></asp:Label>
                </td><td style="border-width:1px; border-style:solid; border-color:black">
                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td></tr>
            <tr><td style="border-width:1px; border-style:solid; border-color:black"><asp:Label ID="lblsub" runat="server" Text="subject"></asp:Label></td>
                <td style="border-width:1px; border-style:solid; border-color:black"> <asp:TextBox ID="txtsub" runat="server"></asp:TextBox></td>
            </tr>

            <tr><td style="border-width:1px; border-style:solid; border-color:black"><asp:Label ID="lblmsg" runat="server" Text="message"></asp:Label></td>
                <td style="border-width:1px; border-style:solid; border-color:black"><asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Width="500px" Height="200px"></asp:TextBox></td>
            </tr>
            <tr><td style="border-width:1px; border-style:solid; border-color:black">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" /></td>
                <td style="border-width:1px; border-style:solid; border-color:black">
                    <asp:Button ID="btnclear" runat="server" Text="reset" /></td>
            </tr>

        </table>
    </div>
    </asp:Content>
    
