<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_inheritance.aspx.cs" Inherits="oop_inheritance" %>


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
                <p>One of the most important concepts in object-oriented programming is that of inheritance. Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application. This also provides an opportunity to reuse the code functionality and fast implementation time.</p>
<p>When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the <b>base</b> class, and the new class is referred to as the <b>derived</b> class.</p>
<p>The idea of inheritance implements the <b>is a</b> relationship. For example, mammal IS-A animal, dog IS-A mammal hence dog IS-A animal as well and so on.</p>
<h2>Base &amp; Derived Classes</h2>
<p>A class can be derived from more than one classes, which means it can inherit data and functions from multiple base classes. To define a derived class, we use a class derivation list to specify the base class(es). A class derivation list names one or more base classes and has the form:</p>
<pre class="result notranslate">
class derived-class: access-specifier base-class
</pre>
<p>Where access-specifier is one of <b>public, protected,</b> or <b>private</b>, and base-class is the name of a previously defined class. If the access-specifier is not used, then it is private by default.</p>
<p>Consider a base class <b>Shape</b> and its derived class <b>Rectangle</b> as follows:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
 
using namespace std;

// Base class
class Shape  {
   public:
      void setWidth(int w) {
         width = w;
      }
		
      void setHeight(int h) {
         height = h;
      }
		
   protected:
      int width;
      int height;
};

// Derived class
class Rectangle: public Shape {
   public:
      int getArea() { 
         return (width * height); 
      }
};

int main(void) {
   Rectangle Rect;
 
   Rect.setWidth(5);
   Rect.setHeight(7);

   // Print the area of the object.
   cout &lt;&lt; "Total area: " &lt;&lt; Rect.getArea() &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Total area: 35
</pre>
<h2>Access Control and Inheritance</h2>
<p>A derived class can access all the non-private members of its base class. Thus base-class members that should not be accessible to the member functions of derived classes should be declared private in the base class.</p>
<p>We can summarize the different access types according to who can access them in the following way: </p>
<table class="table table-bordered">
<tr>
<th  width="25%">Access</th>
<th  width="25%">public</th>
<th  width="25%">protected</th>
<th  width="25%">private</th>
</tr>
<tr>
<td>Same class</td>
<td>yes</td>
<td>yes</td>
<td>yes</td>
</tr>
<tr>
<td>Derived classes</td>
<td>yes</td>
<td>yes</td>
<td>no</td>
</tr>
<tr>
<td>Outside classes</td>
<td>yes</td>
<td>no</td>
<td>no</td>
</tr>
</table>
<p>A derived class inherits all base class methods with the following exceptions:</p>
<ul class="list">
<li><p>Constructors, destructors and copy constructors of the base class.</p></li>
<li><p>Overloaded operators of the base class.</p></li>
<li><p>The friend functions of the base class.</p></li>
</ul>
<h2>Type of Inheritance</h2>
<p>When deriving a class from a base class, the base class may be inherited through <b>public, protected</b> or <b> private</b> inheritance. The type of inheritance is specified by the access-specifier as explained above.</p>
<p>We hardly use <b>protected</b> or <b> private</b> inheritance, but <b>public</b> inheritance is commonly used. While using different type of inheritance, following rules are applied:</p>
<ul class="list">
<li><p><b>Public Inheritance:</b> When deriving a class from a <b>public</b> base class, <b>public</b> members of the base class become <b>public</b> members of the derived class and <b>protected</b> members of the base class become <b>protected</b> members of the derived class. A base class's <b>private</b> members are never accessible directly from a derived class, but can be accessed through calls to the <b>public</b> and <b>protected</b> members of the base class.</p></li>
<li><p><b>Protected Inheritance:</b>  When deriving from a <b>protected</b> base class, <b>public</b> and <b>protected </b> members of the base class become <b>protected</b> members of the derived class.</p></li>
<li><p><b>Private Inheritance:</b> When deriving from a <b>private</b> base class, <b>public</b> and <b>protected</b> members of the base class become <b>private</b> members of the derived class.</p></li>
</ul>
<h2>Multiple Inheritances</h2>
<p>A C++ class can inherit members from more than one class and here is the extended syntax:</p>
<pre class="result notranslate">
class derived-class: access baseA, access baseB....
</pre>
<p>Where access is one of <b>public, protected,</b> or <b>private</b> and would be given for every base class and they will be separated by comma as shown above. Let us try the following example:</p>
<pre class="prettyprint notranslate">
#include &lt;iostream&gt;
 
using namespace std;

// Base class Shape
class Shape {
   public:
      void setWidth(int w) {
         width = w;
      }
		
      void setHeight(int h) {
         height = h;
      }
		
   protected:
      int width;
      int height;
};

// Base class PaintCost
class PaintCost  {
   public:
      int getCost(int area) {
         return area * 70;
      }
};

// Derived class
class Rectangle: public Shape, public PaintCost {
   public:
      int getArea() { 
         return (width * height); 
      }
};

int main(void) {
   Rectangle Rect;
   int area;
 
   Rect.setWidth(5);
   Rect.setHeight(7);

   area = Rect.getArea();
   
   // Print the area of the object.
   cout &lt;&lt; "Total area: " &lt;&lt; Rect.getArea() &lt;&lt; endl;

   // Print the total cost of painting
   cout &lt;&lt; "Total paint cost: $" &lt;&lt; Rect.getCost(area) &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Total area: 35
Total paint cost: $2450
</pre>
<hr />
 </div>


                

          
</asp:Content>
