
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_decisionMaking.aspx.cs" Inherits="java_decisionMaking" %>


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
                      <li><a href="Java_Home.aspx" style="color: White">java home</a></li>
                    <li><a href="java_objects.aspx" style="color: White">java objects&classes</a></li>
                    <li><a href="java_dataTypes.aspx" style="color: White">Data Types</a></li>
                    <li><a href="java_Variables.aspx" style="color: White">Variable Types</a></li>
                    <li><a href="java_Modifier.aspx" style="color: White">Modifier Types</a></li>
                    <li><a href="java_Operators.aspx" style="color: White">Operators</a></li>
                    <li><a href="java_loops.aspx" style="color: White">Loop Control</a></li>
                    <li><a href="java_decisionMaking.aspx" style="color: White">Decision Making</a></li>
                    <li><a href="java_Numbers.aspx" style="color: White">Numbers</a></li>
                    <li><a href="java_characters.aspx" style="color: White">Characters</a></li>
                    <li><a href="java_Strings.aspx" style="color: White">Strings</a></li>
                    <li><a href="java_Arrays.aspx" style="color: White">Arrays</a></li>
                    <li><a href="java_dateTime.aspx" style="color: White">Date and Time</a></li>
                    <li><a href="java_RG.aspx" style="color: White">Regular Expressions</a></li>
                    <li><a href="java_methods.aspx" style="color: White">Methods</a></li>
                    <li><a href="java_FileI/O.aspx" style="color: White">File I/O</a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="decisionMaking" style="padding-left:350px;padding-top:100px;position:absolute">
        <p>Decision making structures have one or more conditions to be evaluated or tested by the program, along with a statement or statements that are to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.</p>
<p>Following is the general form of a typical decision making structure found in most of the programming languages &minus;</p>
<img src="/java/images/decision_making.jpg" alt="Decision Making" />
<p>Java programming language provides following types of decision making statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Statement &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/if_statement_in_java.htm">if statement</a>
<p>An <b>if statement</b> consists of a boolean expression followed by one or more statements.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/if_else_statement_in_java.htm">if...else statement</a>
<p>An <b>if statement</b> can be followed by an optional <b>else statement</b>, which executes when the boolean expression is false.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><a href="/java/nested_if_statements_in_java.htm">nested if statement</a>
<p>You can use one <b>if</b> or <b>else if</b> statement inside another <b>if</b> or <b>else if</b> statement(s).</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><a href="/java/switch_statement_in_java.htm">switch statement</a>
<p>A <b>switch</b> statement allows a variable to be tested for equality against a list of values.</p></td>
</tr>
</table>
<h2>The ? : Operator</h2>
<p>We have covered <b>conditional operator ? :</b> in the previous chapter which can be used to replace <b>if...else</b> statements. It has the following general form &minus;</p>
<pre class="result notranslate">
Exp1 ? Exp2 : Exp3;
</pre>
<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>
<p>To determine the value of the whole expression, initially exp1 is evaluated.</p>
<ul class="list">
<li><p>If the value of exp1 is true, then the value of Exp2 will be the value of the whole expression.</p></li>
<li><p>If the value of exp1 is false, then Exp3 is evaluated and its value becomes the value of the entire expression.</p></li>
</ul>
<h2>What is Next?</h2>
<p>In the next chapter, we will discuss about Number class (in the java.lang package) and its subclasses in Java Language.</p>
<p>We will be looking into some of the situations where you will use instantiations of these classes rather than the primitive data types, as well as classes such as formatting, mathematical functions that you need to know about when working with Numbers.</p>
<hr />
</div>
                

          
</asp:Content>

