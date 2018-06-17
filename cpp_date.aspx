<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_date.aspx.cs" Inherits="cpp_date" %>


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
                    <li><a href="cpp_datatypes.aspx" style="color: White">Data Types</a></li>
                    <li><a href="cpp_variables.aspx" style="color: White">Variables</a></li>
                    <li><a href="cpp_variablescope.aspx" style="color: White">Variable scope</a></li>
                    <li><a href="cpp_constants.aspx" style="color: White">Constants/Literals</a></li>
                     <li><a href="cpp_modifier.aspx" style="color: White">Modifier Types</a></li>
                    <li><a href="cpp_storageclasses.aspx" style="color: White">Storage Classes</a></li>
                    <li><a href="cpp_operators.aspx" style="color: White">Operators</a></li>
                    <li><a href="cpp_decisionmaking.aspx" style="color: White">Decision Making</a></li>
                    <li><a href="cpp_loops.aspx" style="color: White">Loops</a></li>
                    <li><a href="cpp_functions.aspx" style="color: White">Funcitons</a></li>
                    <li><a href="cpp_numbers.aspx" style="color: White">Numbers</a></li>
                    <li><a href="cpp_arrays.aspx" style="color: White">Arrays</a></li>
                    <li><a href="cpp_pointers.aspx" style="color: White">Pointers</a></li>
                    <li><a href="cpp_strings.aspx" style="color: White">Strings</a></li>
                    <li><a href="cpp_references.aspx" style="color: White">References</a></li>
                    <li><a href="cpp_date.aspx" style="color: White">date and time</a></li>
                    <li><a href="cpp_files.aspx" style="color: White">Files and Streams</a></li>
                    <li><a href="cpp_exception.aspx" style="color: White">Exception Handling</a></li>
                     <li><a href="cpp_namespaces.aspx" style="color: White">Namespaces</a></li>
                     <li><a href="cpp_signal.aspx" style="color: White">Signal Handling</a></li>
                     <li><a href="cpp_multithreading.aspx" style="color: White">Multithreading</a></li>
                   
                </ul>
            </div>
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">
                <p>The C++ standard library does not provide a proper date type. C++ inherits the structs and functions for date and time manipulation from C. To access date and time related functions and structures, you would need to include &lt;ctime&gt; header file in your C++ program.</p>
