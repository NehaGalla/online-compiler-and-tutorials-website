<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_multithreading.aspx.cs" Inherits="cpp_multithreading" %>


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
            <div class=" multithreading" style="padding-left: 320px; padding-top: 120px">
                <p>Multithreading is a specialized form of multitasking and a multitasking is the feature that allows your computer to run two or more programs concurrently.  In general, there are two types of multitasking: process-based and thread-based.</p>
<p>Process-based multitasking handles the concurrent execution of programs. Thread-based multitasking deals with the concurrent execution of pieces of the same program.</p>
<p>A multithreaded program contains two or more parts that can run concurrently. Each part of such a program is called a thread, and each thread defines a separate path of execution.</p>
<p>C++ does not contain any built-in support for multithreaded applications. Instead, it relies entirely upon the operating system to provide this feature.</p>
<p>This tutorial assumes that you are working on Linux OS and we are going to write multi-threaded C++ program using POSIX. POSIX Threads, or Pthreads provides  API which are available on many Unix-like POSIX systems such as FreeBSD, NetBSD, GNU/Linux, Mac OS X and Solaris.</p>
<h2>Creating Threads</h2>
<p>There is following routine which we use to create a POSIX thread:</p>
<pre class="result notranslate">
#include &lt;pthread.h&gt;
pthread_create (thread, attr, start_routine, arg) 
</pre>
<p>Here, <b>pthread_create</b> creates a new thread and makes it executable. This routine can be called any number of times from anywhere within your code. Here is the description of the parameters:</p>
<table class="table table-bordered">
<tr>
<th width="25%">Parameter</th>
<th>Description</th>
</tr>
<tr>
<td>thread</td>
<td>An opaque, unique identifier for the new thread returned by the subroutine.</td>
</tr>
<tr>
<td>attr</td>
<td>An opaque attribute object that may be used to set thread attributes. You can specify a thread attributes object, or NULL for the default values.</td>
</tr>
<tr>
<td>start_routine</td>
<td>The C++ routine that the thread will execute once it is created.</td>
</tr>
<tr>
<td>arg</td>
<td>A single argument that may be passed to start_routine. It must be passed by reference as a pointer cast of type void. NULL may be used if no argument is to be passed.</td>
</tr>
</table>
<p>The maximum number of threads that may be created by a process is implementation dependent. Once created, threads are peers, and may create other threads. There is no implied hierarchy or dependency between threads.</p>
<h2>Terminating Threads</h2>
<p>There is following routine which we use to terminate a POSIX thread:</p>
<pre class="result notranslate">
#include &lt;pthread.h&gt;
pthread_exit (status) 
</pre>
<p>Here <b>pthread_exit</b> is used to explicitly exit a thread. Typically, the pthread_exit() routine is called after a thread has completed its work and is no longer required to exist.</p>
<p>If main() finishes before the threads it has created, and exits with pthread_exit(), the other threads will continue to execute. Otherwise, they will be automatically terminated when main() finishes.</p>
<h2>Example</h2>
<p>This simple example code creates 5 threads with the pthread_create() routine. Each thread prints a "Hello World!" message, and then terminates with a call to pthread_exit().</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;cstdlib&gt;
#include &lt;pthread.h&gt;

using namespace std;

#define NUM_THREADS     5

void *PrintHello(void *threadid) {
   long tid;
   tid = (long)threadid;
   cout &lt;&lt; "Hello World! Thread ID, " &lt;&lt; tid &lt;&lt; endl;
   pthread_exit(NULL);
}

int main () {
   pthread_t threads[NUM_THREADS];
   int rc;
   int i;
	
   for( i=0; i &lt; NUM_THREADS; i++ ){
      cout &lt;&lt; "main() : creating thread, " &lt;&lt; i &lt;&lt; endl;
      rc = pthread_create(&amp;threads[i], NULL, PrintHello, (void *)i);
		
      if (rc){
         cout &lt;&lt; "Error:unable to create thread," &lt;&lt; rc &lt;&lt; endl;
         exit(-1);
      }
   }
	
   pthread_exit(NULL);
}
</pre>
<p>Compile the following program using -lpthread library as follows:</p>
<pre class="result notranslate">
$gcc test.cpp -lpthread
</pre>
<p>Now, execute your program which should generate result something as follows:</p>
<pre class="result notranslate">
main() : creating thread, 0
main() : creating thread, 1
main() : creating thread, 2
main() : creating thread, 3
main() : creating thread, 4
Hello World! Thread ID, 0
Hello World! Thread ID, 1
Hello World! Thread ID, 2
Hello World! Thread ID, 3
Hello World! Thread ID, 4
</pre>
<h2>Passing Arguments to Threads</h2>
<p>This example shows how to pass multiple arguments via a structure. You can pass any data type in a thread callback because it points to void as explained in the following example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;cstdlib&gt;
#include &lt;pthread.h&gt;

