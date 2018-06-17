<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="DecisionMaking.aspx.cs" Inherits="DecisionMaking" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
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
      <div class="storage classes"  style="padding-left:320px;padding-top:120px">

          <h1>C - Decision Making</h1>

          <hr />
<p>Decision making structures require that the programmer specifies one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.</p>
<p>Show below is the general form of a typical decision making structure found in most of the programming languages &minus;</p>

<p>C programming language assumes any <b>non-zero</b> and <b>non-null</b> values as <b>true</b>, and if it is either <b>zero</b> or <b>null</b>, then it is assumed as <b>false</b> value.</p>
<p>C programming language provides the following types of decision making statements.</p>
<table class="table table-bordered">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Statement &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><a href="/cprogramming/if_statement_in_c.htm">if statement</a>
<p>An <b>if statement</b> consists of a boolean expression followed by one or more statements.</p></td>
</tr>
<tr>
<td>2</td>
<td><a href="/cprogramming/if_else_statement_in_c.htm">if...else statement</a>
<p>An <b>if statement</b> can be followed by an optional <b>else statement</b>, which executes when the Boolean expression is false.</p></td>
</tr>
<tr>
<td>3</td>
<td><a href="/cprogramming/nested_if_statements_in_c.htm">nested if statements</a>
<p>You can use one <b>if</b> or <b>else if</b> statement inside another <b>if</b> or <b>else if</b> statement(s).</p></td>
</tr>
<tr>
<td>4</td>
<td><a href="/cprogramming/switch_statement_in_c.htm">switch statement</a>
<p>A <b>switch</b> statement allows a variable to be tested for equality against a list of values.</p></td>
</tr>
<tr>
<td>5</td>
<td><a href="/cprogramming/nested_switch_statements_in_c.htm">nested switch statements</a>
<p>You can use one <b>switch</b> statement inside another <b>switch</b> statement(s).</p></td>
</tr>
</table>
<h2>The ? : Operator</h2>
<p>We have covered <b>conditional operator ? :</b> in the previous chapter which can be used to replace <b>if...else</b> statements. It has the following general form &minus;</p>
<pre class="result notranslate">
Exp1 ? Exp2 : Exp3;
</pre>
<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>
<p>The value of a ? expression is determined like this &minus;</p>
<ul class="list">
<li><p>Exp1 is evaluated. If it is true, then Exp2 is evaluated and becomes the value of the entire ? expression.</p></li>
<li><p>If Exp1 is false, then Exp3 is evaluated and its value becomes the value of the expression.</p></li>
</ul>
<hr />

          </div></div>
          
</asp:Content>

