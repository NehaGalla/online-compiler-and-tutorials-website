
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_RG.aspx.cs" Inherits="java_RG" %>


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
                    <li><a href="java_FileI/O.aspx" style="color: White">File I/O</a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="RG" style="padding-left:350px;padding-top:100px;position:absolute">
<p>Java provides the java.util.regex package for pattern matching with regular expressions. Java regular expressions are very similar to the Perl programming language and very easy to learn.</p>
<p>A regular expression is a special sequence of characters that helps you match or find other strings or sets of strings, using a specialized syntax held in a pattern. They can be used to search, edit, or manipulate text and data.</p>
<p>The java.util.regex package primarily consists of the following three classes &minus;</p>
<ul class="list">
<li><p><b>Pattern Class</b> &minus; A Pattern object is a compiled representation of a regular expression. The Pattern class provides no public constructors. To create a pattern, you must first invoke one of its public static <b>compile()</b> methods, which will then return a Pattern object. These methods accept a regular expression as the first argument.</p></li>
<li><p><b>Matcher Class</b> &minus; A Matcher object is the engine that interprets the pattern and performs match operations against an input string. Like the Pattern class, Matcher defines no public constructors. You obtain a Matcher object by invoking the <b>matcher()</b> method on a Pattern object.</p></li>
<li><p><b>PatternSyntaxException</b> &minus; A PatternSyntaxException object is an unchecked exception that indicates a syntax error in a regular expression pattern.</p></li>
</ul>
<h2>Capturing Groups</h2>
<p>Capturing groups are a way to treat multiple characters as a single unit. They are created by placing the characters to be grouped inside a set of parentheses. For example, the regular expression (dog) creates a single group containing the letters "d", "o", and "g".</p>
<p>Capturing groups are numbered by counting their opening parentheses from the left to the right. In the expression ((A)(B(C))), for example, there are four such groups &minus;</p>
<ul class="list">
<li>((A)(B(C)))</li>
<li>(A)</li>
<li>(B(C))</li>
<li>(C)</li>
</ul>
<p>To find out how many groups are present in the expression, call the groupCount method on a matcher object. The groupCount method returns an <b>int</b> showing the number of capturing groups present in the matcher's pattern.</p>
<p>There is also a special group, group 0, which always represents the entire expression. This group is not included in the total reported by groupCount.</p>
<p><b>Example</b></p>
<p>Following example illustrates how to find a digit string from the given alphanumeric string &minus;</p>
<pre class="prettyprint notranslate tryit">
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {

   public static void main( String args[] ) {
      // String to be scanned to find the pattern.
      String line = "This order was placed for QT3000! OK?";
      String pattern = "(.*)(\\d+)(.*)";

      // Create a Pattern object
      Pattern r = Pattern.compile(pattern);

      // Now create matcher object.
      Matcher m = r.matcher(line);
      if (m.find( )) {
         System.out.println("Found value: " + m.group(0) );
         System.out.println("Found value: " + m.group(1) );
         System.out.println("Found value: " + m.group(2) );
      }else {
         System.out.println("NO MATCH");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Found value: This order was placed for QT3000! OK?
Found value: This order was placed for QT300
Found value: 0
</pre>
<h2>Regular Expression Syntax</h2>
<p>Here is the table listing down all the regular expression metacharacter syntax available in Java &minus;</p>
<table class="table table-bordered">
<tr>
<th>Subexpression</th>
<th style="text-align:center;">Matches</th>
</tr>
<tr>
<td style="text-align:center;">&#94;</td>
<td>Matches the beginning of the line.</td>
</tr>
<tr>
<td style="text-align:center;">$</td>
<td>Matches the end of the line.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">.</td>
<td>Matches any single character except newline. Using <b>m</b> option allows it to match the newline as well.</td>
</tr>
<tr>
<td style="text-align:center;">[...]</td>
<td>Matches any single character in brackets.</td>
</tr>
<tr>
<td style="text-align:center;">[&#94;...]</td>
<td>Matches any single character not in brackets.</td>
</tr>
<tr>
<td style="text-align:center;">\A</td>
<td>Beginning of the entire string.</td>
</tr>
<tr>
<td style="text-align:center;">\z</td>
<td>End of the entire string.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\Z</td>
<td>End of the entire string except allowable final line terminator.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">re*</td>
<td>Matches 0 or more occurrences of the preceding expression.</td>
</tr>
<tr>
<td style="text-align:center;">re&plus;</td>
<td>Matches 1 or more of the previous thing.</td>
</tr>
<tr>
<td style="text-align:center;">re?</td>
<td>Matches 0 or 1 occurrence of the preceding expression.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">re{ n}</td>
<td>Matches exactly n number of occurrences of the preceding expression.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">re{ n,}</td>
<td>Matches n or more occurrences of the preceding expression.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">re{ n, m}</td>
<td>Matches at least n and at most m occurrences of the preceding expression.</td>
</tr>
<tr>
<td style="text-align:center;">a| b</td>
<td>Matches either a or b.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">(re)</td>
<td>Groups regular expressions and remembers the matched text.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">(?: re)</td>
<td>Groups regular expressions without remembering the matched text.</td>
</tr>
<tr>
<td style="text-align:center;">(?&gt; re)</td>
<td>Matches the independent pattern without backtracking.</td>
</tr>
<tr>
<td style="text-align:center;">\w</td>
<td>Matches the word characters.</td>
</tr>
<tr>
<td style="text-align:center;">\W</td>
<td>Matches the nonword characters.</td>
</tr>
<tr>
<td style="text-align:center;">\s</td>
<td>Matches the whitespace. Equivalent to [\t\n\r\f].</td>
</tr>
<tr>
<td style="text-align:center;">\S</td>
<td>Matches the nonwhitespace.</td>
</tr>
<tr>
<td style="text-align:center;">\d</td>
<td>Matches the digits. Equivalent to [0-9].</td>
</tr>
<tr>
<td style="text-align:center;">\D</td>
<td>Matches the nondigits.</td>
</tr>
<tr>
<td style="text-align:center;">\A</td>
<td>Matches the beginning of the string.</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\Z</td>
<td>Matches the end of the string. If a newline exists, it matches just before newline.</td>
</tr>
<tr>
<td style="text-align:center;">\z</td>
<td>Matches the end of the string.</td>
</tr>
<tr>
<td style="text-align:center;">\G</td>
<td>Matches the point where the last match finished.</td>
</tr>
<tr>
<td style="text-align:center;">\n</td>
<td>Back-reference to capture group number "n".</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">\b</td>
<td>Matches the word boundaries when outside the brackets. Matches the backspace (0x08) when inside the brackets.</td>
</tr>
<tr>
<td style="text-align:center;">\B</td>
<td>Matches the nonword boundaries.</td>
</tr>
<tr>
<td style="text-align:center;">\n, \t, etc.</td>
<td>Matches newlines, carriage returns, tabs, etc.</td>
</tr>
<tr>
<td style="text-align:center;">\Q</td>
<td>Escape (quote) all characters up to \E.</td>
</tr>
<tr>
<td style="text-align:center;">\E</td>
<td>Ends quoting begun with \Q.</td>
</tr>
</table>
<h2>Methods of the Matcher Class</h2>
<p>Here is a list of useful instance methods &minus;</p>
<h3>Index Methods</h3>
<p>Index methods provide useful index values that show precisely where the match was found in the input string &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public int start()</b></p>
<p>Returns the start index of the previous match.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public int start(int group)</b></p>
<p>Returns the start index of the subsequence captured by the given group during the previous match operation.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public int end()</b></p>
<p>Returns the offset after the last character matched.</p></td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public int end(int group)</b></p>
<p>Returns the offset after the last character of the subsequence captured by the given group during the previous match operation.</p></td>
</tr>
</table>
<h3>Study Methods</h3>
<p>Study methods review the input string and return a Boolean indicating whether or not the pattern is found &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public boolean lookingAt()</b></p>
<p>Attempts to match the input sequence, starting at the beginning of the region, against the pattern.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public boolean find()</b></p>
<p>Attempts to find the next subsequence of the input sequence that matches the pattern.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public boolean find(int start)</b></p>
<p>Resets this matcher and then attempts to find the next subsequence of the input sequence that matches the pattern, starting at the specified index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public boolean matches()</b></p>
<p>Attempts to match the entire region against the pattern.</p>
</td>
</tr>
</table>
<h2>Replacement Methods</h2>
<p>Replacement methods are useful methods for replacing text in an input string &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public Matcher appendReplacement(StringBuffer sb, String replacement)</b></p>
<p>Implements a non-terminal append-and-replace step.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public StringBuffer appendTail(StringBuffer sb)</b></p>
<p>Implements a terminal append-and-replace step.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public String replaceAll(String replacement)</b></p>
<p>Replaces every subsequence of the input sequence that matches the pattern with the given replacement string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public String replaceFirst(String replacement)</b></p>
<p>Replaces the first subsequence of the input sequence that matches the pattern with the given replacement string.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><p><b>public static String quoteReplacement(String s)</b></p>
<p>Returns a literal replacement String for the specified String. This method produces a String that will work as a literal replacement <b>s</b> in the appendReplacement method of the Matcher class.</p>
</td>
</tr>
</table>
<h3>The start and end Methods</h3>
<p>Following is the example that counts the number of times the word "cat" appears in the input string &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {

   private static final String REGEX = "\\bcat\\b";
   private static final String INPUT = "cat cat cat cattie cat";

   public static void main( String args[] ) {
      Pattern p = Pattern.compile(REGEX);
      Matcher m = p.matcher(INPUT);   // get a matcher object
      int count = 0;

      while(m.find()) {
         count++;
         System.out.println("Match number "+count);
         System.out.println("start(): "+m.start());
         System.out.println("end(): "+m.end());
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Match number 1
start(): 0
end(): 3
Match number 2
start(): 4
end(): 7
Match number 3
start(): 8
end(): 11
Match number 4
start(): 19
end(): 22
</pre>
<p>You can see that this example uses word boundaries to ensure that the letters "c" "a" "t" are not merely a substring in a longer word. It also gives some useful information about where in the input string the match has occurred.</p>
<p>The start method returns the start index of the subsequence captured by the given group during the previous match operation, and the end returns the index of the last character matched, plus one.</p>
<h3>The matches and lookingAt Methods</h3>
<p>The matches and lookingAt methods both attempt to match an input sequence against a pattern. The difference, however, is that matches requires the entire input sequence to be matched, while lookingAt does not.</p>
<p>Both methods always start at the beginning of the input string. Here is the example explaining the functionality &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {

   private static final String REGEX = "foo";
   private static final String INPUT = "fooooooooooooooooo";
   private static Pattern pattern;
   private static Matcher matcher;

   public static void main( String args[] ) {
      pattern = Pattern.compile(REGEX);
      matcher = pattern.matcher(INPUT);

      System.out.println("Current REGEX is: "+REGEX);
      System.out.println("Current INPUT is: "+INPUT);

      System.out.println("lookingAt(): "+matcher.lookingAt());
      System.out.println("matches(): "+matcher.matches());
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Current REGEX is: foo
Current INPUT is: fooooooooooooooooo
lookingAt(): true
matches(): false
</pre>
<h3>The replaceFirst and replaceAll Methods</h3>
<p>The replaceFirst and replaceAll methods replace the text that matches a given regular expression. As their names indicate, replaceFirst replaces the first occurrence, and replaceAll replaces all occurrences.</p>
<p>Here is the example explaining the functionality &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {

   private static String REGEX = "dog";
   private static String INPUT = "The dog says meow. " + "All dogs say meow.";
   private static String REPLACE = "cat";

   public static void main(String[] args) {
      Pattern p = Pattern.compile(REGEX);
      
      // get a matcher object
      Matcher m = p.matcher(INPUT); 
      INPUT = m.replaceAll(REPLACE);
      System.out.println(INPUT);
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
The cat says meow. All cats say meow.
</pre>
<h3>The appendReplacement and appendTail Methods</h3>
<p>The Matcher class also provides appendReplacement and appendTail methods for text replacement.</p>
<p>Here is the example explaining the functionality &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {

   private static String REGEX = "a*b";
   private static String INPUT = "aabfooaabfooabfoob";
   private static String REPLACE = "-";
   public static void main(String[] args) {

      Pattern p = Pattern.compile(REGEX);
      
      // get a matcher object
      Matcher m = p.matcher(INPUT);
      StringBuffer sb = new StringBuffer();
      while(m.find()) {
         m.appendReplacement(sb, REPLACE);
      }
      m.appendTail(sb);
      System.out.println(sb.toString());
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
-foo-foo-foo-
</pre>
<h3>PatternSyntaxException Class Methods</h3>
<p>A PatternSyntaxException is an unchecked exception that indicates a syntax error in a regular expression pattern. The PatternSyntaxException class provides the following methods to help you determine what went wrong &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public String getDescription()</b></p>
<p>Retrieves the description of the error.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public int getIndex()</b></p>
<p>Retrieves the error index.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public String getPattern()</b></p>
<p>Retrieves the erroneous regular expression pattern.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public String getMessage()</b></p>
<p>Returns a multi-line string containing the description of the syntax error and its index, the erroneous regular expression pattern, and a visual indication of the error index within the pattern.</p>
</td>
</tr>
</table>
</div>
                

          
</asp:Content>

