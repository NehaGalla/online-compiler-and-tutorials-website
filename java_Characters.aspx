
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_characters.aspx.cs" Inherits="java_characters" %>


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
                      <li><a href="Java_Home.aspx" style="color: White">java home</a></li>
                    <li><a href="java_objects.aspx" style="color: White">java objects&classes</a></li>
                    <li><a href="java_dataTypes.aspx" style="color: White">Data Types</a></li>
                    <li><a href="java_Variables.aspx" style="color: White">Variable Types</a></li>
                    <li><a href="java_Modifier.aspx" style="color: White">Modifier Types</a></li>
                    <li><a href="java_Operators.aspx" style="color: White">Operators</a></li>
                    <li><a href="java_loops.aspx" style="color: White">Loop Control</a></li>
                    <li><a href="java_decisionMaking.aspx" style="color: White">Decision Making</a></li>
                    <li><a href="java_Numbers.aspx" style="color: White">Numbers</a></li>
                    <li><a href="java_characters.aspx" style="color: White">Characters</a></li>
                    <li><a href="java_Strings.aspx" style="color: White">Strings</a></li>
                    <li><a href="java_Arrays.aspx" style="color: White">Arrays</a></li>
                    <li><a href="java_dateTime.aspx" style="color: White">Date and Time</a></li>
                    <li><a href="java_RG.aspx" style="color: White">Regular Expressions</a></li>
                    <li><a href="java_methods.aspx" style="color: White">Methods</a></li>
                    <li><a href="java_FileI/O.aspx" style="color: White">File I/O/a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="Character" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>Normally, when we work with characters, we use primitive data  types char.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
char ch = 'a';

// Unicode for uppercase Greek omega character
char uniChar = '\u039A'; 

// an array of chars
char[] charArray ={ 'a', 'b', 'c', 'd', 'e' }; 
</pre>
<p>However in development, we come across situations where we need to use objects instead of primitive data types. In order to achieve this, Java provides wrapper class <b>Character</b> for primitive data type char.</p>
<p>The Character class offers a number of useful class (i.e., static) methods for manipulating characters. You can create a Character object with the Character constructor &minus;</p>
<pre class="result notranslate">
Character ch = new Character('a');
</pre>
<p>The Java compiler will also create a Character object for you under some circumstances. For example, if you pass a primitive char into a method that expects an object, the compiler automatically converts the char to a Character for you. This feature is called autoboxing or unboxing, if the conversion goes the other way.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
// Here following primitive char 'a'
// is boxed into the Character object ch
Character ch = 'a';

// Here primitive 'x' is boxed for method test,
// return is unboxed to char 'c'
char c = test('x');
</pre>
<h2>Escape Sequences</h2>
<p>A character preceded by a backslash (\) is an escape sequence and has a special meaning to the compiler.</p>
<p>The newline character (\n) has been used frequently in this tutorial in System.out.println() statements to advance to the next line after the string is printed.</p>
<p>Following table shows the Java escape sequences &minus;</p>
<table class="table table-bordered">
<tr>
<th>Escape Sequence</th>
<th style="text-align:center;">Description</th>
</tr>
<tr>
<td style="text-align:center;">\t</td>
<td>Inserts a tab in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center;">\b</td>
<td>Inserts a backspace in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center;">\n</td>
<td>Inserts a newline in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center;">\r</td>
<td>Inserts a carriage return in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center;">\f</td>
<td>Inserts a form feed in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\'</td>
<td>Inserts a single quote character in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\"</td>
<td>Inserts a double quote character in the text at this point.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\\</td>
<td>Inserts a backslash character in the text at this point.</td>
</tr>
</table>
<p>When an escape sequence is encountered in a print statement, the compiler interprets it accordingly.</p>
<h3>Example</h3>
<p>If you want to put quotes within quotes, you must use the escape sequence, \", on the interior quotes &minus;</p>
<pre class="prettyprint notranslate tryit">
public class Test {

   public static void main(String args[]) {
      System.out.println("She said \"Hello!\" to me.");
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
She said "Hello!" to me.
</pre>
<h2>Character Methods</h2>
<p>Following is the list of the important instance methods that all the subclasses of the Character class implement &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/character_isletter.htm">isLetter()</a>
<p>Determines whether the specified char value is a letter.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/character_isdigit.htm">isDigit()</a>
<p>Determines whether the specified char value is a digit.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><a href="/java/character_iswhitespace.htm">isWhitespace()</a>
<p>Determines whether the specified char value is white space.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><a href="/java/character_isuppercase.htm">isUpperCase()</a>
<p>Determines whether the specified char value is uppercase.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><a href="/java/character_islowercase.htm">isLowerCase()</a>
<p>Determines whether the specified char value is lowercase.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><a href="/java/character_touppercase.htm">toUpperCase()</a>
<p>Returns the uppercase form of the specified char value.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><a href="/java/character_tolowercase.htm">toLowerCase()</a>
<p>Returns the lowercase form of the specified char value.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">8</td>
<td><a href="/java/character_tostring.htm">toString()</a>
<p>Returns a String object representing the specified character value that is, a one-character string.</p></td>
</tr>
</table>
<p>For a complete list of methods, please refer to the java.lang.Character API specification.</p>
<h2>What is Next?</h2>
<p>In the next section, we will be going through the String class in Java. You will be learning how to declare and use Strings efficiently as well as some of the important methods in the String class.</p>
</div>
                

          
</asp:Content>

