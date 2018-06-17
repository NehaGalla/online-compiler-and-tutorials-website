
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_Numbers.aspx.cs" Inherits="java_Numbers" %>


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
     <div class="Numbers" style="padding-left:350px;padding-top:100px;position:absolute">
         <hr />
<p>Normally, when we work with Numbers, we use primitive data types such as byte, int, long, double, etc.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
int i = 5000;
float gpa = 13.65;
double mask = 0xaf;
</pre>
<p>However, in development, we come across situations where we need to use objects instead of primitive data types. In order to achieve this, Java provides <b>wrapper classes</b>.</p> 
<p>All the wrapper classes (Integer, Long, Byte, Double, Float, Short) are subclasses of the abstract class Number.</p>
<img src="/java/images/number_classes.jpg" alt="Number Classes" />
<p>The object of the wrapper class contains or wraps its respective primitive data type. Converting primitive data types into object is called <b>boxing</b>, and this is taken care by the compiler. Therefore, while using a wrapper class you just need to pass the value of the primitive data type to the constructor of the Wrapper class.</p>
<p>And the Wrapper object will be converted back to a primitive data type, and this process is called unboxing. The <b>Number</b> class is part of the java.lang package.</p>
<p>Following is an example of boxing and unboxing &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class Test {

   public static void main(String args[]) {
      Integer x = 5; // boxes int to an Integer object
      x =  x + 10;   // unboxes the Integer to a int
      System.out.println(x); 
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
15
</pre>
<p>When x is assigned an integer value, the compiler boxes the integer because x is integer object. Later, x is unboxed so that they can be added as an integer.</p>
<h2>Number Methods</h2>
<p>Following is the list of the instance methods that all the subclasses of the Number class implements &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><a href="/java/number_xxxvalue.htm">xxxValue()</a>
<p>Converts the value of <i>this</i> Number object to the xxx data type and returns it.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><a href="/java/number_compareto.htm">compareTo()</a>
<p>Compares <i>this</i> Number object to the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><a href="/java/number_equals.htm">equals()</a>
<p>Determines whether <i>this</i> number object is equal to the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><a href="/java/number_valueof.htm">valueOf()</a>
<p>Returns an Integer object holding the value of the specified primitive.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><a href="/java/number_tostring.htm">toString()</a>
<p>Returns a String object representing the value of a specified int or Integer.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><a href="/java/number_parseint.htm">parseInt()</a>
<p>This method is used to get the primitive data type of a certain String.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><a href="/java/number_abs.htm">abs()</a>
<p>Returns the absolute value of the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">8</td>
<td><a href="/java/number_ceil.htm">ceil()</a>
<p>Returns the smallest integer that is greater than or equal to the argument. Returned as a double.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">9</td>
<td><a href="/java/number_floor.htm">floor()</a>
<p>Returns the largest integer that is less than or equal to the argument. Returned as a double.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">10</td>
<td><a href="/java/number_rint.htm">rint()</a>
<p>Returns the integer that is closest in value to the argument. Returned as a double.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">11</td>
<td><a href="/java/number_round.htm">round()</a>
<p>Returns the closest long or int, as indicated by the method's return type to the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">12</td>
<td><a href="/java/number_min.htm">min()</a>
<p>Returns the smaller of the two arguments.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">13</td>
<td><a href="/java/number_max.htm">max()</a>
<p>Returns the larger of the two arguments.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">14</td>
<td><a href="/java/number_exp.htm">exp()</a>
<p>Returns the base of the natural logarithms, e, to the power of the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">15</td>
<td><a href="/java/number_log.htm">log()</a>
<p>Returns the natural logarithm of the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">16</td>
<td><a href="/java/number_pow.htm">pow()</a>
<p>Returns the value of the first argument raised to the power of the second argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">17</td>
<td><a href="/java/number_sqrt.htm">sqrt()</a>
<p>Returns the square root of the argument.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">18</td>
<td><a href="/java/number_sin.htm">sin()</a>
<p>Returns the sine of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">19</td>
<td><a href="/java/number_cos.htm">cos()</a>
<p>Returns the cosine of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">20</td>
<td><a href="/java/number_tan.htm">tan()</a>
<p>Returns the tangent of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">21</td>
<td><a href="/java/number_asin.htm">asin()</a>
<p>Returns the arcsine of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">22</td>
<td><a href="/java/number_acos.htm">acos()</a>
<p>Returns the arccosine of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">23</td>
<td><a href="/java/number_atan.htm">atan()</a>
<p>Returns the arctangent of the specified double value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">24</td>
<td><a href="/java/number_atan2.htm">atan2()</a>
<p>Converts rectangular coordinates (x, y) to polar coordinate (r, theta) and returns theta.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">25</td>
<td><a href="/java/number_todegrees.htm">toDegrees()</a>
<p>Converts the argument to degrees.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">26</td>
<td><a href="/java/number_toradians.htm">toRadians()</a>
<p>Converts the argument to radians.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">27</td>
<td><a href="/java/number_random.htm">random()</a>
<p>Returns a random number.</p>
</td>
</tr>
</table>
<h2>What is Next?</h2>
<p>In the next section, we will be going through the Character class in Java. You will be learning how to use object Characters and primitive data type char in Java.</p>
<hr />
         
</div>
                

          
</asp:Content>

