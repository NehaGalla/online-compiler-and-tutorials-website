<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Get Started.aspx.cs" Inherits="Get_Started" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="Server">
    <div>
        <nav class="navbar navbar-default navbar-fixed-top " style=" height: 100px; background-color: #2e76b6">
            <div class="container-fluid">
                <div class="navbar-header">
                    <h2 style="color:white;font-family:'AR CENA';padding-top:13px">WELCOME
                        <asp:Label ID="wcusername" runat="server" Text=""></asp:Label></h2>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar1">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <!--navbar header div-->
                <div class="collapse navbar-collapse" id="myNavbar1">
                    <ul class="nav navbar-nav navbar-right">
                        <li style="top: 30px;">
                            <a href="Get Started.aspx" style="color: white; font-size: 20px; font-family: 'AR JULIAN'">Get Started</a></li>
                        <li style="top: 30px;">
                            <a href="Tutorials.aspx" style="color: white; font-size: 20px; font-family: 'AR JULIAN'">Tutorials</a></li>
                        <li style="top: 30px;">
                           
                            <a href="compilex-master/examples/compilex-Demo1/index.html" style="color: white; font-size: 20px; font-family: 'AR JULIAN'">practice</a></li>
                        <li style="top: 30px;">
                            <a href="Take Quiz.aspx" style="color: white; font-size: 20px; font-family: 'AR JULIAN'">Take quiz</a></li>
                        <li style="top: 30px; padding-left: 10px">
                            <a href="Home.aspx" style="color: white; font-size: 20px; font-family: 'AR JULIAN'">sign out</a></li>

                    </ul>

                </div>
                <!--container div-->
            </div>
        </nav>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
  <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" /><br />
    <asp:HiddenField ID="quizfield" runat="server" />
    <!-- quiz details -->
    <div id="quizdetails" runat="server">
        <!-- quiz title -->
        <asp:Label ID="lblquizname" runat="server" CssClass="quizname" />
        <br />
        <br />

        <!-- description -->
        
        <br />
        <br />
    </div>
    <div style="clear: both"></div>

    <!-- quiz questions -->
    <div id="quiz">
        <asp:ValidationSummary ID="quizvalidationsummary" runat="server" ShowMessageBox="false" DisplayMode="BulletList" ShowSummary="true" HeaderText="<br />&nbsp;&nbsp;Please check the following:-" ForeColor="Red" ValidationGroup="quizvalidation" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Width="280px" /><br />
        <!-- user details -->
        <div id="detailsdiv" runat="server">
            <fieldset>
                <legend>Please fill your details</legend>
                <ol>
                    <li>
                        <asp:Label ID="lblname" runat="server" AssociatedControlID="txtname">Name</asp:Label>
                        <asp:TextBox runat="server" ID="txtname" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="name required" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                    <li>
                        <asp:Label ID="lblemail" runat="server" AssociatedControlID="txtemail">Email Address</asp:Label>
                        <asp:TextBox runat="server" ID="txtemail" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="email required" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>                    
                </ol>
            </fieldset>
        </div>
        <!-- questions -->
        <div id="questionsdiv" runat="server">
            <asp:Label ID="lblalert" runat="server" ForeColor="Red" Font-Size="15px" Visible="false" /><br />            
            <asp:Repeater ID="questionsrpt" runat="server" OnItemDataBound="questionsrpt_ItemDataBound">
                <ItemTemplate>
                    <asp:HiddenField ID="hfID" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "id")%>' Visible="false" />
                    <asp:RequiredFieldValidator ID="rfvquiz" runat="server" Display="Dynamic" ControlToValidate="rbloptions" ValidationGroup="quizvalidation" ForeColor="Red" Text="*" SetFocusOnError="true"/>&nbsp;<asp:Label ID="lblquestion" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "title")%>' /><br />
                    <asp:RadioButtonList ID="rbloptions" runat="server" ValidationGroup="quizvalidation" />                    
                </ItemTemplate>
            </asp:Repeater>
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" ValidationGroup="quizvalidation" />
        </div>
    </div>
 </asp:Content>
