<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_modifier.aspx.cs" Inherits="cpp_modifier" %>


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
                <p>C++ allows the <b>char, int, </b> and <b>double</b> data types to have modifiers preceding them. A modifier is used to alter the meaning of the base type so that it more precisely fits the needs of various situations.</p>
<p>The data type modifiers are listed here:</p>
<ul class="list">
<li><p>signed</p></li>
<li><p>unsigned</p></li>
<li><p>long</p></li>
<li><p>short</p></li>
</ul>
<p>The modifiers <b>signed, unsigned, long,</b> and <b>short</b> can be applied to integer base types. In addition, <b>signed</b> and <b>unsigned</b> can be applied to char, and <b>long</b> can be applied to double.</p>
<p>The modifiers <b>signed</b> and <b>unsigned</b> can also be used as prefix to <b>long</b> or <b>short</b> modifiers. For example, <b>unsigned long int</b>.</p>
<p>C++ allows a shorthand notation for declaring <b>unsigned, short,</b> or <b>long</b> integers. You can simply use the word <b>unsigned, short,</b> or <b>long</b>, without the int. The int is implied. For example, the following two statements both declare unsigned integer variables.</p>
<pre class="result notranslate">
unsigned x;
unsigned int y;
</pre>
<p>To understand the difference between the way that signed and unsigned integer modifiers are interpreted by C++, you should run the following short program:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
/* This program shows the difference between
 * signed and unsigned integers.
*/
int main() {
   short int i;           // a signed short integer
   short unsigned int j;  // an unsigned short integer

   j = 50000;

   i = j;
   cout &lt;&lt; i &lt;&lt; " " &lt;&lt; j;

   return 0;
}
</pre>
<p>When this program is run, following is the output:</p>
<pre class="result notranslate">
-15536 50000
</pre>
<p>The above result is because the bit pattern that represents 50,000 as a short unsigned integer is interpreted as -15,536 by a short.</p>
<h2>Type Qualifiers in C++</h2>
<p>The type qualifiers provide additional information about the variables they precede.</p>
<table class="table table-bordered">
<tr>
<th>Qualifier</th>
<th>Meaning</th>
</tr>
<tr>
<td>const</td>
<td>Objects of type <b>const</b> cannot be changed by your program during execution</td>
</tr>
<tr>
<td>volatile</td>
<td>The modifier <b>volatile</b> tells the compiler that a variable's value may be changed in ways not explicitly specified by the program.</td>
</tr>
<tr>
<td>restrict</td>
<td>A pointer qualified by <b>restrict</b> is initially the only means by which the object it points to can be accessed. Only C99 adds a new type qualifier called restrict.</td>
</tr>
</table>
<hr />
 </div>

                

          
</asp:Content>
