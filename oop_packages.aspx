<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_packages.aspx.cs" Inherits="oop_packages" %>


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
                <p>A <b>Package</b> can be defined as a grouping of related types (classes, interfaces, enumerations and annotations ) providing access protection and namespace management.</p>
<p>Some of the existing packages in Java are &minus;</p>
<ul class="list">
<li><p><b>java.lang</b> &minus; bundles the fundamental classes</p></li>
<li><p><b>java.io</b> &minus; classes for input , output functions are bundled in this package</p></li>
</ul>
<p>Programmers can define their own packages to bundle group of classes/interfaces, etc. It is a good practice to group related classes implemented by you so that a programmer can easily determine that the classes, interfaces, enumerations, and annotations are related.</p>
<p>Since the package creates a new namespace there won't be any name conflicts with names in other packages. Using packages, it is easier to provide access control and it is also easier to locate the related classes.</p>
<h2>Creating a Package</h2>
<p>While creating a package, you should choose a name for the package and include a <b>package</b> statement along with that name at the top of every source file that contains the classes, interfaces, enumerations, and annotation types that you want to include in the package.</p>
<p>The package statement should be the first line in the source file. There can be only one package statement in each source file, and it applies to all types in the file.</p>
<p>If a package statement is not used then the class, interfaces, enumerations, and annotation types will be placed in the current default package.</p>
<p>To compile the Java programs with package statements, you have to use -d option as shown below.</p>
<pre class="result notranslate">
javac -d Destination_folder file_name.java</pre>
<p>Then a folder with the given package name is created in the specified destination, and the compiled class files will be placed in that folder.</p>
<h3>Example</h3>
<p>Let us look at an example that creates a package called <b>animals</b>. It is a good practice to use names of packages with lower case letters to avoid any conflicts with the names of classes and interfaces.</p>
<p>Following package example contains interface named <i>animals</i> &minus;</p>
<pre class="prettyprint notranslate" id="animal">
/* File name : Animal.java */
package animals;

interface Animal {
   public void eat();
   public void travel();
}
</pre>
<p>Now, let us implement the above interface in the same package <i>animals</i> &minus;</p>
<pre class="prettyprint notranslate tryit" title="animal">
package animals;
/* File name : MammalInt.java */

public class MammalInt implements Animal {

   public void eat() {
      System.out.println("Mammal eats");
   }

   public void travel() {
      System.out.println("Mammal travels");
   } 

   public int noOfLegs() {
      return 0;
   }

   public static void main(String args[]) {
      MammalInt m = new MammalInt();
      m.eat();
      m.travel();
   }
} 
</pre>
<p>Now compile the java files as shown below &minus;</p>
<pre class="result notranslate">
$ javac -d . Animal.java 
$ javac -d . MammalInt.java
</pre>
<p>Now a package/folder with the name <b>animals</b> will be created in the current directory and these class files will be placed in it as shown below.</p>
<img src="/java/images/packages.jpg" alt="Packages" />
<p>You can execute the class file within the package and get the result as shown below.</p>
<pre class="result notranslate">
Mammal eats
Mammal travels
</pre>
<h2>The import Keyword</h2>
<p>If a class wants to use another class in the same package, the package name need not be used. Classes in the same package find each other without any special syntax.</p>
<h3>Example</h3>
<p>Here, a class named Boss is added to the payroll package that already contains Employee. The Boss can then refer to the Employee class without using the payroll prefix, as demonstrated by the following Boss class.</p>
<pre class="prettyprint notranslate">
package payroll;
public class Boss {
   public void payEmployee(Employee e) {
      e.mailCheck();
   }
}
</pre>
<p>What happens if the Employee class is not in the payroll package? The Boss class must then use one of the following techniques for referring to a class in a different package.</p>
<ul class="list">
<li>The fully qualified name of the class can be used. For example &minus;</li>
</ul>
<pre class="prettyprint notranslate">
payroll.Employee
</pre>
<ul class="list">
<li><p>The package can be imported using the import keyword and the wild card (*). For example &minus;</p></li>
</ul>
<pre class="prettyprint notranslate">
import payroll.*;
</pre>
<ul class="list">
<li>The class itself can be imported using the import keyword. For example &minus;</li>
</ul>
<pre class="prettyprint notranslate">
import payroll.Employee;
</pre>
<p><b>Note</b> &minus; A class file can contain any number of import statements. The import statements must appear after the package statement and before the class declaration.</p>
<h2>The Directory Structure of Packages</h2>
<p>Two major results occur when a class is placed in a package &minus;</p>
<ul class="list">
<li><p>The name of the package becomes a part of the name of the class, as we just discussed in the previous section.</p></li>
<li><p>The name of the package must match the directory structure where the corresponding bytecode resides.</p></li>
</ul>
<p>Here is simple way of managing your files in Java &minus;</p>
<p>Put the source code for a class, interface, enumeration, or annotation type in a text file whose name is the simple name of the type and whose extension is <b>.java</b>.</p>
<p>For example &minus;</p>
<pre class="prettyprint notranslate">
// File Name :  Car.java
package vehicle;

