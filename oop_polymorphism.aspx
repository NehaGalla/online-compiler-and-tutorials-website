<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_polymorphism.aspx.cs" Inherits="oop_polymorphism" %>


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
                <p>The word <b>polymorphism</b> means having many forms. Typically, polymorphism occurs when there is a hierarchy of classes and they are related by inheritance.</p>
<p>C++ polymorphism means that a call to a member function will cause a different function to be executed depending on the type of object that invokes the function.</p>
<p>Consider the following example where a base class has been derived by other two classes:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt; 
using namespace std;
 
class Shape {
   protected:
      int width, height;
		
   public:
      Shape( int a = 0, int b = 0) {
         width = a;
         height = b;
      }
		
      int area() {
         cout &lt;&lt; "Parent class area :" &lt;&lt;endl;
         return 0;
      }
};

class Rectangle: public Shape {
   public:
      Rectangle( int a = 0, int b = 0):Shape(a, b) { }
      int area () { 
         cout &lt;&lt; "Rectangle class area :" &lt;&lt;endl;
         return (width * height); 
      }
};

class Triangle: public Shape{
   public:
      Triangle( int a = 0, int b = 0):Shape(a, b) { }
      int area () { 
         cout &lt;&lt; "Triangle class area :" &lt;&lt;endl;
         return (width * height / 2); 
      }
};

// Main function for the program
int main( ) {
   Shape *shape;
   Rectangle rec(10,7);
   Triangle  tri(10,5);

   // store the address of Rectangle
   shape = &amp;rec;
	
   // call rectangle area.
   shape-&gt;area();

   // store the address of Triangle
   shape = &amp;tri;
	
   // call triangle area.
   shape-&gt;area();
   
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Parent class area
Parent class area
</pre>
<p>The reason for the incorrect output is that the call of the function area() is being set once by the compiler as the version defined in the base class. This is called <b>static resolution</b> of the function call, or <b>static linkage</b> - the function call is fixed before the program is executed. This is also sometimes called <b>early binding</b> because the area() function is set during the compilation of the program.</p>
<p>But now, let's make a slight modification in our program and precede the declaration of area() in the Shape class with the keyword <b>virtual</b> so that it  looks like this:</p>
<pre class="prettyprint notranslate">
class Shape {
   protected:
      int width, height;
   public:
      Shape( int a = 0, int b = 0) {
         width = a;
         height = b;
      }
		
      virtual int area() {
         cout &lt;&lt; "Parent class area :" &lt;&lt;endl;
         return 0;
      }
};
</pre>
<p>After this slight modification, when the previous example code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Rectangle class area
Triangle class area
</pre>
<p>This time, the compiler looks at the contents of the pointer instead of it's type. Hence, since addresses of objects of tri and rec classes are stored in *shape the respective area() function is called.</p>
<p>As you can see, each of the child classes has a separate implementation for the function area(). This is how <b>polymorphism</b> is generally used. You have different classes with a function of the same name, and even the same parameters, but with different implementations.</p>
<h2>Virtual Function</h2>
<p>A <b>virtual</b> function is a function in a base class that is declared using the keyword <b>virtual</b>. Defining in a base class a virtual function, with another version in a derived class, signals to the compiler that we don't want static linkage for this function.</p>
<p>What we do want is the selection of the function to be called at any given point in the program to be based on the kind of object for which it is called.  This sort of operation is referred to as <b>dynamic linkage</b>, or <b>late binding</b>.</p>
<h2>Pure Virtual Functions</h2>
<p>It's possible that you'd want to include a virtual function in a base class so that it may be redefined in a derived class to suit the objects of that class, but that there is no meaningful definition you could give for the function in the base class.</p>
<p>We can change the virtual function area() in the base class to the following:</p>
<pre class="prettyprint notranslate">
class Shape {
   protected:
      int width, height;
   public:
      Shape( int a = 0, int b = 0) {
         width = a;
         height = b;
      }
		
      // pure virtual function
      virtual int area() = 0;
};
</pre>
 </div>

                

          
</asp:Content>
