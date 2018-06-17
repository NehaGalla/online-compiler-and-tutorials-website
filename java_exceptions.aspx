
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_exceptions.aspx.cs" Inherits="java_exceptions" %>


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
     <div class="home" style="padding-left:350px;padding-top:100px;position:absolute">
         <p>An exception (or exceptional event) is a problem that arises during the execution of a program. When an <b>Exception</b> occurs the normal flow of the program is disrupted and the program/Application terminates abnormally, which is not recommended, therefore, these exceptions are to be handled.</p>
<p>An exception can occur for many different reasons. Following are some scenarios where an exception occurs.</p>
<ul class="list">
<li><p>A user has entered an invalid data.</p></li>
<li><p>A file that needs to be opened cannot be found.</p></li>
<li><p>A network connection has been lost in the middle of communications or the JVM has run out of memory.</p></li>
</ul>
<p>Some of these exceptions are caused by user error, others by programmer error, and others by physical resources that have failed in some manner.</p>
<p>Based on these, we have three categories of Exceptions. You need to understand them to know how exception handling works in Java.</p>
<ul class="list">
<li><p><b>Checked exceptions</b> &minus; A checked exception is an exception that occurs at the compile time, these are also called as compile time exceptions. These exceptions cannot simply be ignored at the time of compilation, the programmer should take care of (handle) these exceptions.</p></li>
</ul>
<p>For example, if you use <b>FileReader</b> class in your program to read data from a file, if the file specified in its constructor doesn't exist, then a <i>FileNotFoundException</i> occurs, and the compiler prompts the programmer to handle the exception.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
import java.io.File;
import java.io.FileReader;

public class FilenotFound_Demo {

   public static void main(String args[]) {		
      File file = new File("E://file.txt");
      FileReader fr = new FileReader(file); 
   }
}
</pre>
<p>If you try to compile the above program, you will get the following exceptions.</p>
<h3>Output</h3>
<pre class="result notranslate">
C:\&gt;javac FilenotFound_Demo.java
FilenotFound_Demo.java:8: error: unreported exception FileNotFoundException; must be caught or declared to be thrown
      FileReader fr = new FileReader(file);
                      ^
1 error
</pre>
<p><b>Note</b> &minus; Since the methods <b>read()</b> and <b>close()</b> of FileReader class throws IOException, you can observe that the compiler notifies to handle IOException, along with FileNotFoundException.</p>
<ul class="list">
<li><p><b>Unchecked exceptions</b> &minus; An unchecked exception is an exception that occurs at the time of execution. These are also called as <b>Runtime Exceptions</b>. These include programming bugs, such as logic errors or improper use of an API. Runtime exceptions are ignored at the time of compilation.</p></li>
</ul>
<p>For example, if you have declared an array of size 5 in your program, and trying to call the 6<sup>th</sup> element of the array then an <i>ArrayIndexOutOfBoundsExceptionexception</i> occurs.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class Unchecked_Demo {
   
   public static void main(String args[]) {
      int num[] = {1, 2, 3, 4};
      System.out.println(num[5]);
   }
}
</pre>
<p>If you compile and execute the above program, you will get the following exception.</p>
<h3>Output</h3>
<pre class="result notranslate">
Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: 5
	at Exceptions.Unchecked_Demo.main(Unchecked_Demo.java:8)
