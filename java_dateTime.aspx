﻿
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Java_dateTime.aspx.cs" Inherits="java_dateTime" %>


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
     <div class="datetTime" style="padding-left:350px;padding-top:100px;position:absolute">
         <hr />
<p>Java provides the <b>Date</b> class available in <b>java.util</b> package, this class encapsulates the current date and time.</p>
<p>The Date class supports two constructors as shown in the following table.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Constructor &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>Date( )</b></p>
<p>This constructor initializes the object with the current date and time.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>Date(long millisec)</b></p>
<p>This constructor accepts an argument that equals the number of milliseconds that have elapsed since midnight, January 1, 1970.</p>
</td>
</tr>
</table>
<p>Following are the methods of the date class.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>boolean after(Date date)</b></p>
<p>Returns true if the invoking Date object contains a date that is later than the one specified by date, otherwise, it returns false.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>boolean before(Date date)</b></p>
<p>Returns true if the invoking Date object contains a date that is earlier than the one specified by date, otherwise, it returns false.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>Object clone( )</b></p>
<p>Duplicates the invoking Date object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>int compareTo(Date date)</b></p>
<p>Compares the value of the invoking object with that of date. Returns 0 if the values are equal. Returns a negative value if the invoking object is earlier than date. Returns a positive value if the invoking object is later than date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><p><b>int compareTo(Object obj)</b></p>
<p>Operates identically to compareTo(Date) if obj is of class Date. Otherwise, it throws a ClassCastException.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><p><b>boolean equals(Object date)</b></p>
<p>Returns true if the invoking Date object contains the same time and date as the one specified by date, otherwise, it returns false.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><p><b>long getTime( )</b></p>
<p>Returns the number of milliseconds that have elapsed since January 1, 1970.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">8</td>
<td><p><b>int hashCode( )</b></p>
<p>Returns a hash code for the invoking object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">9</td>
<td><p><b>void setTime(long time)</b></p>
<p>Sets the time and date as specified by time, which represents an elapsed time in milliseconds from midnight, January 1, 1970.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">10</td>
<td><p><b>String toString( )</b></p>
<p>Converts the invoking Date object into a string and returns the result.</p>
</td>
</tr>
</table>
<h2>Getting Current Date and Time</h2>
<p>This is a very easy method to get current date and time in Java. You can use a simple Date object with <i>toString()</i> method to print the current date and time as follows &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.Date;
public class DateDemo {

