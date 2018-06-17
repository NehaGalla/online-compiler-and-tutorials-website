<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_variablescope.aspx.cs" Inherits="cpp_variablescope" %>


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
                <p>A scope is a region of the program and broadly speaking there are three places, where variables can be declared &minus;</p>
<ul class="list">
<li><p>Inside a function or a block which is called local variables,</p></li>
<li><p>In the definition of function parameters which is called formal parameters.</p></li>
<li><p>Outside of all functions which is called global variables.</p></li>
</ul>
<p>We will learn what is a function and it's parameter in subsequent chapters. Here let us explain what are local and global variables.</p>
<h2>Local Variables</h2>
<p>Variables that are declared inside a function or block are local variables. They can be used only by statements that are inside that function or block of code. Local variables are not known to functions outside their own. Following is the example using local variables:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int main () {
   // Local variable declaration:
   int a, b;
   int c;
 
   // actual initialization
   a = 10;
   b = 20;
   c = a + b;
 
   cout &lt;&lt; c;
 
   return 0;
}
</pre>
<h3>Output</h3>
<pre class="result notranslate">
30
</pre>
<h2>Global Variables</h2>
<p>Global variables are defined outside of all the functions, usually on top of the program. The global variables will hold their value throughout the life-time of your program.</p>
<p>A global variable can be accessed by any function. That is, a global variable is available for use throughout your entire program after its declaration. Following is the example using global and local variables:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
// Global variable declaration:
int g;
 
int main () {
   // Local variable declaration:
   int a, b;
 
   // actual initialization
   a = 10;
   b = 20;
   g = a + b;
 
   cout &lt;&lt; g;
 
   return 0;
}
</pre>
<h3>Output</h3>
<pre class="result notranslate">
30
</pre>
<p>A program can have same name for local and global variables but value of local variable inside a function will take preference. For example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
// Global variable declaration:
int g = 20;
 
int main () {
   // Local variable declaration:
   int g = 10;
 
   cout &lt;&lt; g;
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
10
</pre>
<h2>Initializing Local and Global Variables</h2>
<p>When a local variable is defined, it is not initialized by the system, you must initialize it yourself. Global variables are initialized automatically by the system when you define them as follows:</p>
<table class="table table-bordered">
<tr>
<th width="30%">Data Type</th><th>Initializer</th></tr>
<tr><td>   int     </td><td>  0    </td> </tr>
<tr><td>   char    </td><td>  '\0' </td> </tr>
<tr><td>   float   </td><td>  0    </td> </tr>
<tr><td>   double   </td><td>  0    </td> </tr>
<tr><td>   pointer </td><td>  NULL </td> </tr>
</table>
<p>It is a good programming practice to initialize variables properly, otherwise sometimes program would produce unexpected result.</p>
<hr />
 </div>

                

          
</asp:Content>
