<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="cpp_namespaces.aspx.cs" Inherits="cpp_namespaces" %>


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
                <p>Consider a situation, when we have two persons with the same name, Zara, in  the same class. Whenever we need to differentiate them definitely we would have to use some additional information along with their name, like either the area if they live in different area or their mother or father name, etc.</p>
<p>Same situation can arise in your C++ applications. For example, you might be writing some code that has a function called xyz() and there is another library available which is also having same function xyz(). Now the compiler has no way of knowing which version of xyz() function you are referring to within your code.</p>
<p>A <b>namespace</b> is designed to overcome this difficulty and is used as additional information to differentiate similar functions, classes, variables etc. with the same name available in different libraries. Using namespace, you can define the context in which names are defined. In essence, a namespace defines a scope.</p>
<h2>Defining a Namespace:</h2>
<p>A namespace definition begins with the keyword <b>namespace</b> followed by the namespace name as follows</p>
<pre class="prettyprint notranslate">
namespace namespace_name {
   // code declarations
}
</pre>
<p>To call the namespace-enabled version of either function or variable, prepend the namespace name as follows:</p>
<pre class="result notranslate">
name::code;  // code could be variable or function.
</pre>
<p>Let us see how namespace scope the entities including variable and functions:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

// first name space
namespace first_space{
   void func(){
      cout &lt;&lt; "Inside first_space" &lt;&lt; endl;
   }
}

// second name space
namespace second_space{
   void func(){
      cout &lt;&lt; "Inside second_space" &lt;&lt; endl;
   }
}

int main () {
 
   // Calls function from first name space.
   first_space::func();
   
   // Calls function from second name space.
   second_space::func(); 

   return 0;
}
</pre>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="result notranslate">
Inside first_space
Inside second_space
</pre>
<h2>The using directive</h2>
<p>You can also avoid prepending of namespaces with the <b>using namespace</b> directive. This directive tells the compiler that the subsequent code is making use of names in the specified namespace. The namespace is thus implied for the following code:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

// first name space
namespace first_space{
   void func(){
      cout &lt;&lt; "Inside first_space" &lt;&lt; endl;
   }
}

// second name space
namespace second_space{
   void func(){
      cout &lt;&lt; "Inside second_space" &lt;&lt; endl;
   }
}

using namespace first_space;
int main () {
 
   // This calls function from first name space.
   func();
   
   return 0;
}
</pre>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="result notranslate">
Inside first_space
</pre>
<p>The using directive can also be used to refer to a particular item within a namespace. For example, if the only part of the std namespace that you intend to use is cout, you can refer to it as follows:</p>
<pre class="result notranslate">
using std::cout;
</pre>
<p>Subsequent code can refer to cout without prepending the namespace, but other items in the <b>std </b> namespace will still need to be explicit as follows:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using std::cout;

int main () {
 
   cout &lt;&lt; "std::endl is used with std!" &lt;&lt; std::endl;
   
   return 0;
}
</pre>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="result notranslate">
std::endl is used with std!
</pre>
<p>Names introduced in a <b>using</b> directive obey normal scope rules. The name is visible from the point of the <b>using</b> directive to the end of the scope in which the directive is found. Entities with the same name defined in an outer scope are hidden.</p>
<h2>Discontiguous Namespaces</h2>
<p>A namespace can be defined in several parts and so a namespace is made up of the sum of its separately defined parts. The separate parts of a namespace can be spread over multiple files.</p>
<p>So, if one part of the namespace requires a name defined in another file, that name must still be declared. Writing a following namespace definition either defines a new namespace or adds new elements to an existing one:</p>
<pre class="prettyprint notranslate">
namespace namespace_name {
   // code declarations
}
</pre>
<h2>Nested Namespaces</h2>
<p>Namespaces can be nested where you can define one namespace inside another name space as follows:</p>
<pre class="prettyprint notranslate">
namespace namespace_name1 {
   // code declarations
   namespace namespace_name2 {
      // code declarations
   }
}
</pre>
<p>You can access members of nested namespace by using resultion operators as follows:</p>
<pre class="result notranslate">
// to access members of namespace_name2
using namespace namespace_name1::namespace_name2;

// to access members of namespace:name1
using namespace namespace_name1;
</pre>
<p>In the above statements if you are using namespace_name1, then it will make elements of namespace_name2 available in the scope as follows:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

// first name space
namespace first_space{
   void func(){
      cout &lt;&lt; "Inside first_space" &lt;&lt; endl;
   }
	
   // second name space
   namespace second_space{
      void func(){
         cout &lt;&lt; "Inside second_space" &lt;&lt; endl;
      }
   }
}

using namespace first_space::second_space;
int main () {
 
   // This calls function from second name space.
   func();
   
   return 0;
}
</pre>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="result notranslate">
Inside second_space
</pre>
 </div>

                

          
</asp:Content>