</pre>
<ul class="list">
<li><p><b>Errors</b> &minus; These are not exceptions at all, but problems that arise beyond the control of the user or the programmer. Errors are typically ignored in your code because you can rarely do anything about an error. For example, if a stack overflow occurs, an error will arise. They are also ignored at the time of compilation.</p></li>
</ul>
<h2>Exception Hierarchy</h2>
<p>All exception classes are subtypes of the java.lang.Exception class. The exception class is a subclass of the Throwable class. Other than the exception class there is another subclass called Error which is derived from the Throwable class.</p>
<p>Errors are abnormal conditions that happen in case of severe failures, these are not handled by the Java programs. Errors are generated to indicate errors generated by the runtime environment. Example: JVM is out of memory. Normally, programs cannot recover from errors.</p>
<p>The Exception class has two main subclasses: IOException class and RuntimeException Class.</p>
<img src="/java/images/exceptions1.jpg" alt="Exceptions1" />
<p>Following is a list of most common checked and unchecked <a href="/java/java_builtin_exceptions.htm">Java's Built-in Exceptions</a>.</p>
<h2>Exceptions Methods</h2>
<p>Following is the list of important methods available in the Throwable class.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public String getMessage()</b></p>
<p>Returns a detailed message about the exception that has occurred. This message is initialized in the Throwable constructor.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public Throwable getCause()</b></p>
<p>Returns the cause of the exception as represented by a Throwable object.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public String toString()</b></p>
<p>Returns the name of the class concatenated with the result of getMessage().</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public void printStackTrace()</b></p>
<p>Prints the result of toString() along with the stack trace to System.err, the error output stream.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">5</td>
<td><p><b>public StackTraceElement [] getStackTrace()</b></p>
<p>Returns an array containing each element on the stack trace. The element at index 0 represents the top of the call stack, and the last element in the array represents the method at the bottom of the call stack.</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">6</td>
<td><p><b>public Throwable fillInStackTrace()</b></p>
<p>Fills the stack trace of this Throwable object with the current stack trace, adding to any previous information in the stack trace.</p>
</td>
</tr>
</table>
<h2>Catching Exceptions</h2>
<p>A method catches an exception using a combination of the <b>try</b> and <b>catch</b> keywords. A try/catch block is placed around the code that might generate an exception. Code within a try/catch block is referred to as protected code, and the syntax for using try/catch looks like the following &minus;</p>
<h3>Syntax</h3>
<pre class="result notranslate">
try {
   // Protected code
}catch(ExceptionName e1) {
   // Catch block
}
</pre>
<p>The code which is prone to exceptions is placed in the try block. When an exception occurs, that exception occurred is handled by catch block associated with it. Every try block should be immediately followed either by a catch block or finally block.</p>
<p>A catch statement involves declaring the type of exception you are trying to catch. If an exception occurs in protected code, the catch block (or blocks) that follows the try is checked. If the type of exception that occurred is listed in a catch block, the exception is passed to the catch block much as an argument is passed into a method parameter.</p>
<h3>Example</h3>
<p>The following is an array declared with 2 elements. Then the code tries to access the 3<sup>rd</sup> element of the array which throws an exception.</p>
<pre class="prettyprint notranslate tryit">
// File Name : ExcepTest.java
import java.io.*;

public class ExcepTest {

