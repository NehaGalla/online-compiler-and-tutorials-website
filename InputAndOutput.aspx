<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="InputAndOutput.aspx.cs" Inherits="InputAndOutput" %>


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
                <h1>Input and Output</h1>
                <hr />
<p>When we say <b>Input</b>, it means to feed some data into a program. An input can be given in the form of a file or from the command line. C programming provides a set of built-in functions to read the given input and feed it to the program as per requirement.</p>
<p>When we say <b>Output</b>, it means to display some data on screen, printer, or in any file. C programming provides a set of built-in functions to output the data on the computer screen as well as to save it in text or binary files.</p>
<h2>The Standard Files</h2>
<p>C programming treats all the devices as files. So devices such as the display are addressed in the same way as files and the following three files are automatically opened when a program executes to provide access to the keyboard and screen.</p>
<table class="table table-bordered">
<tr>
<th style="width:30%">Standard File</th>
<th>File Pointer</th>
<th>Device</th>
</tr>
<tr>
<td>Standard input</td>
<td>stdin</td>
<td>Keyboard</td>
</tr>
<tr>
<td>Standard output</td>
<td>stdout</td>
<td>Screen</td>
</tr>
<tr>
<td>Standard error</td>
<td>stderr</td>
<td>Your screen</td>
</tr>
</table>
<p>The file pointers are the means to access the file for reading and writing purpose. This section explains how to read values from the screen and how to print the result on the screen.</p>
<h2>The getchar() and putchar() Functions</h2>
<p>The <b>int getchar(void)</b> function reads the next available character from the screen and returns it as an integer. This function reads only single character at a time. You can use this method in the loop in case you want to read more than one character from the screen.</p>
<p>The <b>int putchar(int c)</b> function puts the passed character on the screen and returns the same character. This function puts only single character at a time. You can use this method in the loop in case you want to display more than one character on the screen. Check the following example &minus;</p>
<pre class="prettyprint notranslate">
#include &lt;stdio.h&gt;
int main( ) {

   int c;

   printf( "Enter a value :");
   c = getchar( );

   printf( "\nYou entered: ");
   putchar( c );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it waits for you to input some text. When you enter a text and press enter, then the program proceeds and reads only a single character and displays it as follows &minus;</p>
<pre class="result notranslate">
$./a.out
<b>Enter a value :</b> this is test
<b>You entered:</b> t
</pre>
<h2>The gets() and puts() Functions</h2>
<p>The <b>char *gets(char *s)</b> function reads a line from <b>stdin</b> into the buffer pointed to by <b>s</b> until either a terminating newline or EOF (End of File).</p>
<p>The <b>int puts(const char *s)</b> function writes the string 's' and 'a' trailing newline to <b>stdout</b>.</p>
<pre class="prettyprint notranslate">
#include &lt;stdio.h&gt;
int main( ) {

   char str[100];

   printf( "Enter a value :");
   gets( str );

   printf( "\nYou entered: ");
   puts( str );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it waits for you to input some text. When you enter a text and press enter, then the program proceeds and reads the complete line till end, and displays it as follows &minus;</p>
<pre class="result notranslate">
$./a.out
<b>Enter a value :</b> this is test
<b>You entered:</b> this is test
</pre>
<h2>The scanf() and printf() Functions</h2>
<p>The <b>int scanf(const char *format, ...)</b>  function reads the input from the standard input stream <b>stdin</b> and scans that input according to the <b>format</b> provided.</p>
<p>The <b>int printf(const char *format, ...)</b> function writes the output to the standard output stream <b>stdout</b> and produces the output according to the format provided.</p>
<p>The <b>format</b> can be a simple constant string, but you can specify %s, %d, %c, %f, etc., to print or read strings, integer, character or float respectively. There are many other formatting options available which can be used based on requirements. Let us now proceed with a simple example to understand the concepts better &minus;</p>
<pre class="prettyprint notranslate">
#include &lt;stdio.h&gt;
int main( ) {

   char str[100];
   int i;

   printf( "Enter a value :");
   scanf("%s %d", str, &amp;i);

   printf( "\nYou entered: %s %d ", str, i);

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it waits for you to input some text. When you enter a text and press enter, then program proceeds and reads the input and displays it as follows &minus;</p>
<pre class="result notranslate">
$./a.out
<b>Enter a value :</b> seven 7
<b>You entered:</b> seven 7
</pre>
<p>Here, it should be noted that scanf() expects input in the same format as you provided %s and %d, which means you have to provide valid inputs like "string integer". If you provide "string string" or "integer integer", then it will be assumed as wrong input. Secondly, while reading a string, scanf() stops reading as soon as it encounters a space, so "this is test" are three strings for scanf().</p>
<hr />


                </div></div>     

          
</asp:Content>

