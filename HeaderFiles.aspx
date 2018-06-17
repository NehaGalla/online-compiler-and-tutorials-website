<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="HeaderFiles.aspx.cs" Inherits="HeaderFiles" %>


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
                    k
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
                <h1>Header Files</h1>
                <hr />
                <p>A header file is a file with extension <b>.h</b> which contains C function declarations and macro definitions to be shared between several source files. There are two types of header files: the files that the programmer writes and the files that comes with your compiler.</p>
                <p>You request to use a header file in your program by including it with the C preprocessing directive <b>#include</b>, like you have seen inclusion of <b>stdio.h</b> header file, which comes along with your compiler.</p>
                <p>Including a header file is equal to copying the content of the header file but we do not do it because it will be error-prone and it is not a good idea to copy the content of a header file in the source files, especially if we have multiple source files in a program.</p>
                <p>A simple practice in C or C++ programs is that we keep all the constants, macros, system wide global variables, and function prototypes in the header files and include that header file wherever it is required.</p>
                <h2>Include Syntax</h2>
                <p>Both the user and the system header files are included using the preprocessing directive <b>#include</b>. It has the following two forms &minus;</p>
                <pre class="result notranslate">
#include &lt;file&gt;
</pre>
                <p>This form is used for system header files. It searches for a file named 'file' in a standard list of system directories. You can prepend directories to this list with the -I option while compiling your source code.</p>
                <pre class="result notranslate">
#include "file"
</pre>
                <p>This form is used for header files of your own program. It searches for a file named 'file' in the directory containing the current file. You can prepend directories to this list with the -I option while compiling your source code.</p>
                <h2>Include Operation</h2>
                <p>The <b>#include</b> directive works by directing the C preprocessor to scan the specified file as input before continuing with the rest of the current source file. The output from the preprocessor contains the output already generated, followed by the output resulting from the included file, followed by the output that comes from the text after the <b>#include</b> directive. For example, if you have a header file header.h as follows &minus;</p>
                <pre class="result notranslate">
char *test (void);
</pre>
                <p>and a main program called <i>program.c</i> that uses the header file, like this &minus;</p>
                <pre class="prettyprint notranslate">
int x;
#include "header.h"

int main (void) {
   puts (test ());
}
</pre>
                <p>the compiler will see the same token stream as it would if program.c read.</p>
                <pre class="prettyprint notranslate">
int x;
char *test (void);

int main (void) {
   puts (test ());
}
</pre>
                <h2>Once-Only Headers</h2>
                <p>If a header file happens to be included twice, the compiler will process its contents twice and it will result in an error. The standard way to prevent this is to enclose the entire real contents of the file in a conditional, like this &minus;</p>
                <pre class="prettyprint notranslate">
#ifndef HEADER_FILE
#define HEADER_FILE

the entire header file file

#endif
</pre>
                <p>This construct is commonly known as a wrapper <b>#ifndef</b>. When the header is included again, the conditional will be false, because HEADER_FILE is defined. The preprocessor will skip over the entire contents of the file, and the compiler will not see it twice.</p>
                <h2>Computed Includes</h2>
                <p>Sometimes it is necessary to select one of the several different header files to be included into your program. For instance, they might specify configuration parameters to be used on different sorts of operating systems. You could do this with a series of conditionals as follows &minus;</p>
                <pre class="prettyprint notranslate">
#if SYSTEM_1
   # include "system_1.h"
#elif SYSTEM_2
   # include "system_2.h"
#elif SYSTEM_3
   ...
#endif
</pre>
                <p>But as it grows, it becomes tedious, instead the preprocessor offers the ability to use a macro for the header name. This is called a <b>computed include</b>. Instead of writing a header name as the direct argument of <b>#include</b>, you simply put a macro name there &minus;</p>
                <pre class="result notranslate">
#define SYSTEM_H "system_1.h"
...
#include SYSTEM_H
</pre>
                <p>SYSTEM_H will be expanded, and the preprocessor will look for system_1.h as if the <b>#include</b> had been written that way originally. SYSTEM_H could be defined by your Makefile with a -D option.</p>
                <hr />


            </div>
        </div>
</asp:Content>

