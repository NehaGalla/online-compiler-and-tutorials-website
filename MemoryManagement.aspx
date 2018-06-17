<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="MemoryManagement.aspx.cs" Inherits="MemoryManagement" %>


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
                <h1>Memory Management</h1>
                <hr />
<p>This chapter explains dynamic memory management in C. The C programming language provides several functions for memory allocation and management. These functions can be found in the <b>&lt;stdlib.h&gt;</b> header file.</p>
<table class="table table-bordered">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Function &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><p><b>void *calloc(int num, int size);</b></p>
<p>This function allocates an array of <b>num</b> elements each of which size in bytes will be <b>size</b>.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><p><b>void free(void *address);</b></p>
<p>This function releases a block of memory block specified by address.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><p><b>void *malloc(int num);</b></p>
<p>This function allocates an array of <b>num</b> bytes and leave them uninitialized.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><p><b>void *realloc(void *address, int newsize);</b></p>
<p>This function re-allocates memory extending it upto <b>newsize</b>.</p>
</td>
</tr>
</table>
<h2>Allocating Memory Dynamically</h2>
<p>While programming, if you are aware of the size of an array, then it is easy and you can define it as an array. For example, to store a name of any person, it can go up to a maximum of 100 characters, so you can define something as follows &minus;</p>
<pre class="result notranslate">
char name[100];
</pre>
<p>But now let us consider a situation where you have no idea about the length of the text you need to store, for example, you want to store a detailed description about a topic. Here we need to define a pointer to character without defining how much memory is required and later, based on requirement, we can allocate memory as shown in the below example &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;string.h&gt;

int main() {

   char name[100];
   char *description;

   strcpy(name, "Zara Ali");

   /* allocate memory dynamically */
   description = malloc( 200 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcpy( description, "Zara ali a DPS student in class 10th");
   }
   
   printf("Name = %s\n", name );
   printf("Description: %s\n", description );
}
</pre>
<p>When the above code is compiled and executed, it produces the following result.</p>
<pre class="result notranslate">
Name = Zara Ali
Description: Zara ali a DPS student in class 10th
</pre>
<p>Same program can be written using <b>calloc();</b> only thing is you need to replace malloc with calloc as follows &minus;</p>
<pre class="prettyprint notranslate">
calloc(200, sizeof(char));
</pre>
<p>So you have complete control and you can pass any size value while allocating memory, unlike arrays where once the size defined, you cannot change it.</p>
<h2>Resizing and Releasing Memory</h2>
<p>When your program comes out, operating system automatically release all the memory allocated by your program but as a good practice when you are not in need of memory anymore then you should release that memory by calling the function <b>free()</b>.</p>
<p>Alternatively, you can increase or decrease the size of an allocated memory block by calling the function <b>realloc()</b>. Let us check the above program once again and make use of realloc() and free() functions &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;string.h&gt;

int main() {

   char name[100];
   char *description;

   strcpy(name, "Zara Ali");

   /* allocate memory dynamically */
   description = malloc( 30 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcpy( description, "Zara ali a DPS student.");
   }
	
   /* suppose you want to store bigger description */
   description = realloc( description, 100 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcat( description, "She is in class 10th");
   }
   
   printf("Name = %s\n", name );
   printf("Description: %s\n", description );

   /* release memory using free() function */
   free(description);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result.</p>
<pre class="result notranslate">
Name = Zara Ali
Description: Zara ali a DPS student.She is in class 10th
</pre>
<p>You can try the above example without re-allocating extra memory, and strcat() function will give an error due to lack of available memory in description.</p>
<hr />


                </div></div>
                

          
</asp:Content>

