<%@ Page Title="" Language="C#" MasterPageFile="quiz.master"
    AutoEventWireup="true" CodeFile="operators.aspx.cs" Inherits="c_quiz_operators" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
      <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" /><br />
                <asp:HiddenField ID="quizfield" runat="server" />
                <!-- quiz details -->
              <!--  <asp:HiddenField ID="catid" runat="server" />
   
                  -->
                 <asp:ValidationSummary ID="quizvalidationsummary" runat="server" ShowMessageBox="false" DisplayMode="BulletList" ShowSummary="true" HeaderText="<br />&nbsp;&nbsp;Please check the following:-" ForeColor="Red" ValidationGroup="quizvalidation" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Width="280px" /><br />
                    <!-- questions -->
                    <div id="questionsdiv" runat="server" style="top:100px;position:absolute">
                        <asp:Label ID="lblalert" runat="server" ForeColor="Red" Font-Size="15px" Visible="false" /><br />
                      <div class="lbl" style="float:right;left:1000px;position:absolute">  <asp:Label ID="text" runat="server" Text="LEVEL:" Font-Size="25px" ForeColor="Black"></asp:Label>
                        <asp:Label ID="lblstatus" runat="server" ForeColor="Blue" Font-Size="20px" Visible="true"></asp:Label></div>
                        <asp:Repeater ID="questionsrpt" runat="server" OnItemDataBound="questionsrpt_ItemDataBound">
                            <ItemTemplate>
                                <asp:HiddenField ID="hfID" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "id")%>' Visible="false" />
                                <asp:HiddenField ID="categoryID" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "categoryid")%>' Visible="false" />
                                <asp:RequiredFieldValidator ID="rfvquiz" runat="server" Display="Dynamic" ControlToValidate="rbloptions" ValidationGroup="quizvalidation" ForeColor="Red" Text="*" SetFocusOnError="true" />&nbsp;
                                <asp:Label ID="lblquestion" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "title")%>' /><br />
                                <asp:RadioButtonList ID="rbloptions" runat="server" ValidationGroup="quizvalidation" />
                            </ItemTemplate>
                            
                        </asp:Repeater>
                        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" ValidationGroup="quizvalidation"  OnClick="btnsubmit_Click"/>
                    </div>
</asp:Content>