<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Recursion.aspx.cs" Inherits="Recursion" %>


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
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">
                <h1>Recursion</h1>
                <hr />
<p>Recursion is the process of repeating items in a self-similar way. In programming languages, if a program allows you to call a function inside the same function, then it is called a recursive call of the function.</p>
<pre class="prettyprint notranslate">
void recursion() {
   recursion(); /* function calls itself */
}

int main() {
   recursion();
}
</pre>
<p>The C programming language supports recursion, i.e., a function to call itself. But while using recursion, programmers need to be careful to define an exit condition from the function, otherwise it will go into an infinite loop.</p>
<p>Recursive functions are very useful to solve many mathematical problems, such as calculating the factorial of a number, generating Fibonacci series, etc.</p>
<h2>Number Factorial</h2>
<p>The following example calculates the factorial of a given number using a recursive function &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

int factorial(unsigned int i) {

   if(i &lt;= 1) {
      return 1;
   }
   return i * factorial(i - 1);
}

int  main() {
   int i = 15;
   printf("Factorial of %d is %d\n", i, factorial(i));
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Factorial of 15 is 2004310016
</pre>
<h2>Fibonacci Series</h2>
<p>The following example generates the Fibonacci series for a given number using a recursive function &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

int fibonacci(int i) {

   if(i == 0) {
      return 0;
   }
	
   if(i == 1) {
      return 1;
   }
   return fibonacci(i-1) + fibonacci(i-2);
}

int  main() {

   int i;
	
   for (i = 0; i &lt; 10; i++) {
      printf("%d\t\n", fibonacci(i));
   }
	
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
0	1	1	2	3	5	8	13	21	34
</pre>
<hr />


                </div></div>
                

          
</asp:Content>

