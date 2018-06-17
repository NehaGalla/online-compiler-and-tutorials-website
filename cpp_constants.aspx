<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_constants.aspx.cs" Inherits="cpp_constants" %>


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
                <p>Constants refer to fixed values that the program may not alter and they are called <b>literals</b>.</p>
<p>Constants can be of any of the basic data types and can be divided into Integer Numerals, Floating-Point Numerals, Characters, Strings and Boolean Values.</p>
<p>Again, constants are treated just like regular variables except that their values cannot be modified after their definition.</p>
<h2>Integer literals</h2>
<p>An integer literal can be a decimal, octal, or hexadecimal constant. A prefix specifies the base or radix: 0x or 0X for hexadecimal, 0 for octal, and nothing for decimal.</p>
<p>An integer literal can also have a suffix that is a combination of U and L, for unsigned and long, respectively. The suffix can be uppercase or lowercase and can be in any order.</p>
<p>Here are some examples of integer literals:</p>
<pre class="result notranslate">
212         // Legal
215u        // Legal
0xFeeL      // Legal
078         // Illegal: 8 is not an octal digit
032UU       // Illegal: cannot repeat a suffix
</pre>
<p>Following are other examples of various types of Integer literals:</p>
<pre class="result notranslate">
85         // decimal
0213       // octal
0x4b       // hexadecimal
30         // int
30u        // unsigned int
30l        // long
30ul       // unsigned long
</pre>
<h2>Floating-point literals</h2>
<p>A floating-point literal has an integer part, a decimal point, a fractional part, and an exponent part. You can represent floating point literals either in decimal form or exponential form.</p>
<p>While representing using decimal form, you must include the decimal point, the exponent, or both and while representing using exponential form, you must include the integer part, the fractional part, or both. The signed exponent is introduced by e or E.</p>
<p>Here are some examples of floating-point literals:</p>
<pre class="result notranslate">
3.14159       // Legal
314159E-5L    // Legal
510E          // Illegal: incomplete exponent
210f          // Illegal: no decimal or exponent
.e55          // Illegal: missing integer or fraction
</pre>
<h2>Boolean literals</h2>
<p>There are two Boolean literals and they are part of standard C++ keywords:</p>
<ul class="list">
<li><p> A value of <b>true</b> representing true.</p></li>
<li><p>A value of <b>false</b> representing false.</p></li>
</ul>
<p>You should not consider the value of true equal to 1 and value of false equal to 0.</p>
<h2>Character literals</h2>
<p>Character literals are enclosed in single quotes. If the literal begins with L (uppercase only), it is a wide character literal (e.g., L'x') and should be stored in <b>wchar_t</b> type of variable . Otherwise, it is a narrow character literal (e.g., 'x') and can be stored in a simple variable of <b>char</b> type.</p>
<p>A character literal can be a plain character (e.g., 'x'), an escape sequence (e.g., '\t'), or a universal character (e.g., '\u02C0'). </p>
<p>There are certain characters in C++ when they are preceded by a backslash they will have special meaning and they are used to represent like newline (\n) or tab (\t). Here, you have a list of some of such escape sequence codes:</p>
<table class="table table-bordered">
<tr>
<th>Escape sequence</th>
<th>Meaning</th>
</tr>
<tr>
<td>\\</td>
<td>\ character</td>
</tr>
<tr>
<td>\'</td>
<td> ' character</td>
</tr>
<tr>
<td>\"</td>
<td>" character</td>
</tr>
<tr>
<td>\?</td>
<td>? character</td>
</tr>
<tr>
<td>\a</td>
<td>Alert or bell</td>
</tr>
<tr>
<td>\b</td>
<td>Backspace</td>
</tr>
<tr>
<td>\f</td>
<td>Form feed</td>
</tr>
<tr>
<td>\n</td>
<td>Newline</td>
</tr>
<tr>
<td>\r</td>
<td>Carriage return</td>
</tr>
<tr>
<td>\t</td>
<td>Horizontal tab</td>
</tr>
<tr>
<td>\v</td>
<td>Vertical tab</td>
</tr>
<tr>
<td>\ooo</td>
<td>Octal number of one to three digits</td>
</tr>
<tr>
<td>\xhh . . .</td>
<td>Hexadecimal number of one or more digits</td>
</tr>
</table>
<p>Following is the example to show few escape sequence characters:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

int main() {
   cout &lt;&lt; "Hello\tWorld\n\n";
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Hello   World
</pre>
<h2>String literals</h2>
<p>String literals are enclosed in double quotes. A string contains characters that are similar to character literals: plain characters, escape sequences, and universal characters.</p>
<p>You can break a long line into multiple lines using string literals and separate them using whitespaces.</p>
<p>Here are some examples of string literals. All the three forms are identical strings.</p>
<pre class="result notranslate">
"hello, dear"

"hello, \

dear"

"hello, " "d" "ear"
</pre>
<h2>Defining Constants</h2>
<p>There are two simple ways in C++ to define constants:</p>
<ul class="list">
<li><p>Using <b>#define</b> preprocessor.</p></li>
<li><p>Using <b>const</b> keyword.</p></li>
</ul>
<h2>The #define Preprocessor</h2>
<p>Following is the form to use #define preprocessor to define a constant:</p>
<pre class="result notranslate">
#define identifier value
</pre>
<p>Following example explains it in detail:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

#define LENGTH 10   
#define WIDTH  5
#define NEWLINE '\n'

int main() {

   int area;  
   
   area = LENGTH * WIDTH;
   cout &lt;&lt; area;
   cout &lt;&lt; NEWLINE;
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
50
</pre>
<h2>The const Keyword</h2>
<p>You can use <b>const</b> prefix to declare constants with a specific type as follows:</p>
<pre class="result notranslate">
const type variable = value;
</pre>
<p>Following example explains it in detail:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

int main() {
   const int  LENGTH = 10;
   const int  WIDTH  = 5;
   const char NEWLINE = '\n';
   int area;  
   
   area = LENGTH * WIDTH;
   cout &lt;&lt; area;
   cout &lt;&lt; NEWLINE;
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
50
</pre>
<p>Note that it is a good programming practice to define constants in CAPITALS.</p>
<hr />
 </div>

                

          
</asp:Content>
