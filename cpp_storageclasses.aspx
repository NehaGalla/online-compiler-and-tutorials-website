<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_storageclasses.aspx.cs" Inherits="cpp_storageclasses" %>


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
                <p>A storage class defines the scope (visibility) and life-time of variables and/or functions within a C++ Program. These specifiers precede the type that they modify. There are following storage classes, which can be used in a C++ Program</p>
<ul class="list">
<li><p>auto</p></li>
<li><p>register</p></li>
<li><p>static</p></li>
<li><p>extern</p></li>
<li><p>mutable</p></li>
</ul>
<h2>The auto Storage Class</h2>
<p>The <b>auto</b> storage class is the default storage class for all local variables.</p>
<pre class="prettyprint notranslate">
{
   int mount;
   auto int month;
}
</pre>
<p>The example above defines two variables with the same storage class, auto can only be used within functions, i.e., local variables. </p>
<h2>The register Storage Class</h2>
<p>The <b>register</b> storage class is used to define local variables that should be stored in a register instead of RAM. This means that the variable has a maximum size equal to the register size (usually one word) and can't have the unary '&amp;' operator applied to it (as it does not have a memory location).</p>
<pre class="prettyprint notranslate">
{
   register int  miles;
}
</pre>
<p>The register should only be used for variables that require quick access such as counters. It should also be noted that defining 'register' does not mean that the variable will be stored in a register. It means that it MIGHT be stored in a register depending on hardware and implementation restrictions.</p>
<h2>The static Storage Class</h2>
<p>The <b>static</b> storage class instructs the compiler to keep a local variable in existence during the life-time of the program instead of creating and destroying it each time it comes into and goes out of scope.  Therefore, making local variables static allows them to maintain their values between function calls.</p>
<p>The static modifier may also be applied to global variables. When this is done, it causes that variable's scope to be restricted to the file in which it is declared.</p>
<p>In C++, when static is used on a class data member, it causes only one copy of that member to be shared by all objects of its class.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
 
// Function declaration
void func(void);
 
static int count = 10; /* Global variable */
 
main() {
   while(count--) {
      func();
   }
   return 0;
}

// Function definition
void func( void ) {
   static int i = 5; // local static variable
   i++;
   std::cout &lt;&lt; "i is " &lt;&lt; i ;
   std::cout &lt;&lt; " and count is " &lt;&lt; count &lt;&lt; std::endl;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
i is 6 and count is 9
i is 7 and count is 8
i is 8 and count is 7
i is 9 and count is 6
i is 10 and count is 5
i is 11 and count is 4
i is 12 and count is 3
i is 13 and count is 2
i is 14 and count is 1
i is 15 and count is 0
</pre>
<h2>The extern Storage Class</h2>
<p>The <b>extern</b> storage class is used to give a reference  of a global variable that is visible to ALL the program files. When you use 'extern' the variable cannot be initialized  as all it does is point the variable name at a storage location that has been previously defined.</p>
<p>When you have multiple files and you define a global variable or function, which will be used in other files also, then <i>extern </i> will be used in another file to give reference of defined variable or function. Just for understanding <i> extern </i> is used to declare a global variable or function in another file.</p>
<p>The extern modifier is most commonly used when there are two or more files sharing the same global variables or functions as explained below.</p>
<p>First File: main.cpp</p>
<pre class="prettyprint notranslate tryit" title="extern">
#include &lt;iostream&gt;
 
int count ;
extern void write_extern();
 
main() {
   count = 5;
   write_extern();
}
</pre>
<p>Second File: support.cpp</p>
<pre class="prettyprint notranslate" id="extern">
#include &lt;iostream&gt;
 
extern int count;
 
void write_extern(void) {
   std::cout &lt;&lt; "Count is " &lt;&lt; count &lt;&lt; std::endl;
}
</pre>
<p>Here, <i>extern</i> keyword is being used to declare count in another file. Now compile these two files as follows:</p>
<pre class="prettyprint notranslate">
$g++ main.cpp support.cpp -o write
</pre>
<p>This will produce <b>write</b> executable program, try to execute <b>write</b> and check the result as follows:</p>
<pre class="result notranslate">
$./write
5
</pre>
<h2>The mutable Storage Class</h2>
<p>The <b>mutable</b> specifier applies only to class objects, which are discussed later in this tutorial. It allows a member of an object to override constness. That is, a mutable member can be modified by a const member function.</p>
<hr />
 </div>

                

          
</asp:Content>
