
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Java_Variables.aspx.cs" Inherits="Java_Variables" %>


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
     <div class="varibles" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>A variable provides us with named storage that our programs can manipulate. Each variable in Java has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.</p>
<p>You must declare all variables before they can be used. Following is the basic form of a variable declaration &minus;</p>
<pre class="result notranslate">
data type variable [ = value][, variable [ = value] ...] ;
</pre>
<p>Here <i>data type</i> is one of Java's datatypes and <i>variable</i> is the name of the variable. To declare more than one variable of the specified type, you can use a comma-separated list.</p>
<p>Following are valid examples of variable declaration and initialization in Java &minus;</p>
<h2>Example</h2>
<pre class="prettyprint notranslate">
int a, b, c;         // Declares three ints, a, b, and c.
int a = 10, b = 10;  // Example of initialization
byte B = 22;         // initializes a byte type variable B.
double pi = 3.14159; // declares and assigns a value of PI.
char a = 'a';        // the char variable a iis initialized with value 'a'
</pre>
<p>This chapter will explain various variable types available in Java Language. There are three kinds of variables in Java &minus;</p>
<ul class="list">
<li>Local variables</li>
<li>Instance variables</li>
<li>Class/Static variables</li>
</ul>
<h2>Local Variables</h2>
<ul class="list">
<li><p>Local variables are declared in methods, constructors, or blocks.</p></li>
<li><p>Local variables are created when the method, constructor or block is entered and the variable will be destroyed once it exits the method, constructor, or block.</p></li>
<li><p>Access modifiers cannot be used for local variables.</p></li>
<li><p>Local variables are visible only within the declared method, constructor, or block.</p></li>
<li><p>Local variables are implemented at stack level internally.</p></li>
<li><p>There is no default value for local variables, so local variables should be declared and an initial value should be assigned before the first use.</p></li>
</ul>
<h3>Example</h3>
<p>Here, <i>age</i> is a local variable. This is defined inside <i>pupAge()</i> method and its scope is limited to only this method.</p>
<pre class="prettyprint notranslate tryit">
public class Test {
   public void pupAge() {
      int age = 0;
      age = age + 7;
      System.out.println("Puppy age is : " + age);
   }

   public static void main(String args[]) {
      Test test = new Test();
      test.pupAge();
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Puppy age is: 7
</pre>
<h3>Example</h3>
<p>Following example uses <i>age</i> without initializing it, so it would give an error at the time of compilation.</p>
<pre class="prettyprint notranslate tryit">
public class Test {
   public void pupAge() {
      int age;
      age = age + 7;
      System.out.println("Puppy age is : " + age);
   }

   public static void main(String args[]) {
      Test test = new Test();
      test.pupAge();
   }
}
</pre>
<p>This will produce the following error while compiling it &minus;</p>
<h3>Output</h3>
<pre class="result notranslate">
Test.java:4:variable number might not have been initialized
age = age + 7;
         ^
1 error
</pre>
<h2>Instance Variables</h2>
<ul class="list">
<li><p>Instance variables are declared in a class, but outside a method, constructor or any block.</p></li>
<li><p>When a space is allocated for an object in the heap, a slot for each instance variable value is created.</p></li>
<li><p>Instance variables are created when an object is created with the use of the keyword 'new' and destroyed when the object is destroyed.</p></li>
<li><p>Instance variables hold values that must be referenced by more than one method, constructor or block, or essential parts of an object's state that must be present throughout the class.</p></li>
<li><p>Instance variables can be declared in class level before or after use.</p></li>
<li><p>Access modifiers can be given for instance variables.</p></li>
<li><p>The instance variables are visible for all methods, constructors and block in the class. Normally, it is recommended to make these variables private (access level). However, visibility for subclasses can be given for these variables with the use of access modifiers.</p></li>
<li><p>Instance variables have default values. For numbers, the default value is 0, for Booleans it is false, and for object references it is null. Values can be assigned during the declaration or within the constructor.</p></li>
<li><p>Instance variables can be accessed directly by calling the variable name inside the class. However, within static methods (when instance variables are given accessibility), they should be called using the fully qualified name. <i>ObjectReference.VariableName</i>.</p></li>
</ul>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.io.*;
public class Employee {

   // this instance variable is visible for any child class.
   public String name;

   // salary  variable is visible in Employee class only.
   private double salary;

   // The name variable is assigned in the constructor.
   public Employee (String empName) {
      name = empName;
   }

   // The salary variable is assigned a value.
   public void setSalary(double empSal) {
      salary = empSal;
   }

   // This method prints the employee details.
   public void printEmp() {
      System.out.println("name  : " + name );
      System.out.println("salary :" + salary);
   }

   public static void main(String args[]) {
      Employee empOne = new Employee("Ransika");
      empOne.setSalary(1000);
      empOne.printEmp();
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
name  : Ransika
salary :1000.0
</pre>
<h2>Class/Static Variables</h2>
<ul class="list">
<li><p>Class variables also known as static variables are declared with the static keyword in a class, but outside a method, constructor or a block.</p></li>
<li><p>There would only be one copy of each class variable per class, regardless of how many objects are created from it.</p></li>
<li><p>Static variables are rarely used other than being declared as constants. Constants are variables that are declared as public/private, final, and static. Constant variables never change from their initial value.</p></li>
<li><p>Static variables are stored in the static memory. It is rare to use static variables other than declared final and used as either public or private constants.</p></li>
<li><p>Static variables are created when the program starts and destroyed when the program stops.</p></li>
<li><p>Visibility is similar to instance variables. However, most static variables are declared public since they must be available for users of the class.</p></li>
<li><p>Default values are same as instance variables. For numbers, the default value is 0; for Booleans, it is false; and for object references, it is null. Values can be assigned during the declaration or within the constructor. Additionally, values can be assigned in special static initializer blocks.</p></li>
<li><p>Static variables can be accessed by calling with the class name <i>ClassName.VariableName</i>.</p></li>
<li><p>When declaring class variables as public static final, then variable names (constants) are all in upper case. If the static variables are not public and final, the naming syntax is the same as instance and local variables.</p></li>
</ul>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.io.*;
public class Employee {

   // salary  variable is a private static variable
   private static double salary;

   // DEPARTMENT is a constant
   public static final String DEPARTMENT = "Development ";

   public static void main(String args[]) {
      salary = 1000;
      System.out.println(DEPARTMENT + "average salary:" + salary);
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Development average salary:1000
</pre>
<p><b>Note</b> &minus; If the variables are accessed from an outside class, the constant should be accessed as Employee.DEPARTMENT</p>
<h2>What is Next?</h2>
<p>You already have used access modifiers (public &amp; private) in this chapter. The next chapter will explain Access Modifiers and Non-Access Modifiers in detail.</p>
<hr />
</div>
                

          
</asp:Content>