using namespace std;

#define NUM_THREADS     5

struct thread_data{
   int  thread_id;
   char *message;
};

void *PrintHello(void *threadarg) {
   struct thread_data *my_data;

   my_data = (struct thread_data *) threadarg;

   cout &lt;&lt; "Thread ID : " &lt;&lt; my_data-&gt;thread_id ;
   cout &lt;&lt; " Message : " &lt;&lt; my_data-&gt;message &lt;&lt; endl;

   pthread_exit(NULL);
}

int main () {
   pthread_t threads[NUM_THREADS];
   struct thread_data td[NUM_THREADS];
	
   int rc;
   int i;

   for( i=0; i &lt; NUM_THREADS; i++ ){
      cout &lt;&lt;"main() : creating thread, " &lt;&lt; i &lt;&lt; endl;
      td[i].thread_id = i;
      td[i].message = "This is message";
      rc = pthread_create(&amp;threads[i], NULL, PrintHello, (void *)&amp;td[i]);
		
      if (rc){
         cout &lt;&lt; "Error:unable to create thread," &lt;&lt; rc &lt;&lt; endl;
         exit(-1);
      }
   }
	
   pthread_exit(NULL);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
main() : creating thread, 0
main() : creating thread, 1
main() : creating thread, 2
main() : creating thread, 3
main() : creating thread, 4
Thread ID : 3 Message : This is message
Thread ID : 2 Message : This is message
Thread ID : 0 Message : This is message
Thread ID : 1 Message : This is message
Thread ID : 4 Message : This is message
</pre>
<h2>Joining and Detaching Threads</h2>
<p>There are following two routines which we can use to join or detach threads:</p>
<pre class="result notranslate">
pthread_join (threadid, status) 
pthread_detach (threadid) 
</pre>
<p>The pthread_join() subroutine blocks the calling thread until the specified threadid thread terminates. When a thread is created, one of its attributes defines whether it is joinable or detached. Only threads that are created as joinable can be joined. If a thread is created as detached, it can never be joined.</p>
<p>This example demonstrates how to wait for thread completions by using the Pthread join routine.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;cstdlib&gt;
#include &lt;pthread.h&gt;
#include &lt;unistd.h&gt;

using namespace std;

#define NUM_THREADS     5

void *wait(void *t) {
   int i;
   long tid;

   tid = (long)t;

   sleep(1);
   cout &lt;&lt; "Sleeping in thread " &lt;&lt; endl;
   cout &lt;&lt; "Thread with id : " &lt;&lt; tid &lt;&lt; "  ...exiting " &lt;&lt; endl;
   pthread_exit(NULL);
}

int main () {
   int rc;
   int i;
	
   pthread_t threads[NUM_THREADS];
   pthread_attr_t attr;
   void *status;

   // Initialize and set thread joinable
   pthread_attr_init(&amp;attr);
   pthread_attr_setdetachstate(&amp;attr, PTHREAD_CREATE_JOINABLE);

   for( i=0; i &lt; NUM_THREADS; i++ ){
      cout &lt;&lt; "main() : creating thread, " &lt;&lt; i &lt;&lt; endl;
      rc = pthread_create(&amp;threads[i], &amp;attr, wait, (void *)i );
		
      if (rc){
         cout &lt;&lt; "Error:unable to create thread," &lt;&lt; rc &lt;&lt; endl;
         exit(-1);
      }
   }

   // free attribute and wait for the other threads
   pthread_attr_destroy(&amp;attr);
	
   for( i=0; i &lt; NUM_THREADS; i++ ){
      rc = pthread_join(threads[i], &amp;status);
		
      if (rc){
         cout &lt;&lt; "Error:unable to join," &lt;&lt; rc &lt;&lt; endl;
         exit(-1);
      }
		
      cout &lt;&lt; "Main: completed thread id :" &lt;&lt; i ;
      cout &lt;&lt; "  exiting with status :" &lt;&lt; status &lt;&lt; endl;
   }

   cout &lt;&lt; "Main: program exiting." &lt;&lt; endl;
   pthread_exit(NULL);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
main() : creating thread, 0
main() : creating thread, 1
main() : creating thread, 2
main() : creating thread, 3
main() : creating thread, 4
Sleeping in thread
Thread with id : 0 .... exiting
Sleeping in thread
Thread with id : 1 .... exiting
Sleeping in thread
Thread with id : 2 .... exiting
Sleeping in thread
Thread with id : 3 .... exiting
Sleeping in thread
Thread with id : 4 .... exiting
Main: completed thread id :0  exiting with status :0
Main: completed thread id :1  exiting with status :0
Main: completed thread id :2  exiting with status :0
Main: completed thread id :3  exiting with status :0
Main: completed thread id :4  exiting with status :0
Main: program exiting.
</pre>
<hr />
 </div>

                

          
</asp:Content>
