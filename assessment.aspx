<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="assessment.aspx.cs" Inherits="assessment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phcontent" runat="Server">
                <!--container div-->
              <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" /><br />
                <asp:HiddenField ID="quizfield" runat="server" />
                <!-- quiz details -->
              <!--  <asp:HiddenField ID="catid" runat="server" />
   
                  -->
                 <asp:ValidationSummary ID="quizvalidationsummary" runat="server" ShowMessageBox="false" DisplayMode="BulletList" ShowSummary="true" HeaderText="<br />&nbsp;&nbsp;Please check the following:-" ForeColor="Red" ValidationGroup="quizvalidation" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Width="280px" /><br />
                    <!-- questions -->
                    <div id="questionsdiv" runat="server" style="top:100px;position:absolute">
                        <asp:Label ID="lblalert" runat="server" ForeColor="Red" Font-Size="15px" Visible="false" /><br />
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

