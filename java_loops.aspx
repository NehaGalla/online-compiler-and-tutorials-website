
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_loops.aspx.cs" Inherits="java_loops" %>


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
                    <li><a href="java_FileIO.aspx" style="color: White">File I/O/a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="loops" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>There may be a situation when you need to execute a block of code several number of times. In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.</p>
<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>
<p>A <b>loop</b> statement allows us to execute a statement or group of statements multiple times and following is the general form of a loop statement in most of the programming languages &minus;</p>
<img src="/java/images/loop_architecture.jpg" alt="Loop Architecture" /> 
<p>Java programming language provides the following types of loop to handle looping requirements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Loop &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/java_while_loop.htm">while loop</a>
<p>Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/java_for_loop.htm">for loop</a>
<p>Execute a sequence of statements multiple times and abbreviates the code that manages the loop variable.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><a href="/java/java_do_while_loop.htm">do...while loop</a>
<p>Like a while statement, except that it tests the condition at the end of the loop body.</p></td>
</tr>
</table>
<h2>Loop Control Statements</h2>
<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.</p>
<p>Java supports the following control statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Control Statement &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/java_break_statement.htm">break statement</a>
<p>Terminates the <b>loop</b> or <b>switch</b> statement and transfers execution to the statement immediately following the loop or switch.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/java_continue_statement.htm">continue statement</a>
<p>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</p></td>
</tr>
</table>
<h2>Enhanced for loop in Java</h2>
<p>As of Java 5, the enhanced for loop was introduced. This is mainly used to traverse collection of elements including arrays.</p>
<h3>Syntax</h3>
<p>Following is the syntax of enhanced for loop &minus;</p>
<pre class="result notranslate">
for(declaration : expression) {
   // Statements
}
</pre>
<ul class="list">
<li><p><b>Declaration</b> &minus; The newly declared block variable, is of a type compatible with the elements of the array you are accessing. The variable will be available within the for block and its value would be the same as the current array element.</p></li>
<li><p><b>Expression</b> &minus; This evaluates to the array you need to loop through. The expression can be an array variable or method call that returns an array.</p></li>
</ul>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class Test {

   public static void main(String args[]) {
      int [] numbers = {10, 20, 30, 40, 50};

      for(int x : numbers ) {
         System.out.print( x );
         System.out.print(",");
      }
      System.out.print("\n");
      String [] names = {"James", "Larry", "Tom", "Lacy"};

      for( String name : names ) {
         System.out.print( name );
         System.out.print(",");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
10, 20, 30, 40, 50,
James, Larry, Tom, Lacy,
</pre>
<h2>What is Next?</h2>
<p>In the following chapter, we will be learning about decision making statements in Java programming.</p>
<hr />
</div>
                

          
</asp:Content>

