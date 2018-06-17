<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_overloading.aspx.cs" Inherits="oop_overloading" %>


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
                <p>C++ allows you to specify more than one definition for a <b>function</b> name or an <b>operator</b> in the same scope, which is called <b>function overloading</b> and <b>operator overloading</b> respectively.</p>
<p>An overloaded declaration is a declaration that had been declared with the same name as a previously declared declaration in the same scope, except that both declarations have different arguments and obviously different definition (implementation).</p>
<p>When you call an overloaded <b>function</b> or <b>operator</b>, the compiler determines the most appropriate definition to use by comparing the argument types you used to call the function or operator with the parameter types specified in the definitions. The process of selecting the most appropriate overloaded function or operator is called <b>overload resolution</b>.</p>
<h2>Function overloading in C++</h2>
<p>You can have multiple definitions for the same function name in the same scope. The definition of the function must differ from each other by the types and/or the number of arguments in the argument list. You can not overload function declarations that differ only by return type.</p>
<p>Following is the example where same function <b>print()</b> is being used to print different data types:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
class printData {
   public:
      void print(int i) {
         cout &lt;&lt; "Printing int: " &lt;&lt; i &lt;&lt; endl;
      }

      void print(double  f) {
         cout &lt;&lt; "Printing float: " &lt;&lt; f &lt;&lt; endl;
      }

      void print(char* c) {
         cout &lt;&lt; "Printing character: " &lt;&lt; c &lt;&lt; endl;
      }
};

