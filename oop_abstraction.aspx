<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_abstraction.aspx.cs" Inherits="oop_abstraction" %>


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
                    <li><a href="oop_classes.aspx" style="color: White">Classes &amp; Objects</a></li>
                    <li><a href="oop_inheritance.aspx" style="color: White">Inheritance</a></li>
                    <li><a href="oop_overloading.aspx" style="color: White">Overloading</a></li>
                    <li><a href="oop_polymorphism.aspx" style="color: White">Polymorphism</a></li>
                     <li><a href="oop_abstraction.aspx" style="color: White">Abstraction</a></li>
                    <li><a href="oop_encapsulation.aspx" style="color: White">Encapsulation</a></li>
                    <li><a href="oop_interfaces.aspx" style="color: White">Interfaces</a></li>
                    <li><a href="oop_packages.aspx" style="color: White">packages</a></li>
                    <li><a href="oop_overriding.aspx" style="color: White">overriding</a></li>
             
                   
                </ul>   
            </div>
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">
                <p>Data abstraction refers to, providing only essential information to the outside world and hiding their background details, i.e., to represent the needed information in program without presenting the details.</p>
<p>Data abstraction is a programming (and design) technique that relies on the separation of interface and implementation.</p>
<p>Let's take one real life example of a TV, which you can turn on and off, change the channel, adjust the volume, and add external components such as speakers, VCRs, and DVD players, BUT you do not know its internal details, that is, you do not know how it receives signals over the air or through a cable, how it translates them, and  finally displays them on the screen.</p>
<p>Thus, we can say a television clearly separates its internal implementation from its external interface and you can play with its interfaces like the power button, channel changer, and volume control without having zero knowledge of its internals.</p>
<p>Now, if we talk in terms of C++ Programming, C++ classes provides great level of <b>data abstraction</b>. They provide sufficient public methods to the outside world to play with the functionality of the object and to manipulate object data, i.e., state without actually knowing how class has been implemented internally.</p>
<p>For example, your program can make a call to the <b>sort()</b> function without knowing what algorithm the function actually uses to sort the given values. In fact, the underlying implementation of the sorting functionality could change between releases of the library, and as long as the interface stays the same, your function call will still work.</p>
<p>In C++, we use <b>classes</b> to define our own abstract data types (ADT). You can use the <b>cout</b> object of class <b>ostream</b> to stream data to standard output like this:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

int main( ) {
   cout &lt;&lt; "Hello C++" &lt;&lt;endl;
   return 0;
}
</pre>
<p>Here, you don't need to understand how <b>cout</b> displays the text on the user's screen. You need to only know the public interface and the underlying implementation of cout is free to change.</p>
<h2>Access Labels Enforce Abstraction</h2>
<p>In C++, we use access labels to define the abstract interface to the class. A class may contain zero or more access labels:</p>
<ul class="list">
<li><p>Members defined with a public label are accessible to all parts of the program. The data-abstraction view of a type is defined by its public members.</p></li>
<li><p>Members defined with a private label are not accessible to code that uses the class. The private sections hide the implementation from code that uses the type.</p></li>
</ul>
<p>There are no restrictions on how often an access label may appear. Each access label specifies the access level of the succeeding member definitions. The specified access level remains in effect until the next access label is encountered or the closing right brace of the class body is seen.</p>
<h2>Benefits of Data Abstraction</h2>
<p>Data abstraction provides two important advantages:</p>
<ul class="list">
<li><p>Class internals are protected from inadvertent user-level errors, which might corrupt the state of the object.</p></li>
<li><p>The class implementation may evolve over time in response to changing requirements or bug reports without requiring change in user-level code.</p></li>
</ul>
<p>By defining data members only in the private section of the class, the class author is free to make changes in the data. If the implementation changes, only the class code needs to be examined to see what affect the change may have. If data are public, then any function that directly accesses the data members of the old representation might be broken.</p>
<h2>Data Abstraction Example:</h2>
<p>Any C++ program where you implement a class with public and private members is an example of data abstraction. Consider the following example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

class Adder {
   public:
      // constructor
      Adder(int i = 0) {
         total = i;
      }
		
      // interface to outside world
      void addNum(int number) {
         total += number;
      }
		
      // interface to outside world
      int getTotal() {
         return total;
      };
		
   private:
      // hidden data from outside world
      int total;
};

int main( ) {
   Adder a;
   
   a.addNum(10);
   a.addNum(20);
   a.addNum(30);

   cout &lt;&lt; "Total " &lt;&lt; a.getTotal() &lt;&lt;endl;
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Total 60
</pre>
<p>Above class adds numbers together, and returns the sum. The public members <b>addNum</b> and <b>getTotal</b> are the interfaces to the outside world and a user needs to know them to use the class. The private member <b>total</b> is something that the user doesn't need to know about, but is needed for the class to operate properly.</p>
<h2>Designing Strategy</h2>
<p>Abstraction separates code into interface and implementation. So while designing your component, you must keep interface independent of the implementation so that if you change underlying implementation then interface would remain intact.</p>
<p>In this case whatever programs are using these interfaces, they would not be impacted and would just need a recompilation with the latest implementation.</p>
<hr />
 </div>

                

          
</asp:Content>
