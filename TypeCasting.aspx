<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="TypeCasting.aspx.cs" Inherits="TypeCasting" %>


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
                <h1>Type Casting</h1>
                <hr />
<p>Type casting is a way to convert a variable from one data type to another data type. For example, if you want to store a 'long' value into a simple integer then you can type cast 'long' to 'int'. You can convert the values from one type to another explicitly using the <b>cast operator</b> as follows &minus;</p>
<pre class="result notranslate">
(type_name) expression
</pre>
<p>Consider the following example where the cast operator causes the division of one integer variable by another to be performed as a floating-point operation &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

main() {

   int sum = 17, count = 5;
   double mean;

   mean = (double) sum / count;
   printf("Value of mean : %f\n", mean );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Value of mean : 3.400000
</pre>
<p>It should be noted here that the cast operator has precedence over division, so the value of <b>sum</b> is first converted to type <b>double</b> and finally it gets divided by count yielding a double value.</p>
<p>Type conversions can be implicit which is performed by the compiler automatically, or it can be specified explicitly through the use of the <b>cast operator</b>. It is considered good programming practice to use the cast operator whenever type conversions are necessary.</p>
<h2>Integer Promotion</h2>
<p>Integer promotion is the process by which values of integer type "smaller" than <b>int</b> or <b>unsigned int</b> are converted either to <b>int</b> or <b>unsigned int</b>. Consider an example of adding a character with an integer &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

main() {

   int  i = 17;
   char c = 'c'; /* ascii value is 99 */
   int sum;

   sum = i + c;
   printf("Value of sum : %d\n", sum );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Value of sum : 116
</pre>
<p>Here, the value of sum is 116 because the compiler is doing integer promotion and converting the value of 'c' to ASCII before performing the actual addition operation.</p>
<h2>Usual Arithmetic Conversion</h2>
<p>The <b>usual arithmetic conversions</b> are implicitly performed to cast their values to a common type. The compiler first performs <i>integer promotion</i>; if the operands still have different types, then they are converted to the type that appears highest in the following hierarchy &minus;</p>
<img src="/cprogramming/images/usual_arithmetic_conversion.png" alt="Usual Arithmetic Conversion" />
<p>The usual arithmetic conversions are not performed for the assignment operators, nor for the logical operators &amp;&amp; and ||. Let us take the following example to understand the concept &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

main() {

   int  i = 17;
   char c = 'c'; /* ascii value is 99 */
   float sum;

   sum = i + c;
   printf("Value of sum : %f\n", sum );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Value of sum : 116.000000
</pre>
<p>Here, it is simple to understand that first c gets converted to integer, but as the final value is double, usual arithmetic conversion applies and the compiler converts i and c into 'float' and adds them yielding a 'float' result.</p>
<hr />


                </div></div>
                

          
</asp:Content>

