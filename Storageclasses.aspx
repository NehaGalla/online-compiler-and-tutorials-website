<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Storageclasses.aspx.cs" Inherits="Storageclasses" %>


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
            <ul class="nav navbar-nav" style="padding-top:0px">
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
      <div class="storage classes"  style="padding-left:320px;padding-top:120px">
          <h1>C - Storage Classes</h1><hr />
          
            <p>A storage class defines the scope (visibility) and life-time of variables and/or functions within a C Program. They precede the type that they modify. We have four different storage classes in a C program &minus;</p>
<ul class="list">
<li>auto</li>
<li>register</li>
<li>static</li>
<li>extern</li>
</ul>
<h2>The auto Storage Class</h2>
<p>The <b>auto</b> storage class is the default storage class for all local variables.</p>
<pre class="prettyprint notranslate">
{
   int mount;
   auto int month;
}
</pre>
<p>The example above defines two variables with in the same storage class. 'auto' can only be used within functions, i.e., local variables.</p>
<h2>The register Storage Class</h2>
<p>The <b>register</b> storage class is used to define local variables that should be stored in a register instead of RAM. This means that the variable has a maximum size equal to the register size (usually one word) and can't have the unary '&amp;' operator applied to it (as it does not have a memory location).</p>
<pre class="prettyprint notranslate">
{
   register int  miles;
}
</pre>
<p>The register should only be used for variables that require quick access such as counters. It should also be noted that defining 'register' does not mean that the variable will be stored in a register. It means that it MIGHT be stored in a register depending on hardware and implementation restrictions.</p>
<h2>The static Storage Class</h2>
<p>The <b>static</b> storage class instructs the compiler to keep a local variable in existence during the life-time of the program instead of creating and destroying it each time it comes into and goes out of scope. Therefore, making local variables static allows them to maintain their values between function calls.</p>
<p>The static modifier may also be applied to global variables. When this is done, it causes that variable's scope to be restricted to the file in which it is declared.</p>
<p>In C programming, when <b>static</b> is used on a class data member, it causes only one copy of that member to be shared by all the objects of its class.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
 
/* function declaration */
void func(void);
 
static int count = 5; /* global variable */
 
main() {

   while(count--) {
      func();
   }
	
   return 0;
}

/* function definition */
void func( void ) {

   static int i = 5; /* local static variable */
   i++;

   printf("i is %d and count is %d\n", i, count);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
i is 6 and count is 4
i is 7 and count is 3
i is 8 and count is 2
i is 9 and count is 1
i is 10 and count is 0
</pre>
<h2>The extern Storage Class</h2>
<p>The <b>extern</b> storage class is used to give a reference of a global variable that is visible to ALL the program files. When you use 'extern', the variable cannot be initialized however, it points the variable name at a storage location that has been previously defined.</p>
<p>When you have multiple files and you define a global variable or function, which will also be used in other files, then <i>extern</i> will be used in another file to provide the reference of defined variable or function. Just for understanding, <i>extern</i> is used to declare a global variable or function  in another file.</p>
<p>The extern modifier is most commonly used when there are two or more files sharing the same global variables or functions as explained below.</p>
<p><b>First File: main.c</b></p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
 
int count ;
extern void write_extern();
 
main() {

   count = 5;
   write_extern();
}
</pre>
<p><b>Second File: support.c</b></p>
<pre class="prettyprint notranslate">
#include &lt;stdio.h&gt;
 
extern int count;
 
void write_extern(void) {
   printf("count is %d\n", count);
}
</pre>
<p>Here, <i>extern</i> is being used to declare <i>count</i> in the second file, where as it has its definition in the first file, main.c. Now, compile these two files as follows &minus;</p>
<pre class="result notranslate">
$gcc main.c support.c
</pre>
<p>It will produce the executable program <b>a.out</b>. When this program is executed, it produces the following result &minus;</p>
<pre class="result notranslate">
count is 5
</pre>
<hr />
          </div></div>
</asp:Content>

