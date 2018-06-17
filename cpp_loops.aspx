<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_loops.aspx.cs" Inherits="cpp_loops" %>


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
                <ul class="nav navbar-nav" style="padding-top: 0px">
                    <li><a href="cpp_datatypes.aspx" style="color: White">Data Types</a></li>
                    <li><a href="cpp_variables.aspx" style="color: White">Variables</a></li>
                    <li><a href="cpp_variablescope.aspx" style="color: White">Variable scope</a></li>
                    <li><a href="cpp_constants.aspx" style="color: White">Constants/Literals</a></li>
                     <li><a href="cpp_modifier.aspx" style="color: White">Modifier Types</a></li>
                    <li><a href="cpp_storageclasses.aspx" style="color: White">Storage Classes</a></li>
                    <li><a href="cpp_operators.aspx" style="color: White">Operators</a></li>
                    <li><a href="cpp_decisionmaking.aspx" style="color: White">Decision Making</a></li>
                    <li><a href="cpp_loops.aspx" style="color: White">Loops</a></li>
                    <li><a href="cpp_functions.aspx" style="color: White">Funcitons</a></li>
                    <li><a href="cpp_numbers.aspx" style="color: White">Numbers</a></li>
                    <li><a href="cpp_arrays.aspx" style="color: White">Arrays</a></li>
                    <li><a href="cpp_pointers.aspx" style="color: White">Pointers</a></li>
                    <li><a href="cpp_strings.aspx" style="color: White">Strings</a></li>
                    <li><a href="cpp_references.aspx" style="color: White">References</a></li>
                    <li><a href="cpp_date.aspx" style="color: White">date and time</a></li>
                    <li><a href="cpp_files.aspx" style="color: White">Files and Streams</a></li>
                    <li><a href="cpp_exception.aspx" style="color: White">Exception Handling</a></li>
                     <li><a href="cpp_namespaces.aspx" style="color: White">Namespaces</a></li>
                     <li><a href="cpp_signal.aspx" style="color: White">Signal Handling</a></li>
                     <li><a href="cpp_multithreading.aspx" style="color: White">Multithreading</a></li>
                   
                </ul>
            </div>
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">
                <p>There may be a situation, when you need to execute a block of code several number of times. In general statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.</p>
<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>
<p>A loop statement allows us to execute a statement or group of statements multiple times and following is the general from of a loop statement in most of the programming languages:</p>
<img src="/cplusplus/images/loop_architecture.jpg" alt="Loop Architecture" />
<p>C++ programming language provides the following types of loop to handle looping requirements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="30%">Loop Type</th><th>Description</th></tr>
<tr><td><p><a href="/cplusplus/cpp_while_loop.htm" title="C++ while loop">while loop</a></p></td><td>Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_for_loop.htm" title="C++ for loop">for loop</a></p></td><td>Execute a sequence of statements multiple times and abbreviates the code that manages the loop variable.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_do_while_loop.htm" title="C++ do...while loop">do...while loop</a></p></td><td>Like a while statement, except that it tests the condition at the end of the loop body</td></tr>
<tr><td><p><a href="/cplusplus/cpp_nested_loops.htm" title="C++ nested loops">nested loops</a></p></td><td>You can use one or more loop inside any another while, for or do..while loop.</td></tr>
</table>
<h2>Loop Control Statements</h2>
<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.</p>
<p>C++ supports the following control statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="30%">Control Statement</th><th>Description</th></tr>
<tr><td><p><a href="/cplusplus/cpp_break_statement.htm" title="C++ break statement">break statement</a></p></td><td>Terminates the <b>loop</b> or <b>switch</b> statement and transfers execution to the statement immediately following the loop or switch.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_continue_statement.htm" title="C++ continue statement">continue statement</a></p></td><td>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_goto_statement.htm" title="C++ goto statement">goto statement</a></p></td><td>Transfers control to the labeled statement. Though it is not advised to use goto statement in your program.</td></tr>
</table>
<h2>The Infinite Loop</h2>
<p>A loop becomes infinite loop if a condition never becomes false. The <b>for</b> loop is traditionally used for this purpose. Since none of the three expressions that form the for loop are required, you can make an endless loop by leaving the conditional expression empty.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int main () {

   for( ; ; ) {
      printf("This loop will run forever.\n");
   }

   return 0;
}
</pre>
<p>When the conditional expression is absent, it is assumed to be true. You may have an initialization and increment expression, but C++ programmers more commonly use the for(;;) construct to signify an infinite loop.</p>
<p><b>NOTE:</b> You can terminate an infinite loop by pressing Ctrl + C keys.</p>
<hr />
 </div>

                

          
</asp:Content>