   public static void main(String args[]) {
      // Instantiate a Date object
      Date date = new Date();

      // display time and date using toString()
      System.out.println(date.toString());
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
on May 04 09:51:52 CDT 2009
</pre>
<h2>Date Comparison</h2>
<p>Following are the three ways to compare two dates &minus;</p>
<ul class="list">
<li><p>You can use getTime( ) to obtain the number of milliseconds that have elapsed since midnight, January 1, 1970, for both objects and then compare these two values.</p></li>
<li><p>You can use the methods before( ), after( ), and equals( ). Because the 12th of the month comes before the 18th, for example, new Date(99, 2, 12).before(new Date (99, 2, 18)) returns true.</p></li>
<li><p>You can use the compareTo( ) method, which is defined by the Comparable interface and implemented by Date.</p></li>
</ul>
<h2>Date Formatting Using SimpleDateFormat</h2>
<p>SimpleDateFormat is a concrete class for formatting and parsing dates in a locale-sensitive manner. SimpleDateFormat allows you to start by choosing any user-defined patterns for date-time formatting.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.*;
import java.text.*;

public class DateDemo {

   public static void main(String args[]) {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");

      System.out.println("Current Date: " + ft.format(dNow));
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Current Date: Sun 2004.07.18 at 04:14:09 PM PDT
</pre>
<h2>Simple DateFormat Format Codes</h2>
<p>To specify the time format, use a time pattern string. In this pattern, all ASCII letters are reserved as pattern letters, which are defined as the following &minus;</p>
<table class="table table-bordered" style="text-align:center;">
<tr>
<th style="text-align:center;">Character</th>
<th style="text-align:center;">Description</th>
<th style="text-align:center;">Example</th>
</tr>
<tr>
<td>G</td>
<td>Era designator</td>
<td>AD</td>
</tr>
<tr>
<td>y</td>
<td>Year in four digits</td>
<td>2001</td>
</tr>
<tr>
<td>M</td>
<td>Month in year</td>
<td>July or 07</td>
</tr>
<tr>
<td>d</td>
<td>Day in month</td>
<td>10</td>
</tr>
<tr>
<td>h</td>
<td>Hour in A.M./P.M. (1~12)</td>
<td>12</td>
</tr>
<tr>
<td>H</td>
<td>Hour in day (0~23)</td>
<td>22</td>
</tr>
<tr>
<td>m</td>
<td>Minute in hour</td>
<td>30</td>
</tr>
<tr>
<td>s</td>
<td>Second in minute</td>
<td>55</td>
</tr>
<tr>
<td>S</td>
<td>Millisecond</td>
<td>234</td>
</tr>
<tr>
<td>E</td>
<td>Day in week</td>
<td>Tuesday</td>
</tr>
<tr>
<td>D</td>
<td>Day in year</td>
<td>360</td>
</tr>
<tr>
<td>F</td>
<td>Day of week in month</td>
<td>2 (second Wed. in July)</td>
</tr>
<tr>
<td>w</td>
<td>Week in year</td>
<td>40</td>
</tr>
<tr>
<td>W</td>
<td>Week in month</td>
<td>1</td>
</tr>
<tr>
<td>a</td>
<td>A.M./P.M. marker</td>
<td>PM</td>
</tr>
<tr>
<td>k</td>
<td>Hour in day (1~24)</td>
<td>24</td>
</tr>
<tr>
<td>K</td>
<td>Hour in A.M./P.M. (0~11)</td>
<td>10</td>
</tr>
<tr>
<td>z</td>
<td>Time zone</td>
<td>Eastern Standard Time</td>
</tr>
<tr>
<td>'</td>
<td>Escape for text</td>
<td>Delimiter</td>
</tr>
<tr>
<td>"</td>
<td>Single quote</td>
<td>`</td>
</tr>
</table>
<h2>Date Formatting Using printf</h2>
<p>Date and time formatting can be done very easily using <b>printf</b> method. You use a two-letter format, starting with <b>t</b> and ending in one of the letters of the table as shown in the following code.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.Date;
public class DateDemo {

   public static void main(String args[]) {
      // Instantiate a Date object
      Date date = new Date();

      // display time and date
      String str = String.format("Current Date/Time : %tc", date );

      System.out.printf(str);
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Current Date/Time : Sat Dec 15 16:37:57 MST 2012
</pre>
<p>It would be a bit silly if you had to supply the date multiple times to format each part. For that reason, a format string can indicate the index of the argument to be formatted.</p>
<p>The index must immediately follow the % and it must be terminated by a $.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.Date;
public class DateDemo {

   public static void main(String args[]) {
      // Instantiate a Date object
      Date date = new Date();
  
      // display time and date
      System.out.printf("%1$s %2$tB %2$td, %2$tY", "Due date:", date);
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Due date: February 09, 2004
</pre>
<p>Alternatively, you can use the &lt; flag. It indicates that the same argument as in the preceding format specification should be used again.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.Date;
public class DateDemo {

   public static void main(String args[]) {
      // Instantiate a Date object
      Date date = new Date();
  
      // display formatted date
      System.out.printf("%s %tB %&lt;te, %&lt;tY", "Due date:", date);
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Due date: February 09, 2004
</pre>
<h2>Date and Time Conversion Characters</h2>
<table class="table table-bordered" style="text-align:center;">
<tr>
<th style="text-align:center;">Character</th>
<th style="text-align:center;">Description</th>
<th style="text-align:center;">Example</th>
</tr>
<tr>
<td style="vertical-align:middle;">c</td>
<td style="vertical-align:middle;">Complete date and time</td>
<td>Mon May 04 09:51:52 CDT 2009</td>
</tr>
<tr>
<td>F</td>
<td>ISO 8601 date</td>
<td>2004-02-09</td>
</tr>
<tr>
<td>D</td>
<td>U.S. formatted date (month/day/year)</td>
<td>02/09/2004</td>
</tr>
<tr>
<td>T</td>
<td>24-hour time</td>
<td>18:05:19</td>
</tr>
<tr>
<td>r</td>
<td>12-hour time</td>
<td>06:05:19 pm</td>
</tr>
<tr>
<td>R</td>
<td>24-hour time, no seconds</td>
<td>18:05</td>
</tr>
<tr>
<td>Y</td>
<td>Four-digit year (with leading zeroes)</td>
<td>2004</td>
</tr>
<tr>
<td style="vertical-align:middle;">y</td>
<td>Last two digits of the year (with leading zeroes)</td>
<td style="vertical-align:middle;">04</td>
</tr>
<tr>
<td style="vertical-align:middle;">C</td>
<td>First two digits of the year (with leading zeroes)</td>
<td style="vertical-align:middle;">20</td>
</tr>
<tr>
<td>B</td>
<td>Full month name</td>
<td>February</td>
</tr>
<tr>
<td>b</td>
<td>Abbreviated month name</td>
<td>Feb</td>
</tr>
<tr>
<td>m</td>
<td>Two-digit month (with leading zeroes)</td>
<td>02</td>
</tr>
<tr>
<td>d</td>
<td>Two-digit day (with leading zeroes)</td>
<td>03</td>
</tr>
<tr>
<td>e</td>
<td>Two-digit day (without leading zeroes)</td>
<td>9</td>
</tr>
<tr>
<td>A</td>
<td>Full weekday name</td>
<td>Monday</td>
</tr>
<tr>
<td>a</td>
<td>Abbreviated weekday name</td>
<td>Mon</td>
</tr>
<tr>
<td style="vertical-align:middle;">j</td>
<td>Three-digit day of year (with leading zeroes)</td>
<td style="vertical-align:middle;">069</td>
</tr>
<tr>
<td style="vertical-align:middle;">H</td>
<td>Two-digit hour (with leading zeroes), between 00 and 23</td>
<td style="vertical-align:middle;">18</td>
</tr>
<tr>
<td style="vertical-align:middle;">k</td>
<td>Two-digit hour (without leading zeroes), between 0 and 23</td>
<td style="vertical-align:middle;">18</td>
</tr>
<tr>
<td style="vertical-align:middle;">I</td>
<td>Two-digit hour (with leading zeroes), between 01 and 12</td>
<td style="vertical-align:middle;">06</td>
</tr>
<tr>
<td style="vertical-align:middle;">l</td>
<td>Two-digit hour (without leading zeroes), between 1 and 12</td>
<td style="vertical-align:middle;">6</td>
</tr>
<tr>
<td style="vertical-align:middle;">M</td>
<td>Two-digit minutes (with leading zeroes)</td>
<td style="vertical-align:middle;">05</td>
</tr>
<tr>
<td style="vertical-align:middle;">S</td>
<td>Two-digit seconds (with leading zeroes)</td>
<td style="vertical-align:middle;">19</td>
</tr>
<tr>
<td style="vertical-align:middle;">L</td>
<td>Three-digit milliseconds (with leading zeroes)</td>
<td style="vertical-align:middle;">047</td>
</tr>
<tr>
<td style="vertical-align:middle;">N</td>
<td>Nine-digit nanoseconds (with leading zeroes)</td>
<td style="vertical-align:middle;">047000000</td>
</tr>
<tr>
<td style="vertical-align:middle;">P</td>
<td>Uppercase morning or afternoon marker</td>
<td style="vertical-align:middle;">PM</td>
</tr>
<tr>
<td style="vertical-align:middle;">p</td>
<td>Lowercase morning or afternoon marker</td>
<td style="vertical-align:middle;">pm</td>
</tr>
<tr>
<td>z</td>
<td>RFC 822 numeric offset from GMT</td>
<td>-0800</td>
</tr>
<tr>
<td>Z</td>
<td>Time zone</td>
<td>PST</td>
</tr>
<tr>
<td style="vertical-align:middle;">s</td>
<td>Seconds since 1970-01-01 00:00:00 GMT</td>
<td style="vertical-align:middle;">1078884319</td>
</tr>
<tr>
<td style="vertical-align:middle;">Q</td>
<td>Milliseconds since 1970-01-01 00:00:00 GMT</td>
<td style="vertical-align:middle;">1078884319047</td>
</tr>
</table>
<p>There are other useful classes related to Date and time. For more details, you can refer to Java Standard documentation.</p>
<h2>Parsing Strings into Dates</h2>
<p>The SimpleDateFormat class has some additional methods, notably parse( ), which tries to parse a string according to the format stored in the given SimpleDateFormat object.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.*;
import java.text.*;
  
public class DateDemo {

   public static void main(String args[]) {
      SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd"); 
      String input = args.length == 0 ? "1818-11-11" : args[0]; 

      System.out.print(input + " Parses as "); 
      Date t;
      try {
         t = ft.parse(input); 
         System.out.println(t); 
      }catch (ParseException e) { 
         System.out.println("Unparseable using " + ft); 
      }
   }
}
</pre>
<p>A sample run of the above program would produce the following result &minus;</p>
<h3>Output</h3>
<pre class="result notranslate">
1818-11-11 Parses as Wed Nov 11 00:00:00 EST 1818
</pre>
<h2>Sleeping for a While</h2>
<p>You can sleep for any period of time from one millisecond up to the lifetime of your computer. For example, the following program would sleep for 3 seconds &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.*;
public class SleepDemo {

   public static void main(String args[]) {
      try { 
         System.out.println(new Date( ) + "\n"); 
         Thread.sleep(5*60*10); 
         System.out.println(new Date( ) + "\n"); 
      }catch (Exception e) {
         System.out.println("Got an exception!"); 
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Sun May 03 18:04:41 GMT 2009
Sun May 03 18:04:51 GMT 2009
</pre>
<h2>Measuring Elapsed Time</h2>
<p>Sometimes, you may need to measure point in time in milliseconds. So let's re-write the above example once again &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.*;
public class DiffDemo {

   public static void main(String args[]) {
      try {
         long start = System.currentTimeMillis( );
         System.out.println(new Date( ) + "\n");
         
         Thread.sleep(5*60*10);
         System.out.println(new Date( ) + "\n");
         
         long end = System.currentTimeMillis( );
         long diff = end - start;
         System.out.println("Difference is : " + diff);
      }catch (Exception e) {
         System.out.println("Got an exception!");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Sun May 03 18:16:51 GMT 2009
Sun May 03 18:16:57 GMT 2009
Difference is : 5993
</pre>
<h2>GregorianCalendar Class</h2>
<p>GregorianCalendar is a concrete implementation of a Calendar class that implements the normal Gregorian calendar with which you are familiar. We did not discuss Calendar class in this tutorial, you can look up standard Java documentation for this.</p>
<p>The <b>getInstance( )</b> method of Calendar returns a GregorianCalendar initialized with the current date and time in the default locale and time zone. GregorianCalendar defines two fields: AD and BC. These represent the two eras defined by the Gregorian calendar.</p>
<p>There are also several constructors for GregorianCalendar objects &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Constructor &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>GregorianCalendar()</b></p>
<p>Constructs a default GregorianCalendar using the current time in the default time zone with the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>GregorianCalendar(int year, int month, int date)</b></p>
<p>Constructs a GregorianCalendar with the given date set in the default time zone with the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>GregorianCalendar(int year, int month, int date, int hour, int minute)</b></p>
<p>Constructs a GregorianCalendar with the given date and time set for the default time zone with the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>GregorianCalendar(int year, int month, int date, int hour, int minute, int second)</b></p>
<p>Constructs a GregorianCalendar with the given date and time set for the default time zone with the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><p><b>GregorianCalendar(Locale aLocale)</b></p>
<p>Constructs a GregorianCalendar based on the current time in the default time zone with the given locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><p><b>GregorianCalendar(TimeZone zone)</b></p>
<p>Constructs a GregorianCalendar based on the current time in the given time zone with the default locale.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><p><b>GregorianCalendar(TimeZone zone, Locale aLocale)</b></p>
<p>Constructs a GregorianCalendar based on the current time in the given time zone with the given locale.</p>
</td>
</tr>
</table>
<p>Here is the list of few useful support methods provided by GregorianCalendar class &minus;</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>void add(int field, int amount)</b></p>
<p>Adds the specified (signed) amount of time to the given time field, based on the calendar's rules.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>protected  void computeFields()</b></p>
<p>Converts UTC as milliseconds to time field values.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>protected  void computeTime()</b></p>
<p>Overrides Calendar Converts time field values to UTC as milliseconds.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>boolean equals(Object obj)</b></p>
<p>Compares this GregorianCalendar to an object reference.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><p><b>int get(int field)</b></p>
<p>Gets the value for a given time field.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><p><b>int getActualMaximum(int field)</b></p>
<p>Returns the maximum value that this field could have, given the current date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">7</td>
<td><p><b>int getActualMinimum(int field)</b></p>
<p>Returns the minimum value that this field could have, given the current date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">8</td>
<td><p><b>int getGreatestMinimum(int field)</b></p>
<p>Returns highest minimum value for the given field if varies.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">9</td>
<td><p><b>Date getGregorianChange()</b></p>
<p>Gets the Gregorian Calendar change date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">10</td>
<td><p><b>int getLeastMaximum(int field)</b></p>
<p>Returns lowest maximum value for the given field if varies.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">11</td>
<td><p><b>int getMaximum(int field)</b></p>
<p>Returns maximum value for the given field.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">12</td>
<td><p><b>Date getTime()</b></p>
<p>Gets this Calendar's current time.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">13</td>
<td><p><b>long getTimeInMillis()</b></p>
<p>Gets this Calendar's current time as a long.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">14</td>
<td><p><b>TimeZone getTimeZone()</b></p>
<p>Gets the time zone.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">15</td>
<td><p><b>int getMinimum(int field)</b></p>
<p>Returns minimum value for the given field.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">16</td>
<td><p><b>int hashCode()</b></p>
<p>Overrides hashCode.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">17</td>
<td><p><b>boolean isLeapYear(int year)</b></p>
<p>Determines if the given year is a leap year.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">18</td>
<td><p><b>void roll(int field, boolean up)</b></p>
<p>Adds or subtracts (up/down) a single unit of time on the given time field without changing larger fields.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">19</td>
<td><p><b>void set(int field, int value)</b></p>
<p>Sets the time field with the given value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">20</td>
<td><p><b>void set(int year, int month, int date)</b></p>
<p>Sets the values for the fields year, month, and date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">21</td>
<td><p><b>void set(int year, int month, int date, int hour, int minute)</b></p>
<p>Sets the values for the fields year, month, date, hour, and minute.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">22</td>
<td><p><b>void set(int year, int month, int date, int hour, int minute, int second)</b></p>
<p>Sets the values for the fields year, month, date, hour, minute, and second.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">23</td>
<td><p><b>void setGregorianChange(Date date)</b></p>
<p>Sets the GregorianCalendar change date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">24</td>
<td><p><b>void setTime(Date date)</b></p>
<p>Sets this Calendar's current time with the given Date.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">25</td>
<td><p><b>void setTimeInMillis(long millis)</b></p>
<p>Sets this Calendar's current time from the given long value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">26</td>
<td><p><b>void setTimeZone(TimeZone value)</b></p>
<p>Sets the time zone with the given time zone value.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">27</td>
<td><p><b>String toString()</b></p>
<p>Returns a string representation of this calendar.</p>
</td>
</tr>
</table>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.util.*;
public class GregorianCalendarDemo {

   public static void main(String args[]) {
      String months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", 
         "Oct", "Nov", "Dec"};
      
      int year;
      // Create a Gregorian calendar initialized
      // with the current date and time in the
      // default locale and timezone.
      
      GregorianCalendar gcalendar = new GregorianCalendar();
      
      // Display current time and date information.
      System.out.print("Date: ");
      System.out.print(months[gcalendar.get(Calendar.MONTH)]);
      System.out.print(" " + gcalendar.get(Calendar.DATE) + " ");
      System.out.println(year = gcalendar.get(Calendar.YEAR));
      System.out.print("Time: ");
      System.out.print(gcalendar.get(Calendar.HOUR) + ":");
      System.out.print(gcalendar.get(Calendar.MINUTE) + ":");
      System.out.println(gcalendar.get(Calendar.SECOND));

      // Test if the current year is a leap year
      if(gcalendar.isLeapYear(year)) {
         System.out.println("The current year is a leap year");
      }else {
         System.out.println("The current year is not a leap year");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Date: Apr 22 2009
Time: 11:25:27
The current year is not a leap year
</pre>
<p>For a complete list of constant available in Calendar class, you can refer the standard Java documentation.</p>
<hr />
</div>
                

          
</asp:Content>

