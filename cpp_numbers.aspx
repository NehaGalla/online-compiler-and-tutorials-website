<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_datatypes.aspx.cs" Inherits="cpp_datatypes" %>


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
                <p>Normally, when we work with Numbers, we use primitive data types such as int, short, long, float and double, etc. The number data types, their possible values and number ranges have been explained while discussing C++ Data Types.</p>
<h2>Defining Numbers in C++</h2>
<p>You have already defined numbers in various examples given in previous chapters. Here is another consolidated example to define various types of numbers in C++:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int main () {
   // number definition:
   short  s;
   int    i;
   long   l;
   float  f;
   double d;
   
   // number assignments;
   s = 10;      
   i = 1000;    
   l = 1000000; 
   f = 230.47;  
   d = 30949.374;
   
   // number printing;
   cout &lt;&lt; "short  s :" &lt;&lt; s &lt;&lt; endl;
   cout &lt;&lt; "int    i :" &lt;&lt; i &lt;&lt; endl;
   cout &lt;&lt; "long   l :" &lt;&lt; l &lt;&lt; endl;
   cout &lt;&lt; "float  f :" &lt;&lt; f &lt;&lt; endl;
   cout &lt;&lt; "double d :" &lt;&lt; d &lt;&lt; endl;
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
short  s :10
int    i :1000
long   l :1000000
float  f :230.47
double d :30949.4
</pre>
<h2>Math Operations in C++</h2>
<p>In addition to the various functions you can create, C++ also includes some useful functions you can use. These functions are available in standard C and C++ libraries and called <b>built-in</b> functions. These are functions that can be included in your program and then use.</p>
<p>C++ has a rich set of mathematical operations, which can be performed on various numbers. Following table lists down some useful built-in mathematical functions available in C++.</p>
<p>To utilize these functions you need to include the math header file <b>&lt;cmath&gt;</b>.</p>
<table class="table table-bordered">
<tr>
<th width="5%">S.N.</th>
<th>Function &amp; Purpose</th>
</tr>
<tr>
<td>1</td>
<td><b>double cos(double);</b>
<p>This function takes an angle (as a double) and returns the cosine.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><b>double sin(double);</b>
<p>This function takes an angle (as a double) and returns the sine.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><b>double tan(double);</b>
<p>This function takes an angle (as a double) and returns the tangent.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><b>double log(double);</b>
<p>This function takes a number and returns the natural log of that number.</p>
</td>
</tr>
<tr>
<td>5</td>
<td><b>double pow(double, double);</b>
<p>The first is a number you wish to raise and the second is the power you wish to raise it t</p>
</td>
</tr>
<tr>
<td>6</td>
<td><b>double hypot(double, double);</b>
<p>If you pass this function the length of two sides of a right triangle, it will return you the length of the hypotenuse.</p>
</td>
</tr>
<tr>
<td>7</td>
<td><b>double sqrt(double);</b>
<p>You pass this function a number and it gives you this square root.</p>
</td>
</tr>
<tr>
<td>8</td>
<td><b>int abs(int);</b>
<p>This function returns the absolute value of an integer that is passed to it.</p>
</td>
</tr>
<tr>
<td>9</td>
<td><b>double fabs(double);</b>
<p>This function returns the absolute value of any decimal number passed to it.</p>
</td>
</tr>
<tr>
<td>10</td>
<td><b>double floor(double);</b>
<p>Finds the integer which is less than or equal to the argument passed to it.</p>
</td>
</tr>
</table>
<p>Following a simple example to show few of the mathematical operations:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;cmath&gt;
using namespace std;
 
int main () {
   // number definition:
   short  s = 10;
   int    i = -1000;
   long   l = 100000;
   float  f = 230.47;
   double d = 200.374;

   // mathematical operations;
   cout &lt;&lt; "sin(d) :" &lt;&lt; sin(d) &lt;&lt; endl;
   cout &lt;&lt; "abs(i)  :" &lt;&lt; abs(i) &lt;&lt; endl;
   cout &lt;&lt; "floor(d) :" &lt;&lt; floor(d) &lt;&lt; endl;
   cout &lt;&lt; "sqrt(f) :" &lt;&lt; sqrt(f) &lt;&lt; endl;
   cout &lt;&lt; "pow( d, 2) :" &lt;&lt; pow(d, 2) &lt;&lt; endl;
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
sign(d) :-0.634939
abs(i)  :1000
floor(d) :200
sqrt(f) :15.1812
pow( d, 2 ) :40149.7
</pre>
<h2>Random Numbers in C++</h2>
<p>There are many cases where you will wish to generate a random number. There are actually two functions you will need to know about random number generation. The first is <b>rand()</b>, this function will only return a pseudo random number. The way to fix this is to first call the <b>srand()</b> function.</p>
<p>Following is a simple example to generate few random numbers. This example makes use of <b>time()</b> function to get the number of seconds on your system time, to randomly seed the rand() function: </p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;ctime&gt;
#include &lt;cstdlib&gt;

using namespace std;
 
int main () {
   int i,j;
 
   // set the seed
   srand( (unsigned)time( NULL ) );

   /* generate 10  random numbers. */
   for( i = 0; i &lt; 10; i++ ) {
      // generate actual random number
      j= rand();
      cout &lt;&lt;" Random Number : " &lt;&lt; j &lt;&lt; endl;
   }

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
 Random Number : 1748144778
 Random Number : 630873888
 Random Number : 2134540646
 Random Number : 219404170
 Random Number : 902129458
 Random Number : 920445370
 Random Number : 1319072661
 Random Number : 257938873
 Random Number : 1256201101
 Random Number : 580322989
</pre>
<hr />
 </div>

                

          
</asp:Content>
