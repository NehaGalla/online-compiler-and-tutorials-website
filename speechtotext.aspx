<%@ Page Language="C#" AutoEventWireup="true" CodeFile="speechtotext.aspx.cs" Inherits="speechtotext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="speech-input.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <style>
.speech-input {
	font-size: 2em;
	padding: .1em;
}
</style>

<asp:textBox id="speech" runat="server" OnTextChanged="speech_TextChanged" CssClass="speech-input"></asp:textBox>

        <asp:Label ID="test" runat="server" Text="" ></asp:Label>

         <script src="speech-input.js"></script>
    </div>
    </form>
</body>
</html>
