<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Arrays.aspx.cs" Inherits="Arrays" %>


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
            <div class="background1">
                            <div class="Arrays" style="padding-left: 320px; padding-top: 120px">
                <h1>Arrays</h1>
                <hr />
<p>Arrays a kind of data structure that can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.</p>
<p>Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.</p>
<p>All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.</p>

<h2>Declaring Arrays</h2>
<p>To declare an array in C, a programmer specifies the type of the elements and the number of elements required by an array as follows &minus;</p>
<pre class="result notranslate">
type arrayName [ arraySize ];
</pre>
<p>This is called a <i>single-dimensional</i> array. The <b>arraySize</b> must be an integer constant greater than zero and <b>type</b> can be any valid C data type. For example, to declare a 10-element array called <b>balance</b> of type double, use this statement &minus;</p>
<pre class="result notranslate">
double balance[10];
</pre>
<p>Here <i>balance</i> is a variable array which is sufficient to hold up to 10 double numbers.</p>
<h2>Initializing Arrays</h2>
<p>You can initialize an array in C either one by one or using a single statement as follows &minus;</p>
<pre class="result notranslate">
double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0};
</pre>
<p>The number of values between braces { } cannot be larger than the number of elements that we declare for the array between square brackets [ ].</p>
<p>If you omit the size of the array, an array just big enough to hold the initialization is created. Therefore, if you write &minus;</p>
<pre class="result notranslate">
double balance[] = {1000.0, 2.0, 3.4, 7.0, 50.0};
</pre>
<p>You will create exactly the same array as you did in the previous example. Following is an example to assign a single element of the array &minus;</p>
<pre class="result notranslate">
balance[4] = 50.0;
</pre>
<p>The above statement assigns the 5<sup>th</sup> element in the array with a value of 50.0. All arrays have 0 as the index of their first element which is also called the base index and the last index of an array will be total size of the array minus 1. Shown below is the pictorial representation of the array we discussed above &minus;</p>
<img src="/cprogramming/images/array_presentation.jpg" alt="Array Presentation" />
<h2>Accessing Array Elements</h2>
<p>An element is accessed by indexing the array name. This is done by placing the index of the element within square brackets after the name of the array. For example &minus;</p>
<pre class="result notranslate">
double salary = balance[9];
</pre>
<p>The above statement will take the 10<sup>th</sup> element from the array and assign the value to salary variable. The following example Shows how to use all the three above mentioned concepts viz. declaration, assignment, and accessing arrays &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
 
int main () {

   int n[ 10 ]; /* n is an array of 10 integers */
   int i,j;
 
   /* initialize elements of array n to 0 */         
   for ( i = 0; i &lt; 10; i++ ) {
      n[ i ] = i + 100; /* set element at location i to i + 100 */
   }
   
   /* output each array element's value */
   for (j = 0; j &lt; 10; j++ ) {
      printf("Element[%d] = %d\n", j, n[j] );
   }
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Element[0] = 100
Element[1] = 101
Element[2] = 102
Element[3] = 103
Element[4] = 104
Element[5] = 105
Element[6] = 106
Element[7] = 107
Element[8] = 108
Element[9] = 109
</pre>
<h2>Arrays in Detail</h2>
<p>Arrays are important to C and should need a lot more attention. The following important concepts related to array should be clear to a C programmer &minus;</p>
<table class="table table-bordered">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Concept &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><a href="/cprogramming/c_multi_dimensional_arrays.htm">Multi-dimensional arrays</a>
<p>C supports multidimensional arrays. The simplest form of the multidimensional array is the two-dimensional array.</p></td> 
</tr>
<tr>
<td>2</td>
<td><a href="/cprogramming/c_passing_arrays_to_functions.htm">Passing arrays to functions</a>
<p>You can pass to the function a pointer to an array by specifying the array's name without an index.</p></td> 
</tr>
<tr>
<td>3</td>
<td><a href="/cprogramming/c_return_arrays_from_function.htm">Return array from a function</a>
<p>C allows a function to return an array.</p></td> 
</tr>
<tr>
<td>4</td>
<td><a href="/cprogramming/c_pointer_to_an_array.htm">Pointer to an array</a>
<p>You can generate a pointer to the first element of an array by simply specifying the array name, without any index.</p></td> 
</tr>
</table>
<hr />



                </div></div>
                </div>

          
</asp:Content>

