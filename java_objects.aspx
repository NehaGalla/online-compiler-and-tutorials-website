
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_objects.aspx.cs" Inherits="java_objects" %>


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
                    <li><a href="java_FileIO.aspx" style="color: White">File I/O/a></li>
                    <li><a href="java_exceptions.aspx" style="color: White">Exceptions</a></li>
                    <li><a href="java_innerClasses.aspx" style="color: White">Inner Classes</a></li>
                    
                </ul>
            </div>
          </div>
   
    </div>
     <div class="objects" style="padding-left:350px;padding-top:100px;position:absolute">
          <p>Java is an Object-Oriented Language. As a language that has the Object-Oriented feature, Java supports the following fundamental concepts &minus;</p>
<ul class="list">
<li>Polymorphism</li>
<li>Inheritance</li>
<li>Encapsulation</li>
<li>Abstraction</li>
<li>Classes</li>
<li>Objects</li>
<li>Instance</li>
<li>Method</li>
<li>Message Parsing</li>
</ul>
<p>In this chapter, we will look into the concepts - Classes and Objects.</p>
<ul class="list">
<li><p><b>Object</b> &minus; Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behaviors – wagging the tail, barking, eating. An object is an instance of a class.</p></li>
<li><p><b>Class</b> &minus; A class can be defined as a template/blueprint that describes the behavior/state that the object of its type support.</p></li>
</ul>
<h2>Objects in Java</h2>
<p>Let us now look deep into what are objects. If we consider the real-world, we can find many objects around us, cars, dogs, humans, etc. All these objects have a state and a behavior.</p>
<p>If we consider a dog, then its state is - name, breed, color, and the behavior is - barking, wagging the tail, running.</p>
<p>If you compare the software object with a real-world object, they have very similar characteristics.</p>
<p>Software objects also have a state and a behavior. A software object's state is stored in fields and behavior is shown via methods.</p>
<p>So in software development, methods operate on the internal state of an object and the object-to-object communication is done via methods.</p>
<h2>Classes in Java</h2>
<p>A class is a blueprint from which individual objects are created.</p>
<p>Following is a sample of a class.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
public class Dog {
   String breed;
   int ageC
   String color;

   void barking() {
   }

   void hungry() {
   }

   void sleeping() {
   }
}
</pre>
<p>A class can contain any of the following variable types.</p>
<ul class="list">
<li><p><b>Local variables</b> &minus; Variables defined inside methods, constructors or blocks are called local variables. The variable will be declared and initialized within the method and the variable will be destroyed when the method has completed.</p></li>
<li><p><b>Instance variables</b> &minus; Instance variables are variables within a class but outside any method. These variables are initialized when the class is instantiated. Instance variables can be accessed from inside any method, constructor or blocks of that particular class.</p></li>
<li><p><b>Class variables</b> &minus; Class variables are variables declared within a class, outside any method, with the static keyword.</p></li>
</ul>
<p>A class can have any number of methods to access the value of various kinds of methods. In the above example, barking(), hungry() and sleeping() are methods.</p>
<p>Following are some of the important topics that need to be discussed when looking into classes of the Java Language.</p>
<h2>Constructors</h2>
<p>When discussing about classes, one of the most important sub topic would be constructors. Every class has a constructor. If we do not explicitly write a constructor for a class, the Java compiler builds a default constructor for that class.</p>
<p>Each time a new object is created, at least one constructor will be invoked. The main rule of constructors is that they should have the same name as the class. A class can have more than one constructor.</p>
<p>Following is an example of a constructor &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
public class Puppy {
   public Puppy() {
   }

   public Puppy(String name) {
      // This constructor has one parameter, <i>name</i>.
   }
}
</pre>
<p>Java also supports <a href="/java/java_using_singleton.htm">Singleton Classes</a> where you would be able to create only one instance of a class.</p>
<p><b>Note</b> &minus; We have two different types of constructors. We are going to discuss constructors in detail in the subsequent chapters.</p>
<h2>Creating an Object</h2>
<p>As mentioned previously, a class provides the blueprints for objects. So basically, an object is created from a class. In Java, the new keyword is used to create new objects.</p>
<p>There are three steps when creating an object from a class &minus;</p>
<ul class="list">
<li><p><b>Declaration</b> &minus; A variable declaration with a variable name with an object type.</p></li>
<li><p><b>Instantiation</b> &minus; The 'new' keyword is used to create the object.</p></li>
<li><p><b>Initialization</b> &minus; The 'new' keyword is followed by a call to a constructor. This call initializes the new object.</p></li>
</ul>
<p>Following is an example of creating an object &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class Puppy {
   public Puppy(String name) {
      // This constructor has one parameter, <i>name</i>.
      System.out.println("Passed Name is :" + name );
   }

   public static void main(String []args) {
      // Following statement would create an object myPuppy
      Puppy myPuppy = new Puppy( "tommy" );
   }
}
</pre>
<p>If we compile and run the above program, then it will produce the following result &minus;</p>
<h3>Output</h3>
<pre class="result notranslate">
Passed Name is :tommy
</pre>
<h2>Accessing Instance Variables and Methods</h2>
<p>Instance variables and methods are accessed via created objects. To access an instance variable, following is the fully qualified path &minus;</p>
<pre class="result notranslate">
/* First create an object */
ObjectReference = new Constructor();

/* Now call a variable as follows */
ObjectReference.variableName;

/* Now you can call a class method as follows */
ObjectReference.MethodName();
</pre>
<h3>Example</h3>
<p>This example explains how to access instance variables and methods of a class.</p>
<pre class="prettyprint notranslate tryit">
public class Puppy {
   int puppyAge;