int main(void) {
   printData pd;
 
   // Call print to print integer
   pd.print(5);
	
   // Call print to print float
   pd.print(500.263);
	
   // Call print to print character
   pd.print("Hello C++");
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Printing int: 5
Printing float: 500.263
Printing character: Hello C++
</pre>
<h2>Operators overloading in C++</h2>
<p>You can redefine or overload most of the built-in operators available in C++. Thus a programmer can use operators with user-defined types as well.</p>
<p>Overloaded operators are functions with special names the keyword operator followed by the symbol for the operator being defined. Like any other function, an overloaded operator has a return type and a parameter list.</p>
<pre class="result notranslate">
Box operator+(const Box&amp;);
</pre>
<p>declares the addition operator that can be used to <b>add</b> two Box objects and returns final Box object. Most overloaded operators may be defined as ordinary non-member functions or as class member functions. In case we define above function as non-member function of a class then we would have to pass two arguments for each operand as follows:</p>
<pre class="result notranslate">
Box operator+(const Box&amp;, const Box&amp;);
</pre>
<p>Following is the example to show the concept of operator over loading using a member function. Here an object is passed as an argument whose properties will be accessed using this object, the object which will call this operator can be accessed using <b>this</b> operator as explained below:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

class Box {
   public:

      double getVolume(void) {
         return length * breadth * height;
      }
		
      void setLength( double len ) {
         length = len;
      }

      void setBreadth( double bre ) {
         breadth = bre;
      }

      void setHeight( double hei ) {
         height = hei;
      }
		
      // Overload + operator to add two Box objects.
      Box operator+(const Box&amp; b) {
         Box box;
         box.length = this-&gt;length + b.length;
         box.breadth = this-&gt;breadth + b.breadth;
         box.height = this-&gt;height + b.height;
         return box;
      }
		
   private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};

// Main function for the program
int main( ) {
   Box Box1;                // Declare Box1 of type Box
   Box Box2;                // Declare Box2 of type Box
   Box Box3;                // Declare Box3 of type Box
   double volume = 0.0;     // Store the volume of a box here
 
   // box 1 specification
   Box1.setLength(6.0); 
   Box1.setBreadth(7.0); 
   Box1.setHeight(5.0);
 
   // box 2 specification
   Box2.setLength(12.0); 
   Box2.setBreadth(13.0); 
   Box2.setHeight(10.0);
 
   // volume of box 1
   volume = Box1.getVolume();
   cout &lt;&lt; "Volume of Box1 : " &lt;&lt; volume &lt;&lt;endl;
 
   // volume of box 2
   volume = Box2.getVolume();
   cout &lt;&lt; "Volume of Box2 : " &lt;&lt; volume &lt;&lt;endl;

   // Add two object as follows:
   Box3 = Box1 + Box2;

   // volume of box 3
   volume = Box3.getVolume();
   cout &lt;&lt; "Volume of Box3 : " &lt;&lt; volume &lt;&lt;endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="result notranslate">
Volume of Box1 : 210
Volume of Box2 : 1560
Volume of Box3 : 5400
</pre>
<h2>Overloadable/Non-overloadableOperators</h2>
<p>Following is the list of operators which can be overloaded:</p>
<table class="table table-bordered">
<tr><td width="16.6%">+</td><td width="16.6%">-</td><td width="16.6%">*</td><td width="16.6%">/</td><td width="16.6%">%</td><td width="16.6%">^</td></tr>
<tr><td>&amp;</td><td>|</td><td>~</td><td>!</td><td>,</td><td>=</td></tr>
<tr><td>&lt;</td><td>&gt;</td><td>&lt;=</td><td>&gt;=</td><td>++</td><td>--</td></tr>
<tr><td>&lt;&lt;</td><td>&gt;&gt;</td><td>==</td><td>!=</td><td>&amp;&amp;</td><td>||</td></tr>
<tr><td>+=</td><td>-=</td><td>/=</td><td>%=</td><td>^=</td><td>&amp;=</td></tr>
<tr><td>|=</td><td>*=</td><td>&lt;&lt;=</td><td>&gt;&gt;=</td><td>[]</td><td>()</td></tr>
<tr><td>-&gt;</td><td>-&gt;*</td><td>new</td><td>new []</td><td>delete</td><td>delete []</td></tr>
</table>
<p>Following is the list of operators, which can not be overloaded:</p>
<table class="table table-bordered">
<tr><td width="25%">::</td><td width="25%">.*</td><td width="25%">.</td><td width="25%">?:</td></tr>
</table>
<h2 id="examples">Operator Overloading Examples</h2>
<p>Here are various operator overloading examples to help you in understanding the concept.</p>
<table class="table table-bordered">
<tr>
<th width="5%">S.N.</th><th>Operators and Example</th></tr>
<tr>
<td>1</td><td><p><a href="/cplusplus/unary_operators_overloading.htm">Unary operators overloading</a></p></td>
</tr>
<tr>
<td>2</td>
<td><p><a href="/cplusplus/binary_operators_overloading.htm">Binary operators overloading</a></p></td>
</tr>
<tr>
<td>3</td>
<td><p><a href="/cplusplus/relational_operators_overloading.htm">Relational operators overloading</a> </p></td>
</tr>
<tr>
<td>4</td>
<td><p><a href="/cplusplus/input_output_operators_overloading.htm">Input/Output operators overloading</a></p></td>
</tr>
<tr>
<td>5</td>
<td><p><a href="/cplusplus/increment_decrement_operators_overloading.htm"> ++ and -- operators overloading</a></p></td>
</tr>
<tr>
<td>6</td>
<td><p><a href="/cplusplus/assignment_operators_overloading.htm">Assignment operators overloading</a></p></td>
</tr>
<tr>
<td>7</td>
<td><p><a href="/cplusplus/function_call_operator_overloading.htm">Function call () operator  overloading</a></p></td>
</tr>
<tr>
<td>8</td>
<td><p><a href="/cplusplus/subscripting_operator_overloading.htm">Subscripting [] operator overloading</a></p></td>
</tr>
<tr>
<td>9</td>
<td><p><a href="/cplusplus/class_member_access_operator_overloading.htm">Class member access operator -&gt; overloading</a></p></td>
</tr>
</table>
 </div>

                

          
</asp:Content>
