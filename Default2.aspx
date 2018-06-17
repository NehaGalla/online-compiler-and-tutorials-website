<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <style>
            .output{
                padding-top:50px;
                position:absolute;
              left:700px;
            }
             .program{
                padding-top:50px;
                position:absolute;
                
                
            }
             .buttons{
                 top:580px;
                 position:relative;
             }
        </style>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500px" Height="500px" CssClass="program">
           
        </asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="500px" CssClass="output"></asp:TextBox>
        <div class="buttons">
         <asp:Button ID="Button3" runat="server" Text="save" OnClick="Button3_Click" />
            <asp:Button ID="Button1" runat="server" Text="compile" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="run" OnClick="Button2_Click" CssClass="run" />
            </div>
    </div>
    </form>
</body>
</html>
