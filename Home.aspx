<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style>
        .modalBackground {
            background-color: lightgray;
            filter: alpha(opacity=50);
            opacity: 0.6;
        }

        .modalPopup {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 0px;
            padding-left: 0px;
            width: 450px;
            height: 460px;
        }
        .modalPopup2
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 0px;
            padding-left: 0px;
            width: 600px;
            height: 510px;
        }

        .background {
            background: linear-gradient( rgba(0, 0, 0, 0.30), rgba(0, 0, 0, 0.30) ), url('images/66.jpg');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            height: 100vh;
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
        }

        .lblwelcome {
            text-align: center;
            color: white;
            position: absolute;
            top: 250px;
            left: 100px;
            font-size: 60px;
        }
    </style>

</head>
<body>
      
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
        
    </script>
    <script src="Page on ideone.com" type="text/javascript" ></script>
   
             <script type="text/javascript">
                 window.onload(function () {
                     speechSynthesis.onvoiceschanged = function () {
                         // get the voice
                         var voices = speechSynthesis.getVoices();
                         var derangedVoice = voices.filter(function (voice) {
                             return voice.name == 'Google UK English';
                         })[0];

                         // create the uttrance
                         var u = new SpeechSynthesisUtterance();
                         u.voice = derangedVoice;
                         u.text = "please signup or sign in to get started";

                         // utter the utterance
                         speechSynthesis.speak(u);
                     }
                 });
    </script>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     
        <div class="background">

            <asp:ImageButton ID="signup" runat="server" ImageUrl="images/sign up.png" Width="72px"
                Height="72px" style="float:right"/>
              <asp:ImageButton ID="signin" runat="server" ImageUrl="images/login.jpeg" Width="72px"
                Height="72px" style="float:right"/>
             <h1 style="float:left"><asp:Literal ID="ltMessage" runat="server"/></h1>
            <asp:Label ID="lblwelcome" CssClass="lblwelcome" runat="server" Text="WELCOME,PLEASE SIGN UP/SIGN IN TO GET STARTED"></asp:Label>
            <div class="model4">
                <!-- register popup-->
                <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="Panel4"
                    TargetControlID="signup" CancelControlID="btnClose3" BackgroundCssClass="modalBackground">
                </cc1:ModalPopupExtender>
                <asp:Panel ID="Panel4" runat="server" CssClass="modalPopup2" align="center" Style="display: none">
                    <div class="table-responsive">
                        <table id="table" runat="server" style="width: 590px; height: 500px;">
                            <tr style="background-color: #0095EB;">
                                <td colspan="3" style="height: 80px; width: 490px;">
                                    <center><h2 style="color: Silver; font-style: normal; font-family: @Arial Unicode MS">SIGNUP</h2></center>
                                </td>
                                <td style="float: right">
                                    <asp:ImageButton ID="btnClose3" runat="server" ImageUrl="images/closed.png" Width="50px"
                                        Height="50px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblusername" runat="server" Text="USERNAME"></asp:Label>
                                </td>
                                <td></td>
                                <td>
                                    <div>
                                        <asp:TextBox ID="username" runat="server"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="valGroup"
                                            ControlToValidate="username" ForeColor="Red" ErrorMessage="this field is required"
                                            runat="server"></asp:RequiredFieldValidator>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="mailid" runat="server" Text="E-MAIL ID"></asp:Label>
                                </td>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="TxtMailid" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="valGroup"
                                        ControlToValidate="TxtMailid" ForeColor="Red" ErrorMessage="this field is required"
                                        runat="server"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="regEmail" ControlToValidate="TxtMailid" Text="(Invalid email)"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server"
                                        ValidationGroup="valGroup" ForeColor="Red" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblpassword" runat="server" Text="PASSWORD"></asp:Label>
                                </td>
                                <td></td>
                                <td>
                                    <div>
                                        <asp:TextBox ID="password" runat="server" TextMode="Password"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="valGroup"
                                            ControlToValidate="password" ForeColor="Red" ErrorMessage="this field is required"
                                            runat="server"></asp:RequiredFieldValidator>
                                    </div>
                                </td>
                            </tr>
                           
                            <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="btBtnReg" runat="server" ImageUrl="images/continue.png" Width="200px"
                                        Height="100px" OnClick="signup_Click" CausesValidation="true" ValidationGroup="valGroup" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="btnReset" runat="server" ImageUrl="images/restt.png" Width="200px"
                                        Height="100px" CausesValidation="false" OnClientClick="btnReset_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />

                </asp:Panel>

            </div>

                              <div class="model3">
                        <!-- student popup-->
                        <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel3"
                            TargetControlID="signin" CancelControlID="close1" BackgroundCssClass="modalBackground">
                        </cc1:ModalPopupExtender>
                        <asp:Panel ID="Panel3" runat="server" CssClass="modalPopup" align="center" Style="display: none">
                            <table class="table" id="Table4" runat="server" style="width: 450px; height: 400px;
                                border-collapse: collapse;">
                                <tr style="background-color: #0095EB">
                                    <td style="height: 50px; width: 470px; font-family: Fertigo; font-size: 30px; color: White;"
                                        colspan="2">
                                        <center>Login</center>
                                    </td>
                                    <td style="float: right">
                                        <asp:ImageButton ID="close1" ImageUrl="images/closed.png" Height="45px" Width="45px"
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:240px">
                                        username:
                                    </td>
                                    <td style="width:240px">
                                        <asp:TextBox ID="Lg_username" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        password:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Lg_password" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-left:20px">
                                        <asp:ImageButton ID="stulog" ImageUrl="images/LOGIN.png" Height="80px" Width="100px"
                                            runat="server" OnClick="signin_Click" />
                                    </td>
                                    <td colspan="2">
                                        <asp:ImageButton ID="cancel2" ImageUrl="images/CANCEL.png" Height="80px" Width="100px"
                                            runat="server" PostBackUrl="~/home/Home.aspx" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="Linkbutton1" Text="forogt password" runat="server"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </div>     
        </div>
    </form>
</body>
</html>
