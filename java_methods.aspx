
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_methods.aspx.cs" Inherits="java_methods" %>


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
                    <li><a href="java_FileIO.aspx" style="color: White">File I/O</a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="methods" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>A Java method is a collection of statements that are grouped together to perform an operation. When you call the System.out.<b>println()</b> method, for example, the system actually executes several statements in order to display a message on the console.</p>
<p>Now you will learn how to create your own methods with or without return values, invoke a method with or without parameters, and apply method abstraction in the program design.</p>
<h2>Creating Method</h2>
<p>Considering the following example to explain the syntax of a method &minus;</p>
<p><b>Syntax</b></p>
<pre class="result notranslate">
public static int methodName(int a, int b) {
   // body
}
</pre>
<p>Here,</p>
<ul class="list">
<li><p><b>public static</b> &minus; modifier</p></li>
<li><p><b>int</b> &minus; return type</p></li>
<li><p><b>methodName</b> &minus; name of the method</p></li>
<li><p><b>a, b</b> &minus; formal parameters</p></li>
<li><p><b>int a, int b</b> &minus; list of parameters</p></li>
</ul>
<p>Method definition consists of a method header and a method body. The same is shown in the following syntax &minus;</p>
<p><b>Syntax</b></p>
<pre class="result notranslate">
modifier returnType nameOfMethod (Parameter List) {
   // method body
}
</pre>
<p>The syntax shown above includes &minus;</p>
<ul class="list">
<li><p><b>modifier</b> &minus; It defines the access type of the method and it is optional to use.</p></li>
<li><p><b>returnType</b> &minus; Method may return a value.</p></li>
<li><p><b>nameOfMethod</b> &minus; This is the method name. The method signature consists of the method name and the parameter list.</p></li>
<li><p><b>Parameter List</b> &minus; The list of parameters, it is the type, order, and number of parameters of a method. These are optional, method may contain zero parameters.</p></li>
<li><p><b>method body</b> &minus; The method body defines what the method does with the statements.</p></li>
</ul>
<p><b>Example</b></p>
<p>Here is the source code of the above defined  method called <b>max()</b>. This method takes two parameters num1 and num2 and returns the maximum between the two &minus;</p> 
<pre class="prettyprint notranslate">
/** the snippet returns the minimum between two numbers */

public static int minFunction(int n1, int n2) {
   int min;
   if (n1 &gt; n2)
      min = n2;
   else
      min = n1;

   return min; 
}
</pre>
<h2>Method Calling</h2>
<p>For using a method, it should be called. There are two ways in which a method is called i.e., method returns a value or returning nothing (no return value).</p>
<p>The process of method calling is simple. When a program invokes a method, the program control gets transferred to the called method. This called method then returns control to the caller in two conditions, when &minus;</p>
<ul class="list">
<li>the return statement is executed.</li>
<li>it reaches the method ending closing brace.</li>
</ul>
<p>The methods returning void is considered as call to a statement. Lets consider an example &minus;</p>
<pre class="prettyprint notranslate">
System.out.println("This is tutorialspoint.com!");
</pre>
<p>The method returning value can be understood by the following example &minus;</p>
<pre class="prettyprint notranslate">
int result = sum(6, 9);
</pre>
<p>Following is the example to demonstrate how to define a method and how to call it &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
public class ExampleMinNumber {
   
   public static void main(String[] args) {
      int a = 11;
      int b = 6;
      int c = minFunction(a, b);
      System.out.println("Minimum Value = " + c);
   }

