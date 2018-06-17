<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Strings.aspx.cs" Inherits="Strings" %>


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
                <h1>Strings</h1>
                <hr />
<p>Strings are actually one-dimensional array of characters terminated by a <b>null</b> character '\0'. Thus a null-terminated string contains the characters that comprise the string followed by a <b>null</b>.</p>
<p>The following declaration and initialization create a string consisting of the word "Hello". To hold the null character at the end of the array, the size of the character array containing the string is one more than the number of characters in the word "Hello."</p>
<pre class="result notranslate">
char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
</pre>
<p>If you follow the rule of array initialization then you can write the above statement as follows &minus;</p>
<pre class="result notranslate">
char greeting[] = "Hello";
</pre>
<p>Following is the memory presentation of the above defined string in C/C++ &minus;</p>
<p>Actually, you do not place the <i>null</i> character at the end of a string constant. The C compiler automatically places the '\0' at the end of the string when it initializes the array. Let us try to print the above mentioned string &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;

int main () {

   char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
   printf("Greeting message: %s\n", greeting );
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Greeting message: Hello
</pre>
<p>C supports a wide range of functions that manipulate null-terminated strings &minus;</p>
<table class="table table-bordered">
<tr>
<th style="width:5%">S.N.</th>
<th style="text-align:center;">Function &amp; Purpose</th>
</tr>
<tr>
<td>1</td>
<td><p><b>strcpy(s1, s2);</b></p>
<p>Copies string s2 into string s1.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><p><b>strcat(s1, s2);</b></p>
<p>Concatenates string s2 onto the end of string s1.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><p><b>strlen(s1);</b></p>
<p>Returns the length of string s1.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><p><b>strcmp(s1, s2);</b></p>
<p>Returns 0 if s1 and s2 are the same; less than 0 if s1&lt;s2; greater than 0 if s1&gt;s2.</p>
</td>
</tr>
<tr>
<td>5</td>
<td><p><b>strchr(s1, ch);</b></p>
<p>Returns a pointer to the first occurrence of character ch in string s1.</p>
</td>
</tr>
<tr>
<td>6</td>
<td><p><b>strstr(s1, s2);</b></p>
<p>Returns a pointer to the first occurrence of string s2 in string s1.</p>
</td>
</tr>
</table>
<p>The following example uses some of the above-mentioned functions &minus;</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;

int main () {

   char str1[12] = "Hello";
   char str2[12] = "World";
   char str3[12];
   int  len ;

   /* copy str1 into str3 */
   strcpy(str3, str1);
   printf("strcpy( str3, str1) :  %s\n", str3 );

   /* concatenates str1 and str2 */
   strcat( str1, str2);
   printf("strcat( str1, str2):   %s\n", str1 );

   /* total lenghth of str1 after concatenation */
   len = strlen(str1);
   printf("strlen(str1) :  %d\n", len );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
strcpy( str3, str1) :  Hello
strcat( str1, str2):   HelloWorld
strlen(str1) :  10
</pre>
<hr />

          </div></div>
</asp:Content>

