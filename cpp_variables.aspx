<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_variables.aspx.cs" Inherits="cpp_variables" %>


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
                <p>A variable provides us with named storage that our programs can manipulate. Each variable in C++ has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.</p>
<p>The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore. Upper and lowercase letters are distinct because C++ is case-sensitive:</p>
<p>There are following basic types of variable in C++ as explained in last chapter:</p>
<table class="table table-bordered">
<tr>
<th width="30%">Type</th>
<th>Description</th>
</tr>
<tr>
<td>bool</td>
<td>Stores either value true or false.</td>
</tr>
<tr>
<td>char</td>
<td>Typically a single octet(one byte). This is an integer type.</td>
</tr>
<tr>
<td>int</td>
<td>The most natural size of integer for the machine.</td>
</tr>
<tr>
<td>float</td>
<td>A single-precision floating point value.</td>
</tr>
<tr>
<td>double</td>
<td>A double-precision floating point value.</td>
</tr>
<tr>
<td>void</td>
<td>Represents the absence of type.</td>
</tr>
<tr>
<td>wchar_t</td>
<td>A wide character type.</td>
</tr>
</table>
<p>C++ also allows to define various other types of variables, which we will cover in subsequent chapters like <b>Enumeration, Pointer, Array, Reference, Data structures,</b> and <b>Classes</b>.</p>
<p>Following section will cover how to define, declare and use various types of variables.</p>
<h2>Variable Definition in C++</h2>
<p>A variable definition means to tell the compiler where and how much to create the storage for the variable. A variable definition specifies a data type, and contains a list of one or more variables of that type as follows &minus;</p>
<pre class="result notranslate">
type variable_list;
</pre>
<p>Here, <b>type</b> must be a valid C++ data type including char, w_char, int, float, double, bool or any user-defined object, etc., and <b>variable_list</b> may consist of one or more identifier names separated by commas. Some valid declarations are shown here &minus;</p>
<pre class="result notranslate">
int    i, j, k;
char   c, ch;
float  f, salary;
double d;
</pre>
<p>The line <b>int    i, j, k;</b> both declares and defines the variables i, j and k; which instructs the compiler to create variables named i, j and k of type int.</p>
<p>Variables can be initialized (assigned an initial value) in their declaration. The initializer consists of an equal sign followed by a constant expression as follows:</p>
<pre class="result notranslate">
type variable_name = value;
</pre>
<p>Some examples are:</p>
<pre class="result notranslate">
extern int d = 3, f = 5;    // declaration of d and f. 
int d = 3, f = 5;           // definition and initializing d and f. 
byte z = 22;                // definition and initializes z. 
char x = 'x';               // the variable x has the value 'x'.
</pre>
<p>For definition without an initializer: variables with static storage duration are implicitly initialized with NULL (all bytes have the value 0); the initial value of all other variables is undefined.</p>
<h2>Variable Declaration in C++</h2>
<p>A variable declaration provides assurance to the compiler that there is one variable existing with the given type and name so that compiler proceed for further compilation without needing complete detail about the variable. A variable declaration has its meaning at the time of compilation only, compiler needs actual variable definition at the time of linking of the program.</p>
<p>A variable declaration is useful when you are using multiple files and you define your variable in one of the files which will be available at the time of linking of the program. You will use <b>extern</b> keyword to declare a variable at any place. Though you can declare a variable multiple times in your C++ program, but it can be defined only once in a file, a function or a block of code.</p>
<h2>Example</h2>
<p>Try the following example where a variable has been declared at the top, but it has been defined inside the main function:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

// Variable declaration:
extern int a, b;
extern int c;
extern float f;
  
int main () {
   // Variable definition:
   int a, b;
   int c;
   float f;
 
   // actual initialization
   a = 10;
   b = 20;
   c = a + b;
 
   cout &lt;&lt; c &lt;&lt; endl ;

   f = 70.0/3.0;
   cout &lt;&lt; f &lt;&lt; endl ;
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
30
23.3333
</pre>
<p>Same concept applies on function declaration where you provide a function name at the time of its declaration and its actual definition can be given anywhere else. For example &minus;</p>
<pre class="prettyprint notranslate">
// function declaration
int func();

int main() {
   // function call
   int i = func();
}

// function definition
int func() {
   return 0;
}
</pre>
<h2>Lvalues and Rvalues</h2>
<p>There are two kinds of expressions in C++ &minus;</p>
<ul class="list">
<li><p><b>lvalue</b> &minus; Expressions that refer to a memory location is  called "lvalue" expression. An lvalue may appear as either the left-hand or right-hand side of an assignment.</p></li>
<li><p><b>rvalue</b> &minus; The term rvalue refers to a data value that is stored at some address in memory. An rvalue is an expression that cannot have a value assigned to it which means an rvalue may appear on the right- but not left-hand side of an assignment.</p></li>
</ul>
<p>Variables are lvalues and so may appear on the left-hand side of an assignment. Numeric literals are rvalues and so may not be assigned and can not appear on the left-hand side. Following is a valid statement &minus;</p>
<pre class="result notranslate">
int g = 20;
</pre>
<p>But following is not a valid statement and would generate compile-time error &minus;</p>
<pre class="result notranslate">
10 = 20;
</pre>
<hr />
 </div>

                

          
</asp:Content>