   /** returns the minimum of two numbers */
   public static int minFunction(int n1, int n2) {
      int min;
      if (n1 &gt; n2)
         min = n2;
      else
         min = n1;

      return min; 
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Minimum value = 6
</pre>
<h2>The void Keyword</h2>
<p>The void keyword allows us to create methods which do not return a value. Here, in the following example we're considering a void method <i>methodRankPoints</i>. This method is a void method, which does not return any value. Call to a void method must be a statement i.e. <i>methodRankPoints(255.7);</i>. It is a Java statement which ends with a semicolon as shown in the following example.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
public class ExampleVoid {

   public static void main(String[] args) {
      methodRankPoints(255.7);
   }

   public static void methodRankPoints(double points) {
      if (points &gt;= 202.5) {
         System.out.println("Rank:A1");
      }else if (points &gt;= 122.4) {
         System.out.println("Rank:A2");
      }else {
         System.out.println("Rank:A3");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Rank:A1
</pre>
<h2>Passing Parameters by Value</h2>
<p>While working under calling process, arguments is to be passed. These should be in the same order as their respective parameters in the method specification. Parameters can be passed by value or by reference.</p>
<p>Passing Parameters by Value means calling a method with a parameter. Through this, the argument value is passed to the parameter.</p>
<p><b>Example</b></p>
<p>The following program shows an example of passing parameter by value. The values of the arguments remains the same even after the method invocation.</p>
<pre class="prettyprint notranslate tryit">
public class swappingExample {

   public static void main(String[] args) {
      int a = 30;
      int b = 45;
      System.out.println("Before swapping, a = " + a + " and b = " + b);

      // Invoke the swap method
      swapFunction(a, b);
      System.out.println("\n**Now, Before and After swapping values will be same here**:");
      System.out.println("After swapping, a = " + a + " and b is " + b);
   }

   public static void swapFunction(int a, int b) {
      System.out.println("Before swapping(Inside), a = " + a + " b = " + b);
      
      // Swap n1 with n2
      int c = a;
      a = b;
      b = c;
      System.out.println("After swapping(Inside), a = " + a + " b = " + b);
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Before swapping, a = 30 and b = 45
Before swapping(Inside), a = 30 b = 45
After swapping(Inside), a = 45 b = 30

**Now, Before and After swapping values will be same here**:
After swapping, a = 30 and b is 45
</pre>
<h2>Method Overloading</h2>
<p>When a class has two or more methods by the same name but different parameters, it is known as method overloading. It is different from overriding. In overriding, a method has the same method name, type, number of parameters, etc.</p>
<p>Let’s consider the example discussed earlier for finding minimum numbers of integer type. If, let’s say we want to find the minimum number of double type. Then the concept of overloading will be introduced to create two or more methods with the same name but different parameters.</p>
<p>The following example explains the same &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
public class ExampleOverloading {

   public static void main(String[] args) {
      int a = 11;
      int b = 6;
      double c = 7.3;
      double d = 9.4;
      int result1 = minFunction(a, b);
      
      // same function name with different parameters
      double result2 = minFunction(c, d);
      System.out.println("Minimum Value = " + result1);
      System.out.println("Minimum Value = " + result2);
   }

   // for integer
   public static int minFunction(int n1, int n2) {
      int min;
      if (n1 &gt; n2)
         min = n2;
      else
         min = n1;

      return min; 
   }
   
   // for double
   public static double minFunction(double n1, double n2) {
     double min;
      if (n1 &gt; n2)
         min = n2;
      else
         min = n1;

      return min; 
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
Minimum Value = 6
Minimum Value = 7.3
</pre>
<p>Overloading methods makes program readable. Here, two methods are given by the same name but with different parameters. The minimum number from integer and double types is the result.</p>
<h2>Using Command-Line Arguments</h2>
<p>Sometimes you will want to pass some information into a program when you run it. This is accomplished by passing command-line arguments to main( ).</p>
<p>A command-line argument is the information that directly follows the program's name on the command line when it is executed. To access the command-line arguments inside a Java program is quite easy. They are stored as strings in the String array passed to main( ).</p>
<p><b>Example</b></p>
<p>The following program displays all of the command-line arguments that it is called with &minus;</p>
<pre class="prettyprint notranslate">
public class CommandLine {

   public static void main(String args[]) { 
      for(int i = 0; i&lt;args.length; i++) {
         System.out.println("args[" + i + "]: " +  args[i]);
      }
   }
}
</pre>
<p>Try executing this program as shown here &minus;</p>
<pre class="result notranslate">
$java CommandLine this is a command line 200 -100
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
args[0]: this
args[1]: is
args[2]: a
args[3]: command
args[4]: line
args[5]: 200
args[6]: -100
</pre>
<h2>The Constructors</h2>
<p>A constructor initializes an object when it is created. It has the same name as its class and is syntactically similar to a method. However, constructors have no explicit return type.</p>
<p>Typically, you will use a constructor to give initial values to the instance variables defined by the class, or to perform any other startup procedures required to create a fully formed object.</p>
<p>All classes have constructors, whether you define one or not, because Java automatically provides a default constructor that initializes all member variables to zero. However, once you define your own constructor, the default constructor is no longer used.</p>
<p><b>Example</b></p>
<p>Here is a simple example that uses a constructor without parameters &minus;</p>
<pre class="prettyprint notranslate" id="cons1">
// A simple constructor.
class MyClass {
   int x;

   // Following is the constructor
   MyClass() {
      x = 10;
   }
}
</pre>
<p>You will have to call constructor to initialize objects as follows &minus;</p>
<pre class="prettyprint notranslate tryit" title="cons1">
public class ConsDemo {

   public static void main(String args[]) {
      MyClass t1 = new MyClass();
      MyClass t2 = new MyClass();
      System.out.println(t1.x + " " + t2.x);
   }
}
</pre>
<p><b>Output</b></p>
<pre class="result notranslate">
10 10
</pre>
<h2>Parameterized Constructor</h2>
<p>Most often, you will need a constructor that accepts one or more parameters. Parameters are added to a constructor in the same way that they are added to a method, just declare them inside the parentheses after the constructor's name.</p>
<p><b>Example</b></p>
<p>Here is a simple example that uses a constructor with a parameter &minus;</p>
<pre class="prettyprint notranslate" id="cons2">
// A simple constructor.
class MyClass {
   int x;
   
   // Following is the constructor
   MyClass(int i ) {
      x = i;
   }
}
</pre>
<p>You will need to call a constructor to initialize objects as follows &minus;</p>
<pre class="prettyprint notranslate tryit" title="cons2">
public class ConsDemo {

   public static void main(String args[]) {
      MyClass t1 = new MyClass( 10 );
      MyClass t2 = new MyClass( 20 );
      System.out.println(t1.x + " " + t2.x);
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
10 20
</pre>
<h2>The this keyword</h2>
<p><b>this</b> is a keyword in Java which is used as a reference to the object of the current class, with in an instance method or a constructor. Using <i>this</i> you can refer the members of a class such as constructors, variables and methods.</p>
<p><b>Note</b> &minus; The keyword <i>this</i> is used only within instance methods or constructors</p>
<img src="/java/images/this.jpg" alt="This" />
<p>In general, the keyword <i>this</i> is used to &minus;</p>
<ul class="list">
<li><p>Differentiate the instance variables from local variables if they have same names, within a constructor or a method.</p></li>
</ul>
<pre class="prettyprint notranslate">
class Student {
   int age;   
   Student(int age) {
      this.age = age;	
   }
}
</pre>
<ul class="list">
<li><p>Call one type of constructor (parametrized constructor or default) from other in a class. It is known as explicit constructor invocation.</p></li>
</ul>
         <ul>
<pre class="prettyprint notranslate">
class Student {
   int age
   Student() {
      this(20);
   }
   
   Student(int age) {
      this.age = age;	
   }
}
</pre>
</ul>
<p><b>Example</b></p>
<p>Here is an example that uses <i>this</i> keyword to access the members of a class. Copy and paste the following program in a file with the name, <b>This_Example.java</b>.</p>
<pre class="prettyprint notranslate tryit">
public class This_Example {
   // Instance variable num
   int num = 10;
	
   This_Example() {
      System.out.println("This is an example program on keyword this");	
   }

   This_Example(int num) {
      // Invoking the default constructor
      this();
      
      // Assigning the local variable <i>num</i> to the instance variable <i>num</i>
      this.num = num;	   
   }
   
   public void greet() {
      System.out.println("Hi Welcome to Tutorialspoint");
   }
      
   public void print() {
      // Local variable num
      int num = 20;
      
      // Printing the instance variable
      System.out.println("value of local variable num is : "+num);
      
      // Printing the local variable
      System.out.println("value of instance variable num is : "+this.num);
      
      // Invoking the greet method of a class
      this.greet();     
   }
   
   public static void main(String[] args) {
      // Instantiating the class
      This_Example obj1 = new This_Example();
      
      // Invoking the print method
      obj1.print();
	  
      // Passing a new value to the num variable through parametrized constructor
      This_Example obj2 = new This_Example(30);
      
      // Invoking the print method again
      obj2.print(); 
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
This is an example program on keyword this 
value of local variable num is : 20
value of instance variable num is : 10
Hi Welcome to Tutorialspoint
This is an example program on keyword this 
value of local variable num is : 20
value of instance variable num is : 30
Hi Welcome to Tutorialspoint
</pre> 
<h2>Variable Arguments(var-args)</h2>
<p>JDK 1.5 enables you to pass a variable number of arguments of the same type to a method. The parameter in the method is declared as follows &minus;</p>
<pre class="result notranslate">
typeName... parameterName
</pre>
<p>In the method declaration, you specify the type followed by an ellipsis (...). Only one variable-length parameter may be specified in a method, and this parameter must be the last parameter. Any regular parameters must precede it.</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate tryit">
public class VarargsDemo {

   public static void main(String args[]) {
      // Call method with variable args  
	   printMax(34, 3, 3, 2, 56.5);
      printMax(new double[]{1, 2, 3});
   }

   public static void printMax( double... numbers) {
      if (numbers.length == 0) {
         System.out.println("No argument passed");
         return;
      }

      double result = numbers[0];

      for (int i = 1; i &lt;  numbers.length; i++)
      if (numbers[i] &gt;  result)
      result = numbers[i];
      System.out.println("The max value is " + result);
   }
}
</pre>
<p>This will produce the following result &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
The max value is 56.5
The max value is 3.0
</pre>
<h2>The finalize( ) Method</h2>
<p>It is possible to define a method that will be called just before an object's final destruction by the garbage collector. This method is called <b>finalize( )</b>, and it can be used to ensure that an object terminates cleanly.</p>
<p>For example, you might use finalize( ) to make sure that an open file owned by that object is closed.</p>
<p>To add a finalizer to a class, you simply define the finalize( ) method. The Java runtime calls that method whenever it is about to recycle an object of that class.</p>
<p>Inside the finalize( ) method, you will specify those actions that must be performed before an object is destroyed.</p>
<p>The finalize( ) method has this general form &minus;</p>
<pre class="result notranslate">
protected void finalize( ) {
   // finalization code here
}
</pre>
<p>Here, the keyword protected is a specifier that prevents access to finalize( ) by code defined outside its class.</p>
<p>This means that you cannot know when or even if finalize( ) will be executed. For example, if your program ends before garbage collection occurs, finalize( ) will not execute.</p>
<hr />
</div>
                

          
</asp:Content>