<p>There are four time-related types: <b>clock_t, time_t, size_t</b>, and <b>tm</b>. The types clock_t, size_t and time_t are capable of representing the system time and date as some sort of integer.</p>
<p>The structure type <b>tm</b> holds the date and time in the form of a C structure having the following elements:</p>
<pre class="prettyprint notranslate">
struct tm {
   int tm_sec;   // seconds of minutes from 0 to 61
   int tm_min;   // minutes of hour from 0 to 59
   int tm_hour;  // hours of day from 0 to 24
   int tm_mday;  // day of month from 1 to 31
   int tm_mon;   // month of year from 0 to 11
   int tm_year;  // year since 1900
   int tm_wday;  // days since sunday
   int tm_yday;  // days since January 1st
   int tm_isdst; // hours of daylight savings time
}
</pre>
<p>Following are the important functions, which we use while working with date and time in C or C++. All these functions are part of standard C and C++ library and you can check their detail using reference to C++ standard library given below.</p>
<table class="table table-bordered">
<tr>
<th width="5%">SN</th>
<th>Function &amp; Purpose</th>
</tr>
<tr>
<td>1</td>
<td><b>time_t time(time_t *time);</b>
<p>This returns the current calendar time of the system in number of seconds elapsed since January 1, 1970. If the system has no time, .1 is returned.</p>
</td> 
</tr>
<tr>
<td>2</td>
<td><b>char *ctime(const time_t *time);</b>
<p>This returns a pointer to a string of the form <i>day month year hours:minutes:seconds year\n\0</i>.</p>
</td> 
</tr>
<tr>
<td>3</td>
<td><b>struct tm *localtime(const time_t *time);</b>
<p>This returns a pointer to the <b>tm</b> structure representing local time.</p>
</td> 
</tr>
<tr>
<td>4</td>
<td><b>clock_t clock(void);</b>
<p>This returns a value that approximates the amount of time the calling program has been running. A value of .1 is returned if the time is not available.</p>
</td> 
</tr>
<tr>
<td>5</td>
<td><b>char * asctime ( const struct tm * time );</b>
<p>This returns a pointer to a string that contains the information stored in the structure pointed to by time converted into the form: day month date hours:minutes:seconds year\n\0</p>
</td> 
</tr>
<tr>
<td>6</td>
<td><b>struct tm *gmtime(const time_t *time);</b>
<p>This returns a pointer to the time in the form of a tm structure. The time is represented in Coordinated Universal Time (UTC), which is essentially Greenwich Mean Time (GMT).</p>
</td>
</tr>
<tr>
<td>7</td>
<td><b>time_t mktime(struct tm *time);</b>
<p>This returns the calendar-time equivalent of the time found in the structure pointed to by time.</p>
</td> 
</tr>
<tr>
<td>8</td>
<td><b>double difftime ( time_t time2, time_t time1 );</b>
<p>This function calculates the difference in seconds between time1 and time2.</p>
</td> 
</tr>
<tr>
<td>9</td>
<td><b>size_t strftime();</b>
<p>This function can be used to format date and time a specific format.</p>
</td> 
</tr>
</table>
<h2>Current date and time:</h2>
<p>Consider you want to retrieve the current system date and time, either as a local time or as a Coordinated Universal Time (UTC). Following is the example to achieve the same:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;ctime&gt;

using namespace std;

int main( ) {
   // current date/time based on current system
   time_t now = time(0);
   
   // convert now to string form
   char* dt = ctime(&amp;now);

   cout &lt;&lt; "The local date and time is: " &lt;&lt; dt &lt;&lt; endl;

   // convert now to tm struct for UTC
   tm *gmtm = gmtime(&amp;now);
   dt = asctime(gmtm);
   cout &lt;&lt; "The UTC date and time is:"&lt;&lt; dt &lt;&lt; endl;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
The local date and time is: Sat Jan  8 20:07:41 2011

The UTC date and time is:Sun Jan  9 03:07:41 2011
</pre>
<h2>Format time using struct tm</h2>
<p>The <b>tm</b> structure is very important while working with date and time in either C or C++. This structure holds the date and time in the form of a C structure as mentioned above. Most of the time related functions makes use of tm structure. Following is an example which makes use of various date and time related functions and tm structure:</p>
<p>While using structure in this chapter, I'm making an assumption that you have basic understanding on C structure and how to access structure members using arrow -&gt; operator.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;ctime&gt;

using namespace std;

int main( ) {
   // current date/time based on current system
   time_t now = time(0);

   cout &lt;&lt; "Number of sec since January 1,1970:" &lt;&lt; now &lt;&lt; endl;

   tm *ltm = localtime(&amp;now);

   // print various components of tm structure.
   cout &lt;&lt; "Year" &lt;&lt; 1900 + ltm-&gt;tm_year&lt;&lt;endl;
   cout &lt;&lt; "Month: "&lt;&lt; 1 + ltm-&gt;tm_mon&lt;&lt; endl;
   cout &lt;&lt; "Day: "&lt;&lt;  ltm-&gt;tm_mday &lt;&lt; endl;
   cout &lt;&lt; "Time: "&lt;&lt; 1 + ltm-&gt;tm_hour &lt;&lt; ":";
   cout &lt;&lt; 1 + ltm-&gt;tm_min &lt;&lt; ":";
   cout &lt;&lt; 1 + ltm-&gt;tm_sec &lt;&lt; endl;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Number of sec since January 1, 1970:1294548238
Year: 2011
Month: 1
Day: 8
Time: 22: 44:59
</pre>
<hr />
 </div>

                

          
</asp:Content>
