<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Loops.aspx.cs" Inherits="Loops" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
     <!--container div-->
     <div class="content">
       <div class="container">
        <div class="navbar navbar-inverse navbar-fixed-left">
            <ul class="nav navbar-nav" style="padding-top:0px">
                <li><a href="DataTypes.aspx" style="color: White">Data Types</a></li>
                <li><a href="Variables.aspx" style="color: White">Variables</a></li>
                <li><a href="Constants.aspx" style="color: White">Constants</a></li>
                <li><a href="Storageclasses.aspx" style="color: White">Storage Classes</a></li>
                <li><a href="Operators.aspx" style="color: White">Operators</a></li>
                <li><a href="DecisionMaking.aspx" style="color: White">Decision Making</a></li>
                <li><a href="Loops.aspx" style="color: White">Loops</a></li>
                <li><a href="Functions.aspx" style="color: White">Funcitons</a></li>
                <li><a href="ScopeRules.aspx" style="color: White">Scope Rules</a></li>
                <li><a href="Arrays.aspx" style="color: White">Arrays</a></li>
                <li><a href="Pointers.aspx" style="color: White">Pointers</a></li>
                <li><a href="Strings.aspx" style="color: White">Strings</a></li>
                <li><a href="Structures.aspx" style="color: White">Structures</a></li>
                <li><a href="Union.aspx" style="color: White">Unions</a></li>
                <li><a href="BitFields.aspx" style="color: White">Bit Fields</a></li>
                <li><a href="TypeDef.aspx" style="color: White">Type Def</a></li>
                <li><a href="InputAndOutput.aspx" style="color: White">Input & Output</a></li>
                <li><a href="FileIO.aspx" style="color: White">File I/O</a></li>
                <li><a href="Preprocessor.aspx" style="color: White">Preprocessor</a></li>
                <li><a href="HeaderFiles.aspx" style="color: White">Header Files</a></li>
                <li><a href="TypeCasting.aspx" style="color: White">Type Casting</a></li>
                <li><a href="ErrorHandling.aspx" style="color: White">Error Handling</a></li>
                <li><a href="Recursion.aspx" style="color: White">Recursion</a></li>
                <li><a href="VariableArguments.aspx" style="color: White">Variable Arguments</a></li>
                <li><a href="MemoryManagement.aspx" style="color: White">Memory Management</a></li>
                <li><a href="CommandLineArguments.aspx" style="color: White">Command Line Arguments</a></li>
            </ul>
        </div>
      <div class="loops"  style="padding-left:320px;padding-top:120px">
          <h1>C - Loops</h1>

          <hr />
<p>You may encounter situations, when a block of code needs to be executed several number of times. In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.</p>
<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>
<p>A loop statement allows us to execute a statement or group of statements multiple times. Given below is the general form of a loop statement in most of the programming languages &minus;</p>

<p>C programming language provides the following types of loops to handle looping requirements.</p>
<table class="table table-bordered">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Loop Type &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><a href="/cprogramming/c_while_loop.htm">while loop</a>
<p>Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.</p></td>
</tr>
<tr>
<td>2</td>
<td><a href="/cprogramming/c_for_loop.htm">for loop</a>
<p>Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.</p></td>
</tr>
<tr>
<td>3</td>
<td><a href="/cprogramming/c_do_while_loop.htm">do...while loop</a>
<p>It is more like a while statement, except that it tests the condition at the end of the loop body.</p></td>
</tr>
<tr>
<td>4</td>
<td><a href="/cprogramming/c_nested_loops.htm">nested loops</a>
<p>You can use one or more loops inside any other while, for, or do..while loop.</p></td>
</tr>
</table>
<h2>Loop Control Statements</h2>
<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.</p>
<p>C supports the following control statements.</p>
<table class="table table-bordered">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Control Statement &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><a href="/cprogramming/c_break_statement.htm">break statement</a>
<p>Terminates the <b>loop</b> or <b>switch</b> statement and transfers execution to the statement immediately following the loop or switch.</p></td>
</tr>
<tr>
<td>2</td>
<td><a href="/cprogramming/c_continue_statement.htm">continue statement</a>
<p>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</p></td>
</tr>
<tr>
<td>3</td>
<td><a href="/cprogramming/c_goto_statement.htm">goto statement</a>
<p>Transfers control to the labeled statement.</p></td>
</tr>
</table>
<h2>The Infinite Loop</h2>
<p>A loop becomes an infinite loop if a condition never becomes false. The <b>for</b> loop is traditionally used for this purpose. Since none of the three expressions that form the 'for' loop are required, you can make an endless loop by leaving the conditional expression empty.</p>
<pre class="prettyprint notranslate">
#include &lt;stdio.h&gt;
 
int main () {

   for( ; ; ) {
      printf("This loop will run forever.\n");
   }

   return 0;
}
</pre>
<p>When the conditional expression is absent, it is assumed to be true. You may have an initialization and increment expression, but C programmers more commonly use the for(;;) construct to signify an infinite loop.</p>
<p><b>NOTE</b> &minus; You can terminate an infinite loop by pressing Ctrl + C keys.</p>
<hr />

<hr />




          </div></div>
                

          
</asp:Content>

