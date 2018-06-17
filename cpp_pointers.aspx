<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_pointers.aspx.cs" Inherits="cpp_pointers" %>


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
                   
                    <li><a href="cpp_date.aspx" style="color: White">date and time</a></li>
                    <li><a href="cpp_files.aspx" style="color: White">Files and Streams</a></li>
                    <li><a href="cpp_exception.aspx" style="color: White">Exception Handling</a></li>
                     <li><a href="cpp_namespaces.aspx" style="color: White">Namespaces</a></li>
                     <li><a href="cpp_signal.aspx" style="color: White">Signal Handling</a></li>
                     <li><a href="cpp_multithreading.aspx" style="color: White">Multithreading</a></li>
                   
                </ul>
            </div>
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">
                <p>C++ pointers are easy and fun to learn. Some C++ tasks are performed more easily with pointers, and other C++ tasks, such as dynamic memory allocation, cannot be performed without them.</p>
<p>As you know every variable is a memory location and every memory location has its address defined which can be accessed using ampersand (&amp;) operator which denotes an address in memory. Consider the following which will print the address of the variables defined:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;

using namespace std;

int main () {
   int  var1;
   char var2[10];

   cout &lt;&lt; "Address of var1 variable: ";
   cout &lt;&lt; &amp;var1 &lt;&lt; endl;

   cout &lt;&lt; "Address of var2 variable: ";
   cout &lt;&lt; &amp;var2 &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="result notranslate">
Address of var1 variable: 0xbfebd5c0
Address of var2 variable: 0xbfebd5b6
</pre>
<h2>What Are Pointers?</h2>
<p>A <b>pointer</b> is a variable whose value is the address of another variable. Like any variable or constant, you must declare a pointer before you can work with it. The general form of a pointer variable declaration is:</p>
<pre class="result notranslate">
type *var-name;
</pre>
<p>Here, <b>type</b> is the pointer's base type; it must be a valid C++ type and <b>var-name</b> is the name of the pointer variable. The asterisk you used to declare a pointer is the same asterisk that you use for multiplication. However, in this statement the asterisk is being used to designate a variable as a pointer. Following are the valid pointer declaration:</p>
<pre class="result notranslate">
int    *ip;    // pointer to an integer
double *dp;    // pointer to a double
float  *fp;    // pointer to a float
char   *ch     // pointer to character
</pre>
<p>The actual data type of the value of all pointers, whether integer, float, character, or otherwise, is the same, a long hexadecimal number that represents a memory address. The only difference between pointers of different data types is the data type of the variable or constant that the pointer points to.</p>
<h2>Using Pointers in C++:</h2>
<p>There are few important operations, which we will do with the pointers very frequently. <b>(a)</b> we define a pointer variables <b>(b)</b> assign the address of a variable to a pointer and <b>(c)</b> finally access the value at the address available in the pointer variable. This is done by using unary operator <b>*</b> that returns the value of the variable located at the address specified by its operand. Following example makes use of these operations:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;

using namespace std;

int main () {
   int  var = 20;   // actual variable declaration.
   int  *ip;        // pointer variable 

   ip = &amp;var;       // store address of var in pointer variable

   cout &lt;&lt; "Value of var variable: ";
   cout &lt;&lt; var &lt;&lt; endl;

   // print the address stored in ip pointer variable
   cout &lt;&lt; "Address stored in ip variable: ";
   cout &lt;&lt; ip &lt;&lt; endl;

   // access the value at the address available in pointer
   cout &lt;&lt; "Value of *ip variable: ";
   cout &lt;&lt; *ip &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="result notranslate">
Value of var variable: 20
Address stored in ip variable: 0xbfc601ac
Value of *ip variable: 20
</pre>
<h2>C++ Pointers in Detail</h2>
<p>Pointers have many but easy concepts and they are very important to C++ programming. There are following few important pointer concepts which should be clear to a C++ programmer:</p>
<table class="table table-bordered">
<tr>
<th width="40%">Concept</th>
<th>Description</th>
</tr>
<tr>
<td><p><a href="/cplusplus/cpp_null_pointers.htm" title="C++ Null Pointers">C++ Null Pointers</a></p></td>
<td>C++ supports null pointer, which is a constant with a value of zero defined in several standard libraries.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_pointer_arithmatic.htm" title="C++ Pointer Arithmetic">C++ pointer arithmetic</a></p></td><td>There are four arithmetic operators that can be used on pointers: ++, --, +, -</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_pointers_vs_arrays.htm" title="C++ Pointers vs Arrays">C++ pointers vs arrays</a></p></td><td>There is a close relationship between pointers and arrays. Let us check how?</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_array_of_pointers.htm" title="C++ Array of Pointers">C++ array of pointers</a></p></td><td>You can define arrays to hold a number of pointers.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_pointer_to_pointer.htm" title="C++ Pointer to Pointer Operators">C++ pointer to pointer</a></p></td><td>C++ allows you to have pointer on a pointer and so on.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_passing_pointers_to_functions.htm" title="Passing pointers to functions in C++">Passing pointers to functions</a></p></td><td>Passing an argument by reference or by address both enable the passed argument to be changed in the calling function by the called function.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_return_pointer_from_functions.htm" title="Return pointer from functions in C++">Return pointer from functions</a></p></td><td>C++ allows a function to return a pointer to local variable, static variable and dynamically allocated memory as well.</td> </tr>
</table>
<hr />
 </div>

                

          
</asp:Content>
