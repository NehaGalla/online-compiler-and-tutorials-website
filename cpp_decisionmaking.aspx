<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_decisionmaking.aspx.cs" Inherits="cpp_decisionmaking" %>


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
                <p>Decision making structures require that the programmer specify one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other
statements to be executed if the condition is determined to be false.</p>
<p>Following is the general form of a typical decision making structure found in most of the programming languages:</p>
<img src="/cplusplus/images/cpp_decision_making.jpg" alt="C++ decision making" />
<p>C++ programming language provides following types of decision making statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="35%">Statement</th><th>Description</th></tr>
<tr><td><p><a href="/cplusplus/cpp_if_statement.htm" title="C++ if statement">if statement</a></p></td><td>An if statement consists of a boolean expression followed by one or more statements.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_if_else_statement.htm" title="C++ if...else statement">if...else statement</a></p></td><td>An if statement can be followed by an optional else statement, which executes when the boolean expression is false.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_switch_statement.htm" title="C++ switch statement">switch statement</a></p></td><td>A switch statement allows a variable to be tested for equality against a list of values.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_nested_if.htm" title="C++ nested if statements">nested if statements</a></p></td><td>You can use one if or else if statement inside another if or else if statement(s).</td></tr>
<tr><td><p><a href="/cplusplus/cpp_nested_switch.htm" title="C++ nested switch statements">nested switch statements</a></p></td><td>You can use one swicth statement inside another switch statement(s).</td></tr>
</table>
<h2>The ? : Operator</h2>
<p>We have covered <a href="/cplusplus/cpp_conditional_operator.htm">conditional operator ? :</a> in previous chapter which can be used to replace <b>if...else</b> statements. It has the following general form:</p>
<pre class="result notranslate">
Exp1 ? Exp2 : Exp3;
</pre>
<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>
<p>The value of a ? expression is determined like this: Exp1 is evaluated. If it is true, then Exp2 is evaluated and becomes the value of the entire ? expression. If Exp1 is false, then Exp3 is evaluated and its value becomes the value of the expression.</p>
<hr />
 </div>

                

          
</asp:Content>
