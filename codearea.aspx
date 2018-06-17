
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="codearea.aspx.cs" Inherits="codearea"  ValidateRequest = "false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
   <div>
        <style>
            .output{
                top:150px;
               
                position:absolute;
              left:700px;
            }
             .program{
                 top:150px;position:absolute;
                
                left:30px;
            }
             .buttons{
                 top:00px;
                 position:absolute;
             }
            
            .input{
                top:400px;
               
                position:absolute;
              
            }

             .label{
                top:380px;
               
                position:absolute;
              
            }
        </style>
     <div class="box" style="width:1253px; height:600px; border:solid; border-color:black; border-width:5px;border-style:groove; top:100px;position:absolute;left:60px;float:right">
       <div class="options" style="position:absolute;top:50px;left:30px" >
            
           <asp:DropDownList ID="DDLoptions" runat="server" AutoPostBack="true" Width="150px"><asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
              
          
                      </asp:DropDownList>
            <h3>program</h3>

       </div>
       
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="550px" Height="400px" CssClass="program">
            
           
        </asp:TextBox>
        
      <h3 style="left:700px;position:absolute;top:60px">output</h3>
     
          
        
       <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="400px" CssClass="output"></asp:TextBox>
        <div class="buttons" style="float:right; left:400px; top:50px">
         <asp:Button ID="Button3" runat="server" Text="save" OnClick="save_Click" />
            <asp:Button ID="Button1" runat="server" Text="compile" OnClick="compile_Click" />
        <asp:Button ID="Button2" runat="server" Text="run" OnClick="run_Click" CssClass="run" />
            </div>
          </div>
    </asp:Content>