public class Car {
   // Class implementation.   
}
</pre>
<p>Now, put the source file in a directory whose name reflects the name of the package to which the class belongs &minus;</p>
<pre class="result notranslate">
....\vehicle\Car.java
</pre>
<p>Now, the qualified class name and pathname would be as follows &minus;</p>
<ul class="list">
<li>Class name &rarr; vehicle.Car</li>
<li>Path name &rarr; vehicle\Car.java (in windows)</li>
</ul>
<p>In general, a company uses its reversed Internet domain name for its package names.</p>
<p><b>Example</b> &minus; A company's Internet domain name is apple.com, then all its package names would start with com.apple. Each component of the package name corresponds to a subdirectory.</p>
<p><b>Example</b> &minus; The company had a com.apple.computers package that contained a Dell.java source file, it would be contained in a series of subdirectories like this &minus;</p>
<pre class="result notranslate">
....\com\apple\computers\Dell.java
</pre>
<p>At the time of compilation, the compiler creates a different output file for each class, interface and enumeration defined in it. The base name of the output file is the name of the type, and its extension is <b>.class</b>.</p>
<p>For example &minus;</p>
<pre class="prettyprint notranslate">
// File Name: Dell.java
package com.apple.computers;

public class Dell {
}

class Ups {
}
</pre>
<p>Now, compile this file as follows using -d option &minus;</p>
<pre class="result notranslate">
$javac -d . Dell.java
</pre>
<p>The files will be compiled as follows &minus;</p>
<pre class="result notranslate">
.\com\apple\computers\Dell.class
.\com\apple\computers\Ups.class
</pre>
<p>You can import all the classes or interfaces defined in <i>\com\apple\computers\</i> as follows &minus;</p>
<pre class="result notranslate">
import com.apple.computers.*;
</pre>
<p>Like the .java source files, the compiled .class files should be in a series of directories that reflect the package name. However, the path to the .class files does not have to be the same as the path to the .java source files. You can arrange your source and class directories separately, as &minus; </p>
<pre class="result notranslate">
&lt;path-one&gt;\sources\com\apple\computers\Dell.java

&lt;path-two&gt;\classes\com\apple\computers\Dell.class
</pre>
<p>By doing this, it is possible to give access to the classes directory to other programmers without revealing your sources. You also need to manage source and class files in this manner so that the compiler and the Java Virtual Machine (JVM) can find all the types your program uses.</p>
<p>The full path to the classes directory, &lt;path-two&gt;\classes, is called the class path, and is set with the CLASSPATH system variable. Both the compiler and the JVM construct the path to your .class files by adding the package name to the class path.</p>
<p>Say &lt;path-two&gt;\classes is the class path, and the package name is com.apple.computers, then the compiler and JVM will look for .class files in &lt;path-two&gt;\classes\com\apple\computers.</p>
<p>A class path may include several paths. Multiple paths should be separated by a semicolon (Windows) or colon (Unix). By default, the compiler and the JVM search the current directory and the JAR file containing the Java platform classes so that these directories are automatically in the class path.</p>
<h2>Set CLASSPATH System Variable</h2>
<p>To display the current CLASSPATH variable, use the following commands in Windows and UNIX (Bourne shell) &minus;</p>
<ul class="list">
<li>In Windows &rarr; C:\&gt; set CLASSPATH</li>
<li>In UNIX &rarr; % echo $CLASSPATH</li>
</ul>
<p>To delete the current contents of the CLASSPATH variable, use &minus;</p>
<ul class="list">
<li>In Windows &rarr; C:\&gt; set CLASSPATH =</li>
<li>In UNIX &rarr; % unset CLASSPATH; export CLASSPATH</li>
</ul>
<p>To set the CLASSPATH variable &minus;</p>
<ul class="list">
<li>In Windows &rarr; set CLASSPATH = C:\users\jack\java\classes</li>
<li>In UNIX &rarr; % CLASSPATH = /home/jack/java/classes; export CLASSPATH</li>
</ul>
<hr />
 </div>

                

          
</asp:Content>
