<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_encapsulation.aspx.cs" Inherits="oop_encapsulation" %>


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
                <p>Encapsulation is an Object Oriented Programming concept that binds together the data and functions that manipulate the data, and that keeps both safe from outside interference and misuse. Data encapsulation led to the important OOP concept of <b>data hiding</b>.</p>
<p><b>Data encapsulation</b> is a mechanism of bundling the data, and the functions that use them and <b>data abstraction</b> is a mechanism of exposing only the interfaces and hiding the implementation details from the user.</p>
<p>C++ supports the properties of encapsulation and data hiding through the creation of user-defined types, called <b>classes</b>. We already have studied that a class can contain <b>private, protected </b> and <b>public</b> members. By default, all items defined in a class are private. For example:</p>
<pre class="prettyprint notranslate">
class Box {
   public:
      double getVolume(void) {
         return length * breadth * height;
      }
		
   private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};
</pre>
<p>The variables length, breadth, and height are <b>private</b>. This means that they can be accessed only by other members of the Box class, and not by any other part of your program. This is one way encapsulation is achieved.</p>
<p>To make parts of a class <b>public</b>  (i.e., accessible to other parts of your program), you must declare them after the <b>public</b> keyword. All variables or functions defined after the public specifier are accessible by all other functions in your program.</p>
<p>Making one class a friend of another exposes the implementation details and reduces encapsulation. The ideal is to keep as many of the details of each class hidden from all other classes as possible.</p>
<h2>Data Encapsulation Example</h2>
<p>Any C++ program where you implement a class with public and private members is an example of data encapsulation and data abstraction. Consider the following example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

class Adder{
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
<p>Above class adds numbers together, and returns the sum. The public members <b>addNum</b> and <b>getTotal </b> are the interfaces to the outside world and a user needs to know them to use the class. The private member <b>total</b> is something that is hidden from the outside world, but is needed for the class to operate properly.</p>
<h2>Designing Strategy:</h2>
<p>Most of us have learned through bitter experience to make class members private by default unless we really need to expose them. That's just good <b>encapsulation</b>.</p>
<p>This wisdom is applied most frequently to data members, but it applies equally to all members, 
 </div>

                

          
</asp:Content>
