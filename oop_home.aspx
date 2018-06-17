<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_home.aspx.cs" Inherits="oop_home" %>


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
                <p>The main purpose of C++ programming is to add object orientation to the C programming language and classes are the central feature of C++ that supports object-oriented programming and are often called user-defined types.</p>
<p>A class is used to specify the form of an object and it combines data representation and methods for manipulating that data into one neat package. The data and functions within a class are called members of the class.</p>
<h2>C++ Class Definitions</h2>
<p>When you define a class, you define a blueprint for a data type. This doesn't actually define any data, but it does define what the class name means, that is, what an object of the class will consist of and what operations can be performed on such an object.</p>
<p>A class definition starts with the keyword <b>class</b> followed by the class name; and the class body, enclosed by a pair of curly braces. A class definition must be followed either by a semicolon or a list of declarations. For example, we defined the Box data type using the keyword <b>class</b> as follows:</p>
<pre class="prettyprint notranslate">
class Box {
   public:
      double length;   // Length of a box
      double breadth;  // Breadth of a box
      double height;   // Height of a box
};
</pre>
<p>The keyword <b>public</b> determines the access attributes of the members of the class that follow it. A public member can be accessed from outside the class anywhere within the scope of the class object. You can also specify the members of a class as <b>private</b> or <b>protected</b> which we will discuss in a sub-section.</p>
<h2>Define C++ Objects</h2>
<p>A class provides the blueprints for objects, so basically an object is created from a class. We declare objects of a class with exactly the same sort of declaration that we declare variables of basic types. Following statements declare two objects of class Box:</p>
<pre class="result notranslate">
Box Box1;          // Declare Box1 of type Box
Box Box2;          // Declare Box2 of type Box
</pre>
<p>Both of the objects Box1 and Box2 will have their own copy of data members.</p>
<h2>Accessing the Data Members</h2>
<p>The public data members of objects of a class can be accessed using the direct member access operator (.). Let us try the following example to make the things clear:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;

using namespace std;

class Box {
   public:
      double length;   // Length of a box
      double breadth;  // Breadth of a box
      double height;   // Height of a box
};

int main( ) {
   Box Box1;        // Declare Box1 of type Box
   Box Box2;        // Declare Box2 of type Box
   double volume = 0.0;     // Store the volume of a box here
 
   // box 1 specification
   Box1.height = 5.0; 
   Box1.length = 6.0; 
   Box1.breadth = 7.0;

   // box 2 specification
   Box2.height = 10.0;
   Box2.length = 12.0;
   Box2.breadth = 13.0;
	
   // volume of box 1
   volume = Box1.height * Box1.length * Box1.breadth;
   cout &lt;&lt; "Volume of Box1 : " &lt;&lt; volume &lt;&lt;endl;

   // volume of box 2
   volume = Box2.height * Box2.length * Box2.breadth;
   cout &lt;&lt; "Volume of Box2 : " &lt;&lt; volume &lt;&lt;endl;
	
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Volume of Box1 : 210
Volume of Box2 : 1560
</pre>
<p>It is important to note that private and protected members can not be accessed directly using direct member access operator (.). We will learn how private and protected members can be accessed.</p>
<h2>Classes &amp; Objects in Detail</h2>
<p>So far, you have got very basic idea about C++ Classes and Objects. There are further interesting concepts related to C++ Classes and Objects which we will discuss in various sub-sections listed below:</p>
<table class="table table-bordered">
<tr><th width="40%">Concept</th><th>Description</th></tr>
<tr><td><p><a href="/cplusplus/cpp_class_member_functions.htm" title="C++ Class Member Functions">Class member functions</a></p></td><td>A member function of a class is a function that has its definition or its prototype within the class definition like any other variable.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_class_access_modifiers.htm" title="C++ Class Access Modifiers">Class access modifiers</a></p></td><td>A class member can be defined as public, private or protected. By default members would be assumed as private.</td></tr>
<tr><td><p><a href="/cplusplus/cpp_constructor_destructor.htm" title="C++ Constructor &amp; Destructor">Constructor &amp; destructor</a></p></td><td>A class constructor is a special function in a class that is called when a new object of the class is created. A destructor is also a special function which is called when created object is deleted.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_copy_constructor.htm" title="C++ Copy Constructor">C++ copy constructor</a></p></td><td>The copy constructor is a constructor which creates an object by initializing it with an object of the same class, which has been created previously.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_friend_functions.htm" title="C++ Friend Functions">C++ friend functions</a></p></td><td>A <b>friend</b> function is permitted full access to private and protected members of a class.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_inline_functions.htm" title="C++ Inline Functions">C++ inline functions</a></p></td><td>With an inline function, the compiler tries to expand the code in the body of the function in place of a call to the function.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_this_pointer.htm" title="The this Pointer in C++">The this pointer in C++</a></p></td><td>Every object has a special pointer <b>this</b> which points to the object itself.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_pointer_to_class.htm" title="Pointer to C++ Classes">Pointer to C++ classes</a></p></td><td>A pointer to a class is done exactly the same way a pointer to a structure is. In fact a class is really just a structure with functions in it.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_static_members.htm" title="Static members of a class">Static members of a class</a></p></td><td>Both data members and function members of a class can be declared as static.</td> </tr>
</table>
 </div>

                

          
</asp:Content>
