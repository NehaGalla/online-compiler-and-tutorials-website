
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_innerClasses.aspx.cs" Inherits="java_innerClasses" %>


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
                      <li><a href="Java_Home.aspx" style="color: White">java home</a></li>
                    <li><a href="java_objects.aspx" style="color: White">java objects&classes</a></li>
                    <li><a href="java_dataTypes.aspx" style="color: White">Data Types</a></li>
                    <li><a href="java_Variables.aspx" style="color: White">Variable Types</a></li>
                    <li><a href="java_Modifier.aspx" style="color: White">Modifier Types</a></li>
                    <li><a href="java_Operators.aspx" style="color: White">Operators</a></li>
                    <li><a href="java_loops.aspx" style="color: White">Loop Control</a></li>
                    <li><a href="java_decisionMaking.aspx" style="color: White">Decision Making</a></li>
                    <li><a href="java_Numbers.aspx" style="color: White">Numbers</a></li>
                    <li><a href="java_characters.aspx" style="color: White">Characters</a></li>
                    <li><a href="java_Strings.aspx" style="color: White">Strings</a></li>
                    <li><a href="java_Arrays.aspx" style="color: White">Arrays</a></li>
                    <li><a href="java_dateTime.aspx" style="color: White">Date and Time</a></li>
                    <li><a href="java_RG.aspx" style="color: White">Regular Expressions</a></li>
                    <li><a href="java_methods.aspx" style="color: White">Methods</a></li>
                    <li><a href="java_FileI/O.aspx" style="color: White">File I/O/a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="innerClasses" style="padding-left:350px;padding-top:100px;position:absolute">
         <hr />
<p>In this chapter, we will discuss inner classes of Java.</p>
<h2>Nested Classes</h2>
<p>In Java, just like methods, variables of a class too can have another class as its member. Writing a class within another is allowed in Java. The class written within is called the <b>nested class</b>, and the class that holds the inner class is called the <b>outer class</b>.</p>
<p><b>Syntax</b></p>
<p>Following is the syntax to write a nested class. Here, the class <b>Outer_Demo</b> is the outer class and the class <b>Inner_Demo</b> is the nested class.</p>
<pre class="result notranslate">
class Outer_Demo {
   class Nested_Demo {
   }
}
</pre>
<p>Nested classes are divided into two types &minus;</p>
<ul class="list">
<li><p><b>Non-static nested classes</b> &minus; These are the non-static members of a class.</p></li>
<li><p><b>Static nested classes</b> &minus; These are the static members of a class.</p></li>
</ul>
<img src="/java/images/inner_classes.jpg" alt="Inner Classes" />
<h2>Inner Classes (Non-static Nested Classes)</h2>
<p>Inner classes are a security mechanism in Java. We know a class cannot be associated with the access modifier <b>private</b>, but if we have the class as a member of other class, then the inner class can be made private. And this is also used to access the private members of a class.</p>
<p>Inner classes are of three types depending on how and where you define them. They are &minus;</p>
<ul class="list">
<li>Inner Class</li>
<li>Method-local Inner Class</li>
<li>Anonymous Inner Class</li>
</ul>
<h3>Inner Class</h3>
<p>Creating an inner class is quite simple. You just need to write a class within a class. Unlike a class, an inner class can be private and once you declare an inner class private, it cannot be accessed from an object outside the class.</p>
<p>Following is the program to create an inner class and access it. In the given example, we make the inner class private and access the class through a method.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
class Outer_Demo {
   int num;
   
   // inner class
   private class Inner_Demo {
      public void print() {
         System.out.println("This is an inner class");
      }
   }
   
   // Accessing he inner class from the method within
   void display_Inner() {
      Inner_Demo inner = new Inner_Demo();
      inner.print();
   }
}
   
public class My_class {

   public static void main(String args[]) {
      // Instantiating the outer class 
      Outer_Demo outer = new Outer_Demo();
      
      // Accessing the display_Inner() method.
      outer.display_Inner();
   }
}
</pre>
<p>Here you can observe that <b>Outer_Demo</b> is the outer class, <b>Inner_Demo</b> is the inner class, <b>display_Inner()</b> is the method inside which we are instantiating the inner class, and this method is invoked from the <b>main</b> method.</p>
<p>If you compile and execute the above program, you will get the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
This is an inner class.
</pre>
<h3>Accessing the Private Members</h3>
<p>As mentioned earlier, inner classes are also used to access the private members of a class. Suppose, a class is having private members to access them. Write an inner class in it, return the private members from a method within the inner class, say, <b>getValue()</b>, and finally from another class (from which you want to access the private members) call the getValue() method of the inner class.</p>
<p>To instantiate the inner class, initially you have to instantiate the outer class. Thereafter, using the object of the outer class, following is the way in which you can instantiate the inner class.</p>
<pre class="result notranslate">
Outer_Demo outer = new Outer_Demo();
Outer_Demo.Inner_Demo inner = outer.new Inner_Demo();
</pre>
<p>The following program shows how to access the private members of a class using inner class.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
class Outer_Demo {
   // private variable of the outer class
   private int num = 175;  
   