   public Puppy(String name) {
      // This constructor has one parameter, <i>name</i>.
      System.out.println("Name chosen is :" + name );
   }

   public void setAge( int age ) {
      puppyAge = age;
   }

   public int getAge( ) {
      System.out.println("Puppy's age is :" + puppyAge );
      return puppyAge;
   }

   public static void main(String []args) {
      /* Object creation */
      Puppy myPuppy = new Puppy( "tommy" );

      /* Call class method to set puppy's age */
      myPuppy.setAge( 2 );

      /* Call another class method to get puppy's age */
      myPuppy.getAge( );

      /* You can access instance variable as follows as well */
      System.out.println("Variable Value :" + myPuppy.puppyAge );
   }
}
</pre>
<p>If we compile and run the above program, then it will produce the following result &minus;</p>
<h3>Output</h3>
<pre class="result notranslate">
Name chosen is :tommy
Puppy's age is :2
Variable Value :2
</pre>
<h2>Source File Declaration Rules</h2>
<p>As the last part of this section, let's now look into the source file declaration rules. These rules are essential when declaring classes, <i>import</i> statements and <i>package</i> statements in a source file.</p>
<ul class="list">
<li><p>There can be only one public class per source file.</p></li>
<li><p>A source file can have multiple non-public classes.</p></li>
<li><p>The public class name should be the name of the source file as well which should be appended by <b>.java</b> at the end. For example: the class name is <i>public class Employee{}</i> then the source file should be as Employee.java.</p></li>
<li><p>If the class is defined inside a package, then the package statement should be the first statement in the source file.</p></li>
<li><p>If import statements are present, then they must be written between the package statement and the class declaration. If there are no package statements, then the import statement should be the first line in the source file.</p></li>
<li><p>Import and package statements will imply to all the classes present in the source file. It is not possible to declare different import and/or package statements to different classes in the source file.</p></li>
</ul>
<p>Classes have several access levels and there are different types of classes; abstract classes, final classes, etc. We will be explaining about all these in the access modifiers chapter.</p>
<p>Apart from the above mentioned types of classes, Java also has some special classes called Inner classes and Anonymous classes.</p>
<h2>Java Package</h2>
<p>In simple words, it is a way of categorizing the classes and interfaces. When developing applications in Java, hundreds of classes and interfaces will be written, therefore categorizing these classes is a must as well as makes life much easier.</p>
<h2>Import Statements</h2>
<p>In Java if a fully qualified name, which includes the package and the class name is given, then the compiler can easily locate the source code or classes. Import statement is a way of giving the proper location for the compiler to find that particular class.</p>
<p>For example, the following line would ask the compiler to load all the classes available in directory java_installation/java/io &minus;</p>
<pre class="result notranslate">
import java.io.*;
</pre>
<h2>A Simple Case Study</h2>
<p>For our case study, we will be creating two classes. They are Employee and EmployeeTest.</p>
<p>First open notepad and add the following code. Remember this is the Employee class and the class is a public class. Now, save this source file with the name Employee.java.</p>
<p>The Employee class has four instance variables - name, age, designation and salary. The class has one explicitly defined constructor, which takes a parameter.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate" id="employee">
import java.io.*;
public class Employee {

   String name;
   int age;
   String designation;
   double salary;

   // This is the constructor of the class Employee
   public Employee(String name) {
      this.name = name;
   }

   // Assign the age of the Employee  to the variable age.
   public void empAge(int empAge) {
      age = empAge;
   }

   /* Assign the designation to the variable designation.*/
   public void empDesignation(String empDesig) {
      designation = empDesig;
   }

   /* Assign the salary to the variable	salary.*/
   public void empSalary(double empSalary) {
      salary = empSalary;
   }

   /* Print the Employee details */
   public void printEmployee() {
      System.out.println("Name:"+ name );
      System.out.println("Age:" + age );
      System.out.println("Designation:" + designation );
      System.out.println("Salary:" + salary);
   }
}
</pre>
<p>As mentioned previously in this tutorial, processing starts from the main method. Therefore, in order for us to run this Employee class there should be a main method and objects should be created. We will be creating a separate class for these tasks.</p>
<p>Following is the <i>EmployeeTest</i> class, which creates two instances of the class Employee and invokes the methods for each object to assign values for each variable.</p>
<p>Save the following code in EmployeeTest.java file.</p>
<pre class="prettyprint notranslate tryit" title="employee">
import java.io.*;
public class EmployeeTest {

   public static void main(String args[]) {
      /* Create two objects using constructor */
      Employee empOne = new Employee("James Smith");
      Employee empTwo = new Employee("Mary Anne");

      // Invoking methods for each object created
      empOne.empAge(26);
      empOne.empDesignation("Senior Software Engineer");
      empOne.empSalary(1000);
      empOne.printEmployee();

      empTwo.empAge(21);
      empTwo.empDesignation("Software Engineer");
      empTwo.empSalary(500);
      empTwo.printEmployee();
   }
}
</pre>
<p>Now, compile both the classes and then run <i>EmployeeTest</i> to see the result as follows &minus;</p>
<h3>Output</h3>
<pre class="result notranslate">
C:\&gt; javac Employee.java
C:\&gt; javac EmployeeTest.java
C:\&gt; java EmployeeTest
Name:James Smith
Age:26
Designation:Senior Software Engineer
Salary:1000.0
Name:Mary Anne
Age:21
Designation:Software Engineer
Salary:500.0
</pre>
<h2>What is Next?</h2>
<p>In the next session, we will discuss the basic data types in Java and how they can be used when developing Java applications.</p>
<hr />
</div>
                

          
</asp:Content>

