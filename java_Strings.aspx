
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_Strings.aspx.cs" Inherits="java_Strings" %>


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
     <div class="Strings" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>Strings, which are widely used in Java programming, are a sequence of characters. In Java programming language, strings are treated as objects.</p>
<p>The Java platform provides the String class to create and manipulate strings.</p>
<h2>Creating Strings</h2>
<p>The most direct way to create a string is to write &minus;</p>
<pre class="result notranslate">
String greeting = "Hello world!";
</pre>
<p>Whenever it encounters a string literal in your code, the compiler creates a String object with its value in this case, "Hello world!'.</p>
<p>As with any other object, you can create String objects by using the new keyword and a constructor. The String class has 11 constructors that allow you to provide the initial value of the string using different sources, such as an array of characters.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class StringDemo {

   public static void main(String args[]) {
      char[] helloArray = { 'h', 'e', 'l', 'l', 'o', '.' };
      String helloString = new String(helloArray);  
      System.out.println( helloString );
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3> 
<pre class="result notranslate">
hello.
</pre>
<p><b>Note</b> &minus; The String class is immutable, so that once it is created a String object cannot be changed. If there is a necessity to make a lot of modifications to Strings of characters, then you should use <a href="/java/java_string_buffer.htm">String Buffer &amp; String Builder</a> Classes.</p>
<h2>String Length</h2>
<p>Methods used to obtain information about an object are known as <b>accessor methods</b>. One accessor method that you can use with strings is the length() method, which returns the number of characters contained in the string object.</p>
<p>The following program is an example of <b>length()</b>, method String class.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class StringDemo {

   public static void main(String args[]) {
      String palindrome = "Dot saw I was Tod";
      int len = palindrome.length();
      System.out.println( "String Length is : " + len );
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3> 
<pre class="result notranslate">
String Length is : 17
</pre>
<h2>Concatenating Strings</h2>
<p>The String class includes a method for concatenating two strings &minus;</p>
<pre class="result notranslate">
string1.concat(string2);
</pre>
<p>This returns a new string that is string1 with string2 added to it at the end. You can also use the concat() method with string literals, as in &minus;</p>
<pre class="result notranslate">
"My name is ".concat("Zara");
</pre>
<p>Strings are more commonly concatenated with the &plus; operator, as in &minus;</p>
<pre class="result notranslate">
"Hello," + " world" + "!"
</pre>
<p>which results in &minus;</p>
<pre class="result notranslate">
"Hello, world!"
</pre>
<p>Let us look at the following example &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class StringDemo {

   public static void main(String args[]) {
      String string1 = "saw I was ";
      System.out.println("Dot " + string1 + "Tod");
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Dot saw I was Tod
</pre>
<h2>Creating Format Strings</h2>
<p>You have printf() and format() methods to print output with formatted numbers. The String class has an equivalent class method, format(), that returns a String object rather than a PrintStream object.</p>
<p>Using String's static format() method allows you to create a formatted string that you can reuse, as opposed to a one-time print statement. For example, instead of &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
System.out.printf("The value of the float variable is " +
                  "%f, while the value of the integer " +
                  "variable is %d, and the string " +
                  "is %s", floatVar, intVar, stringVar);
</pre>
<p>You can write &minus;</p>
<pre class="prettyprint notranslate">
String fs;
fs = String.format("The value of the float variable is " +
                   "%f, while the value of the integer " +
                   "variable is %d, and the string " +
                   "is %s", floatVar, intVar, stringVar);
System.out.println(fs);
</pre>
<h2>String Methods</h2>
<p>Here is the list of methods supported by String class &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/java_string_charat.htm">char  charAt(int index)</a>
<p>Returns the character at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/java_string_compareto.htm">int compareTo(Object o)</a>
<p>Compares this String to another Object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><a href="/java/java_string_compareto_anotherstring.htm">int compareTo(String anotherString)</a>
<p>Compares two strings lexicographically.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><a href="/java/java_string_comparetoignorecase.htm">int compareToIgnoreCase(String str)</a> 
<p>Compares two strings lexicographically, ignoring case differences.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><a href="/java/java_string_concat.htm">String concat(String str)</a>
<p>Concatenates the specified string to the end of this string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><a href="/java/java_string_contentequals.htm">boolean contentEquals(StringBuffer sb)</a>
<p>Returns true if and only if this String represents the same sequence of characters as the specified StringBuffer.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><a href="/java/java_string_copyvalueof.htm">static String copyValueOf(char[] data)</a>
<p>Returns a String that represents the character sequence in the array specified.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">8</td>
<td><a href="/java/java_string_copyvalueof_dataoffsetcount.htm">static String copyValueOf(char[] data, int offset, int count)</a>
<p>Returns a String that represents the character sequence in the array specified.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">9</td>
<td><a href="/java/java_string_endswith.htm">boolean endsWith(String suffix)</a> 
<p>Tests if this string ends with the specified suffix.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">10</td>
<td><a href="/java/java_string_equals.htm">boolean equals(Object anObject)</a>
<p>Compares this string to the specified object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">11</td>
<td><a href="/java/java_string_equalsignorecase.htm">boolean equalsIgnoreCase(String anotherString)</a>
<p>Compares this String to another String, ignoring case considerations.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">12</td>
<td><a href="/java/java_string_getbytes.htm">byte getBytes()</a> 
<p>Encodes this String into a sequence of bytes using the platform's default charset, storing the result into a new byte array.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">13</td>
<td><a href="/java/java_string_getbytes_charsetname.htm">byte[] getBytes(String charsetName)</a>
<p>Encodes this String into a sequence of bytes using the named charset, storing the result into a new byte array.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">14</td>
<td><a href="/java/java_string_getchars.htm">void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin)</a>
<p>Copies characters from this string into the destination character array.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">15</td>
<td><a href="/java/java_string_hashcode.htm">int hashCode()</a>
<p>Returns a hash code for this string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">16</td>
<td><a href="/java/java_string_indexof.htm">int indexOf(int ch)</a>
<p>Returns the index within this string of the first occurrence of the specified character.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">17</td>
<td><a href="/java/java_string_indexof_fromindex.htm">int indexOf(int ch, int fromIndex)</a> 
<p>Returns the index within this string of the first occurrence of the specified character, starting the search at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">18</td>
<td><a href="/java/java_string_indexof_str.htm">int indexOf(String str)</a>
<p>Returns the index within this string of the first occurrence of the specified substring.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">19</td>
<td><a href="/java/java_string_indexof_strfromindex.htm">int indexOf(String str, int fromIndex)</a>
<p>Returns the index within this string of the first occurrence of the specified substring, starting at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">20</td>
<td><a href="/java/java_string_intern.htm">String intern()</a>
<p>Returns a canonical representation for the string object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">21</td>
<td><a href="/java/java_string_lastindexof.htm">int lastIndexOf(int ch)</a>
<p>Returns the index within this string of the last occurrence of the specified character.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">22</td>
<td><a href="/java/java_string_lastindexof_chfromindex.htm">int lastIndexOf(int ch, int fromIndex)</a>
<p>Returns the index within this string of the last occurrence of the specified character, searching backward starting at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">23</td>
<td><a href="/java/java_string_lastindexof_str.htm">int lastIndexOf(String str)</a>
<p>Returns the index within this string of the rightmost occurrence of the specified substring.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">24</td>
<td><a href="/java/java_string_lastindexof_fromindex.htm">int lastIndexOf(String str, int fromIndex)</a> 
<p>Returns the index within this string of the last occurrence of the specified substring, searching backward starting at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">25</td>
<td><a href="/java/java_string_length.htm">int length()</a>
<p>Returns the length of this string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">26</td>
<td><a href="/java/java_string_matches.htm">boolean matches(String regex)</a>
<p>Tells whether or not this string matches the given regular expression.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">27</td>
<td><a href="/java/java_string_regionmatches_ignorecase.htm">boolean regionMatches(boolean ignoreCase, int toffset, String other, int ooffset, int len) </a>
<p>Tests if two string regions are equal.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">28</td>
<td><a href="/java/java_string_regionmatches.htm">boolean regionMatches(int toffset, String other, int ooffset, int len)</a>
<p>Tests if two string regions are equal.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">29</td>
<td><a href="/java/java_string_replace.htm">String replace(char oldChar, char newChar)</a>
<p>Returns a new string resulting from replacing all occurrences of oldChar in this string with newChar.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">30</td>
<td><a href="/java/java_string_replaceall.htm">String replaceAll(String regex, String replacement</a>
<p>Replaces each substring of this string that matches the given regular expression with the given replacement.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">31</td>
<td><a href="/java/java_string_replacefirst.htm">String replaceFirst(String regex, String replacement)</a> 
<p>Replaces the first substring of this string that matches the given regular expression with the given replacement.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">32</td>
<td><a href="/java/java_string_split.htm">String[] split(String regex)</a>
<p>Splits this string around matches of the given regular expression.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">33</td>
<td><a href="/java/java_string_split_regexlimit.htm">String[] split(String regex, int limit)</a>
<p>Splits this string around matches of the given regular expression.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">34</td>
<td><a href="/java/java_string_startswith.htm">boolean startsWith(String prefix)</a>
<p>Tests if this string starts with the specified prefix.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">35</td>
<td><a href="/java/java_string_startswith_prefixtoffset.htm">boolean startsWith(String prefix, int toffset)</a>
<p>Tests if this string starts with the specified prefix beginning a specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">36</td>
<td><a href="/java/java_string_subsequence.htm">CharSequence subSequence(int beginIndex, int endIndex)</a>
<p>Returns a new character sequence that is a subsequence of this sequence.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">37</td>
<td><a href="/java/java_string_substring.htm">String substring(int beginIndex)</a>
<p>Returns a new string that is a substring of this string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">38</td>
<td><a href="/java/java_string_substring_beginendindex.htm">String substring(int beginIndex, int endIndex)</a>
<p>Returns a new string that is a substring of this string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">39</td>
<td><a href="/java/java_string_tochararray.htm">char[] toCharArray()</a> 
<p>Converts this string to a new character array.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">40</td>
<td><a href="/java/java_string_tolowercase.htm">String toLowerCase()</a>
<p>Converts all of the characters in this String to lower case using the rules of the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">41</td>
<td><a href="/java/java_string_tolowercase_locale.htm">String toLowerCase(Locale locale)</a>
<p>Converts all of the characters in this String to lower case using the rules of the given Locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">42</td>
<td><a href="/java/java_string_tostring.htm">String toString()</a>
<p>This object (which is already a string!) is itself returned.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">43</td>
<td><a href="/java/java_string_touppercase.htm">String toUpperCase()</a> 
<p>Converts all of the characters in this String to upper case using the rules of the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">44</td>
<td><a href="/java/java_string_touppercase_locale.htm">String toUpperCase(Locale locale)</a> 
<p>Converts all of the characters in this String to upper case using the rules of the given Locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">45</td>
<td><a href="/java/java_string_trim.htm">String trim()</a> 
<p>Returns a copy of the string, with leading and trailing whitespace omitted.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">46</td>
<td><a href="/java/java_string_valueof.htm">static String valueOf(primitive data type x)</a>
<p>Returns the string representation of the passed data type argument.</p>
</td>
</tr>
</table>
</div>
                

          
</asp:Content>

