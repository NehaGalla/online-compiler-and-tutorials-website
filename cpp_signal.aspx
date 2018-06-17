<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_signal.aspx.cs" Inherits="cpp_signal" %>


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
            <div class="signal" style="padding-left: 320px; padding-top: 120px">
                <p>Signals are the interrupts delivered to a process by the operating system which can terminate a program prematurely. You can generate interrupts by pressing Ctrl+C on a UNIX, LINUX, Mac OS X or Windows system.</p>
<p>There are signals which can not be caught by the program but there is a following list of signals which you can catch in your program and can take appropriate actions based on the signal. These signals are defined in C++ header file &lt;csignal&gt;.</p>
<table class="table table-bordered">
<tr>
<th width="20%">Signal</th>
<th>Description</th>
</tr>
<tr>
<td>SIGABRT</td>
<td>Abnormal termination of the program, such as a call to <b>abort</b></td>
</tr>
<tr>
<td>SIGFPE</td>
<td>An erroneous arithmetic operation, such as a divide by zero or an operation resulting in overflow.</td>
</tr>
<tr>
<td>SIGILL</td>
<td>Detection of an illegal instruction</td>
</tr>
<tr>
<td>SIGINT</td>
<td>Receipt of an interactive attention signal.</td>
</tr>
<tr>
<td>SIGSEGV</td>
<td>An invalid access to storage.</td>
</tr>
<tr>
<td>SIGTERM</td>
<td>A termination request sent to the program.</td>
</tr>
</table>
<h2>The signal() function:</h2>
<p>C++ signal-handling library provides function <b>signal</b> to trap unexpected events. Following is the syntax of the signal() function:</p>
<pre class="prettyprint notranslate">
void (*signal (int sig, void (*func)(int)))(int); 
</pre>
<p>Keeping it simple, this function receives two arguments: first argument as an integer which represents signal number and second argument as a pointer to the signal-handling function.</p>
<p>Let us write a simple C++ program where we will catch SIGINT signal using signal() function. Whatever signal you want to catch in your program, you must register that signal using <b>signal</b> function and associate it with a signal handler. Examine the following example:</p>
<pre class="prettyprint notranslate">
#include &lt;iostream&gt;
#include &lt;csignal&gt;

using namespace std;

void signalHandler( int signum ) {
   cout &lt;&lt; "Interrupt signal (" &lt;&lt; signum &lt;&lt; ") received.\n";

   // cleanup and close up stuff here  
   // terminate program  

   exit(signum);  

}

int main () {
   // register signal SIGINT and signal handler  
   signal(SIGINT, signalHandler);  

   while(1){
      cout &lt;&lt; "Going to sleep...." &lt;&lt; endl;
      sleep(1);
   }

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Going to sleep....
Going to sleep....
Going to sleep....
</pre>
<p>Now, press Ctrl+c to interrupt the program and you will see that your program will catch the signal and would come out by printing something as follows:</p>
<pre class="result notranslate">
Going to sleep....
Going to sleep....
Going to sleep....
Interrupt signal (2) received.
</pre>
<h2>The raise() function</h2>
<p>You can generate signals by function <b>raise()</b>, which takes an integer signal number as an argument and has the following syntax.</p>
<pre class="result notranslate">
int raise (signal sig);
</pre>
<p>Here, <b>sig</b> is the signal number to send any of the signals: SIGINT, SIGABRT, SIGFPE, SIGILL, SIGSEGV, SIGTERM, SIGHUP. Following is the example where we raise a signal internally using raise() function as follows:</p>
<pre class="prettyprint notranslate">
#include &lt;iostream&gt;
#include &lt;csignal&gt;

using namespace std;

void signalHandler( int signum ) {
   cout &lt;&lt; "Interrupt signal (" &lt;&lt; signum &lt;&lt; ") received.\n";

   // cleanup and close up stuff here  
   // terminate program  

   exit(signum);  

}

int main () {
   int i = 0;
   // register signal SIGINT and signal handler  
   signal(SIGINT, signalHandler);  

   while(++i){
      cout &lt;&lt; "Going to sleep...." &lt;&lt; endl;
		
      if( i == 3 ){
         raise( SIGINT);
      }
		
      sleep(1);
   }

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result and would come out automatically:</p>
<pre class="result notranslate">
Going to sleep....
Going to sleep....
Going to sleep....
Interrupt signal (2) received.
</pre>
<hr />
 </div>

                

          
</asp:Content>