   public static void main(String args[]) {
      try {
         int a[] = new int[2];
         System.out.println("Access element three :" + a[3]);
      }catch(ArrayIndexOutOfBoundsException e) {
         System.out.println("Exception thrown  :" + e);
      }
      System.out.println("Out of the block");
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Exception thrown  :java.lang.ArrayIndexOutOfBoundsException: 3
Out of the block
</pre>
<h2>Multiple Catch Blocks</h2>
<p>A try block can be followed by multiple catch blocks. The syntax for multiple catch blocks looks like the following &minus;</p>
<h3>Syntax</h3>
<pre class="result notranslate">
try {
   // Protected code
}catch(ExceptionType1 e1) {
   // Catch block
}catch(ExceptionType2 e2) {
   // Catch block
}catch(ExceptionType3 e3) {
   // Catch block
}
</pre>
<p>The previous statements demonstrate three catch blocks, but you can have any number of them after a single try. If an exception occurs in the protected code, the exception is thrown to the first catch block in the list. If the data type of the exception thrown matches ExceptionType1, it gets caught there. If not, the exception passes down to the second catch statement. This continues until the exception either is caught or falls through all catches, in which case the current method stops execution and the exception is thrown down to the previous method on the call stack.</p>
<h3>Example</h3>
<p>Here is code segment showing how to use multiple try/catch statements.</p>
<pre class="prettyprint notranslate">
try {
   file = new FileInputStream(fileName);
   x = (byte) file.read();
}catch(IOException i) {
   i.printStackTrace();
   return -1;
}catch(FileNotFoundException f) // Not valid! {
   f.printStackTrace();
   return -1;
}
</pre>
<h2>Catching Multiple Type of Exceptions</h2>
<p>Since Java 7, you can handle more than one exception using a single catch block, this feature simplifies the code. Here is how you would do it &minus;</p>
<pre class="result notranslate">
catch (IOException|FileNotFoundException ex) {
   logger.log(ex);
   throw ex;
</pre>
<h2>The Throws/Throw Keywords</h2>
<p>If a method does not handle a checked exception, the method must declare it using the <b>throws</b> keyword. The throws keyword appears at the end of a method's signature.</p>
<p>You can throw an exception, either a newly instantiated one or an exception that you just caught, by using the <b>throw</b> keyword.</p>
<p>Try to understand the difference between throws and throw keywords, <i>throws</i> is used to postpone the handling of a checked exception and <i>throw</i> is used to invoke an exception explicitly.</p>
<p>The following method declares that it throws a RemoteException &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
import java.io.*;
public class className {

   public void deposit(double amount) throws RemoteException {
      // Method implementation
      throw new RemoteException();
   }
   // Remainder of class definition
}
</pre>
<p>A method can declare that it throws more than one exception, in which case the exceptions are declared in a list separated by commas. For example, the following method declares that it throws a RemoteException and an InsufficientFundsException &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
import java.io.*;
public class className {

   public void withdraw(double amount) throws RemoteException, 
      InsufficientFundsException {
      // Method implementation
   }
   // Remainder of class definition
}
</pre>
<h2>The Finally Block</h2>
<p>The finally block follows a try block or a catch block. A finally block of code always executes, irrespective of occurrence of an Exception.</p>
<p>Using a finally block allows you to run any cleanup-type statements that you want to execute, no matter what happens in the protected code.</p>
<p>A finally block appears at the end of the catch blocks and has the following syntax &minus;</p>
<h3>Syntax</h3>
<pre class="result notranslate">
try {
   // Protected code
}catch(ExceptionType1 e1) {
   // Catch block
}catch(ExceptionType2 e2) {
   // Catch block
}catch(ExceptionType3 e3) {
   // Catch block
}finally {
   // The finally block always executes.
}
</pre>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
public class ExcepTest {

   public static void main(String args[]) {
      int a[] = new int[2];
      try {
         System.out.println("Access element three :" + a[3]);
      }catch(ArrayIndexOutOfBoundsException e) {
         System.out.println("Exception thrown  :" + e);
      }finally {
         a[0] = 6;
         System.out.println("First element value: " + a[0]);
         System.out.println("The finally statement is executed");
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Exception thrown  :java.lang.ArrayIndexOutOfBoundsException: 3
First element value: 6
The finally statement is executed
</pre>
<p>Note the following &minus;</p>
<ul class="list">
<li><p>A catch clause cannot exist without a try statement.</p></li>
<li><p>It is not compulsory to have finally clauses whenever a try/catch block is present.</p></li>
<li><p>The try block cannot be present without either catch clause or finally clause.</p></li>
<li><p>Any code cannot be present in between the try, catch, finally blocks.</p></li>
</ul>
<h2>The try-with-resources</h2>
<p>Generally, when we use any resources like streams, connections, etc. we have to close them explicitly using finally block. In the following program, we are reading data from a file using <b>FileReader</b> and we are closing it using finally block.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class ReadData_Demo {

   public static void main(String args[]) {
      FileReader fr = null;		
      try {
         File file = new File("file.txt");
         fr = new FileReader(file); char [] a = new char[50];
         fr.read(a);   // reads the content to the array
         for(char c : a)
         System.out.print(c);   // prints the characters one by one
      }catch(IOException e) {
         e.printStackTrace();
      }finally {
         try {
            fr.close();
         }catch(IOException ex) {		
            ex.printStackTrace();
         }
      }
   }
}
</pre>
<p><b>try-with-resources</b>, also referred as <b>automatic resource management</b>, is a new exception handling mechanism that was introduced in Java 7, which automatically closes the resources used within the try catch block.</p>
<p>To use this statement, you simply need to declare the required resources within the parenthesis, and the created resource will be closed automatically at the end of the block. Following is the syntax of try-with-resources statement.</p>
<h3>Syntax</h3>
<pre class ="result notranslate">
try(FileReader fr = new FileReader("file path")) {
   // use the resource
   }catch() {
      // body of catch 
   }
}
</pre>
<p>Following is the program that reads the data in a file using try-with-resources statement.</p>
<h3>Example</h3>
<pre class ="prettyprint notranslate">
import java.io.FileReader;
import java.io.IOException;

public class Try_withDemo {

   public static void main(String args[]) {
      try(FileReader fr = new FileReader("E://file.txt")) {
         char [] a = new char[50];
         fr.read(a);   // reads the contentto the array
         for(char c : a)
         System.out.print(c);   // prints the characters one by one
      }catch(IOException e) {
         e.printStackTrace();
      }
   }
}
</pre>
<p>Following points are to be kept in mind while working with try-with-resources statement.</p>
<ul class="list">
<li><p>To use a class with try-with-resources statement it should implement <b>AutoCloseable</b> interface and the <b>close()</b> method of it gets invoked automatically at runtime.</p></li>
<li><p>You can declare more than one class in try-with-resources statement.</p></li>
<li><p>While you declare multiple classes in the try block of try-with-resources statement these classes are closed in reverse order.</p></li>
<li><p>Except the declaration of resources within the parenthesis everything is the same as normal try/catch block of a try block.</p></li>
<li><p>The resource declared in try gets instantiated just before the start of the try-block.</p></li>
<li><p>The resource declared at the try block is implicitly declared as final.</p></li>
</ul>
<h2>User-defined Exceptions</h2>
<p>You can create your own exceptions in Java. Keep the following points in mind when writing your own exception classes &minus;</p>
<ul class="list">
<li><p>All exceptions must be a child of Throwable.</p></li>
<li><p>If you want to write a checked exception that is automatically enforced by the Handle or Declare Rule, you need to extend the Exception class.</p></li>
<li><p>If you want to write a runtime exception, you need to extend the RuntimeException class.</p></li>
</ul>
<p>We can define our own Exception class as below &minus;</p>
<pre class="result notranslate">
class MyException extends Exception {
}
</pre>
<p>You just need to extend the predefined <b>Exception</b> class to create your own Exception. These are considered to be checked exceptions. The following <b>InsufficientFundsException</b> class is a user-defined exception that extends the Exception class, making it a checked exception. An exception class is like any other class, containing useful fields and methods.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate" id="exception">
// File Name InsufficientFundsException.java
import java.io.*;

public class InsufficientFundsException extends Exception {
   private double amount;
   
   public InsufficientFundsException(double amount) {
      this.amount = amount;
   }
   
   public double getAmount() {
      return amount;
   }
}
</pre>
<p>To demonstrate using our user-defined exception, the following CheckingAccount class contains a withdraw() method that throws an InsufficientFundsException.</p>
<pre class="prettyprint notranslate" id="account">
// File Name CheckingAccount.java
import java.io.*;

public class CheckingAccount {
   private double balance;
   private int number;
   
   public CheckingAccount(int number) {
      this.number = number;
   }
   
   public void deposit(double amount) {
      balance += amount;
   }
   
   public void withdraw(double amount) throws InsufficientFundsException {
      if(amount &lt;= balance) {
         balance -= amount;
      }else {
         double needs = amount - balance;
         throw new InsufficientFundsException(needs);
      }
   }
   
   public double getBalance() {
      return balance;
   }
   
   public int getNumber() {
      return number;
   }
}
</pre>
<p>The following BankDemo program demonstrates invoking the deposit() and withdraw() methods of CheckingAccount.</p>
<pre class="prettyprint notranslate tryit" title="exception, account">
// File Name BankDemo.java
public class BankDemo {

   public static void main(String [] args) {
      CheckingAccount c = new CheckingAccount(101);
      System.out.println("Depositing $500...");
      c.deposit(500.00);
      
      try {
         System.out.println("\nWithdrawing $100...");
         c.withdraw(100.00);
         System.out.println("\nWithdrawing $600...");
         c.withdraw(600.00);
      }catch(InsufficientFundsException e) {
         System.out.println("Sorry, but you are short $" + e.getAmount());
         e.printStackTrace();
      }
   }
}
</pre>
<p>Compile all the above three files and run BankDemo. This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Depositing $500...

Withdrawing $100...

Withdrawing $600...
Sorry, but you are short $200.0
InsufficientFundsException
         at CheckingAccount.withdraw(CheckingAccount.java:25)
         at BankDemo.main(BankDemo.java:13)
</pre>
<h2>Common Exceptions</h2>
<p>In Java, it is possible to define two catergories of Exceptions and Errors.</p>
<ul class="list">
<li><p><b>JVM Exceptions</b> &minus; These are exceptions/errors that are exclusively or logically thrown by the JVM. Examples: NullPointerException, ArrayIndexOutOfBoundsException, ClassCastException.</p></li>
<li><p><b>Programmatic Exceptions</b> &minus; These exceptions are thrown explicitly by the application or the API programmers. Examples: IllegalArgumentException, IllegalStateException.</p></li>
</ul>
<hr />
</div>
                

          
</asp:Content>

