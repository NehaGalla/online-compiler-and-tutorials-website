<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeUser.aspx.cs" Inherits="WelcomeUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="js/CSSPlugin.min.js"></script>
    <script type="text/javascript" src="js/TweenLite.min.js"></script>
    <style>
        body {
            font-family: 'Source Sans Pro', Arial, sans-serif;
            background: #becccc;
            text-transform: uppercase;
            color: #fff;
            text-align: center;
            letter-spacing: -3px;
            padding: 0px;
        }

        .welcome {
            background: linear-gradient( rgba(0, 0, 0, 0.30), rgba(0, 0, 0, 0.30) ), url('images/66.jpg');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            height: 100vh;
            position: fixed;
            left: 0px;  
            top: 0px;
            width: 100%;
        }
           
        

        .gray {
            background: linear-gradient( rgba(0, 0, 0, 0.40), r gba(0, 0, 0, 0.40) ), url('');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            height: 800px;
            position: fixed;
            left: 0px;
            width: 1400px;
        }

        #logo1 {
            position: relative;
            width: 60px;
            height: 60px;
            background: url(img/logo_black.jpg) no-repeat;
        }


        h2 {
            font-size: 100px;
            position: relative;
        }

        /*
text-shadow originated from: http://codepen.io/zitrusfrisch
*/
        .superShadow {
            text-shadow: 0 1px 0 hsl(174,5%,80%), 0 2px 0 hsl(174,5%,75%), 0 3px 0 hsl(174,5%,70%), 0 4px 0 hsl(174,5%,66%), 0 5px 0 hsl(174,5%,64%), 0 6px 0 hsl(174,5%,62%), 0 7px 0 hsl(174,5%,61%), 0 8px 0 hsl(174,5%,60%), 0 0 5px rgba(0,0,0,.05), 0 1px 3px rgba(0,0,0,.2), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.2), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.3);
        }

        strong {
            font-size: 150px;
        }

        .button1 {
            width: 100px;
            height: 50px;
            background-color: dodgerblue;
            color: white;
        }

        .button2 {
            width: 100px;
            height: 50px;
            background-color: dodgerblue;
            color: white;
        }

        .button3 {
            width: 100px;
            height: 50px;
            background-color: dodgerblue;
            color: white;
        }

        .button4 {
            width: 100px;
            height: 50px;
            background-color: dodgerblue;
            color: white;
        }

        .option {
            font: 50px;
            letter-spacing: 1px;
        }
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup4
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 0px;
            padding-left: 0px;
            width: 390px;
            height: 300px;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <script type="text/javascript">
            window.onload()= function(){

          
            speechSynthesis.onvoiceschanged = function () {

                var voices = speechSynthesis.getVoices();
                var derangedVoice = voices.filter(function (voice) {
                    return voice.name == 'Google US English ';
                })[0];
                var u = new SpeechSynthesisUtterance();
                u.voice = derangedVoice;
                speechSynthesis.speak(u);
            }
            }
        </script>
        <div class="welcome">


            <div class="gray">


                <h2>welcome<asp:Label ID="wcusername" runat="server" Text="user"></asp:Label>
                </h2>
              
                <asp:Button CssClass="button2" ID="Button2" runat="server" Text="Learn" />
                <asp:Button CssClass="button3" ID="Button3" runat="server" Text="practice" OnClick="Button3_Click" />
                <asp:Button CssClass="button4" ID="Button4" runat="server" Text="Take quiz" OnClick="Button4_Click" />

               
                </div></div>
                  <div class="model2">
                        <!-- admin popup-->
                        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel2"
                            TargetControlID="Button2" CancelControlID="Close" BackgroundCssClass="modalBackground">
                        </cc1:ModalPopupExtender>
                        <asp:Panel ID="Panel2" runat="server" CssClass="modalPopup4" align="center" Style="display: none">
                            <div class="table-responsive table-condensed">
                                <table class="table" id="Table3" runat="server" style="width: 390px; height: 300px;
                                    border-collapse: collapse;">
                                    <tr style="background-color: #0095EB">
                                        <td style="height: 50px; width: 470px; font-family: Fertigo; font-size: 30px; color: White;"
                                            colspan="2">
                                            <center>Navigate to:</center>
                                        </td>
                                        <td style="float: right">
                                            <asp:ImageButton ID="Close" ImageUrl="images/closed.png" Height="45px" Width="45px"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td>
                                            <asp:Button ID ="Btnlogin" runat="server" width="100px" Height="100px" OnCommand="Btnlogin_Click" Text="C" />
                                        </td>
                                         <td>
                                            <asp:Button ID ="Btncpp" runat="server" width="100px" Height="100px" OnCommand="Btncpp_Click" Text="C++" />
                                        </td>
                                         <td> 
                                            <asp:Button ID ="Btnjava" runat="server" width="100px" Height="100px" OnCommand="Btnjava_Click" Text="JAVA" /></td>
                                        <td> 
                                            <asp:Button ID ="btnoop" runat="server" width="100px" Height="100px" OnCommand="btnoop_Click" Text="OOP " /></td>

                                        </tr>
                                </table>
                            </div>
                        </asp:Panel>
                    </div>

        <script src="js/TimelineMax.min.js"></script>
        <script src="js/TweenLite.min.js"></script>
        <script src="js/TimelineLite.min.js"></script>
        <script src="js/TweenMax.min.js"></script>
        <script>



            var tl = new TimelineMax({ repeat: 6, repeatDelay: 1, yoyo: true });
            tl.staggerTo("h2", 0.2, { className: "+=superShadow", top: "-=10px", ease: Power1.easeIn }, "0.3", "start")
            TweenMax.staggerFrom(".button1", 0.5, { opacity: 0, y: 200, scale: 2, delay: 0.5 })
            TweenMax.staggerFrom(".button2", 0.5, { opacity: 0, y: 200, scale: 2, delay: 2 })
            TweenMax.staggerFrom(".button3", 0.5, { opacity: 0, y: 200, scale: 2, delay: 3 })
            TweenMax.staggerFrom(".button4", 0.5, { opacity: 0, y: 200, scale: 2, delay: 4 })

        </script>



    </form>
</body>
</html>