   // inner class
   public class Inner_Demo {
      public int getNum() {
         System.out.println("This is the getnum method of the inner class");
         return num;
      }
   }
}

public class My_class2 {

   public static void main(String args[]) {
      // Instantiating the outer class
      Outer_Demo outer = new Outer_Demo();
      
      // Instantiating the inner class
      Outer_Demo.Inner_Demo inner = outer.new Inner_Demo();
      System.out.println(inner.getNum());
   }
}
</pre>
<p>If you compile and execute the above program, you will get the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
The value of num in the class Test is: 175
</pre>
<h2>Method-local Inner Class</h2>
<p>In Java, we can write a class within a method and this will be a local type. Like local variables, the scope of the inner class is restricted within the method.</p>
<p>A method-local inner class can be instantiated only within the method where the inner class is defined. The following program shows how to use a method-local inner class.</p>
<p><b>Example</b></p>
<pre class = "prettyprint notranslate tryit">
public class Outerclass {
   // instance method of the outer class 
   void my_Method() {
      int num = 23;

      // method-local inner class
      class MethodInner_Demo {
         public void print() {
            System.out.println("This is method inner class "+num);	   
         }   
      } // end of inner class
	   
      // Accessing the inner class
      MethodInner_Demo inner = new MethodInner_Demo();
      inner.print();
   }
   
   public static void main(String args[]) {
      Outerclass outer = new Outerclass();
      outer.my_Method();	   	   
   }
}
</pre>
<p>If you compile and execute the above program, you will get the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
This is method inner class 23
</pre>
<h2>Anonymous Inner Class</h2>
<p>An inner class declared without a class name is known as an <b>anonymous inner class</b>. In case of anonymous inner classes, we declare and instantiate them at the same time. Generally, they are used whenever you need to override the method of a class or an interface. The syntax of an anonymous inner class is as follows &minus;</p>
<p><b>Syntax</b></p>
<pre  class="result notranslate">
AnonymousInner an_inner = new AnonymousInner() {
   public void my_method() {
      ........
      ........
   }   
};
</pre>
<p>The following program shows how to override the method of a class using anonymous inner class.</p>
<p><b>Example</b></p>
<pre  class="prettyprint notranslate tryit">
abstract class AnonymousInner {
   public abstract void mymethod();
}

public class Outer_class {

   public static void main(String args[]) {
      AnonymousInner inner = new AnonymousInner() {
         public void mymethod() {
            System.out.println("This is an example of anonymous inner class");
         }
      };
      inner.mymethod();	
   }
}
</pre>
<p>If you compile and execute the above program, you will get the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
This is an example of anonymous inner class
</pre>
<p>In the same way, you can override the methods of the concrete class as well as the interface using an anonymous inner class.</p> 
<h2>Anonymous Inner Class as Argument</h2>
<p>Generally, if a method accepts an object of an interface, an abstract class, or a concrete class, then we can implement the interface, extend the abstract class, and pass the object to the method. If it is a class, then we can directly pass it to the method.</p>
<p>But in all the three cases, you can pass an anonymous inner class to the method. Here is the syntax of passing an anonymous inner class as a method argument &minus;</p>
<pre class="result notranslate">
obj.my_Method(new My_Class() {
   public void Do() {
      .....
      .....
   }
});
</pre>
<p>The following program shows how to pass an anonymous inner class as a method argument.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
// interface
interface Message {
   String greet();
}

public class My_class {
   // method which accepts the object of interface Message
   public void displayMessage(Message m) {
      System.out.println(m.greet() +
         ", This is an example of anonymous inner class as an argument");  
   }

   public static void main(String args[]) {
      // Instantiating the class
      My_class obj = new My_class();

      // Passing an anonymous inner class as an argument
      obj.displayMessage(new Message() {
         public String greet() {
            return "Hello";
         }
      });
   }
}
</pre>
<p>If you compile and execute the above program, it gives you the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Hello This is an example of anonymous inner class as an argument
</pre>
<h2>Static Nested Class</h2>
<p>A static inner class is a nested class which is a static member of the outer class. It can be accessed without instantiating the outer class, using other static members. Just like static members, a static nested class does not have access to the instance variables and methods of the outer class. The syntax of static nested class is as follows &minus;</p>
<p><b>Syntax</b></p>
<pre class="result notranslate">
class MyOuter {
   static class Nested_Demo {
   }
}
</pre>
<p>Instantiating a static nested class is a bit different from instantiating an inner class. The following program shows how to use a static nested class.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
public class Outer {
   static class Nested_Demo {
      public void my_method() {
         System.out.println("This is my nested class");
      }
   }
   
   public static void main(String args[]) {
      Outer.Nested_Demo nested = new Outer.Nested_Demo();	 
      nested.my_method();
   }
}
</pre>
<p>If you compile and execute the above program, you will get the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
This is my nested class
</pre>
</div>
                

          
</asp:Content>

