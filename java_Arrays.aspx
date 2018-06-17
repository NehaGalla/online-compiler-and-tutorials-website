
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_Arrays.aspx.cs" Inherits="java_Arrays" %>


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
     <div class="Arrays" style="padding-left:350px;padding-top:100px;position:absolute">
         <h2>Arrays</h2>
         <hr />
<p>Java provides a data structure, the <b>array</b>, which stores a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.</p>
<p>Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables.</p>
<p>This tutorial introduces how to declare array variables, create arrays, and process arrays using indexed variables.</p>
<h2>Declaring Array Variables</h2>
<p>To use an array in a program, you must declare a variable to reference the array, and you must specify the type of array the variable can reference. Here is the syntax for declaring an array variable &minus;</p>
<h3>Syntax</h3>
<pre class="result notranslate">
dataType[] arrayRefVar;   // preferred way.
or
dataType arrayRefVar[];  // works but not preferred way.
</pre>
<p><b>Note</b> &minus; The style <b>dataType[] arrayRefVar</b> is preferred. The style <b>dataType arrayRefVar[]</b> comes from the C/C&plus;&plus; language and was adopted in Java to accommodate C/C&plus;&plus; programmers.</p>
<h3>Example</h3>
<p>The following code snippets are examples of this syntax &minus;</p>
<pre class="prettyprint notranslate">
double[] myList;   // preferred way.
or
double myList[];   // works but not preferred way.
</pre>
<h2>Creating Arrays</h2>
<p>You can create an array by using the new operator with the following syntax &minus;</p>
<h3>Syntax</h3>
<pre class="result notranslate">
arrayRefVar = new dataType[arraySize];
</pre>
<p>The above statement does two things &minus;</p>
<ul class="list">
<li><p>It creates an array using new dataType[arraySize].</p></li>
<li><p>It assigns the reference of the newly created array to the variable arrayRefVar.</p></li>
</ul>
<p>Declaring an array variable, creating an array, and assigning the reference of the array to the variable can be combined in one statement, as shown below &minus;</p>
<pre class="result notranslate">
dataType[] arrayRefVar = new dataType[arraySize];
</pre>
<p>Alternatively you can create arrays as follows &minus;</p>
<pre class="result notranslate">
dataType[] arrayRefVar = {value0, value1, ..., valuek};
</pre>
<p>The array elements are accessed through the <b>index</b>. Array indices are 0-based; that is, they start from 0 to <b>arrayRefVar.length-1</b>.</p> 
<h3>Example</h3>
<p>Following statement declares an array variable, myList, creates an array of 10 elements of double type and assigns its reference to myList &minus;</p>
<pre class="prettyprint notranslate">
double[] myList = new double[10];
</pre>
<p>Following picture represents array myList. Here, myList holds ten double values and the indices are from 0 to 9.</p>
<img src="/java/images/java_array.jpg" alt="Java Array" />
<h2>Processing Arrays</h2>
<p>When processing array elements, we often use either <b>for</b> loop or <b>foreach</b> loop because all of the elements in an array are of the same type and the size of the array is known.</p>
<h3>Example</h3>
<p>Here is a complete example showing how to create, initialize, and process arrays &minus;</p>
<pre class="prettyprint notranslate tryit">
public class TestArray {

   public static void main(String[] args) {
      double[] myList = {1.9, 2.9, 3.4, 3.5};

      // Print all the array elements
      for (int i = 0; i &lt; myList.length; i++) {
         System.out.println(myList[i] + " ");
      }
     
      // Summing all elements
      double total = 0;
      for (int i = 0; i &lt; myList.length; i++) {
         total += myList[i];
      }
      System.out.println("Total is " + total);
      
      // Finding the largest element
      double max = myList[0];
      for (int i = 1; i &lt; myList.length; i++) {
         if (myList[i] &gt; max) max = myList[i];
      }
      System.out.println("Max is " + max);  
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
1.9
2.9
3.4
3.5
Total is 11.7
Max is 3.5
</pre>
<h2>The foreach Loops</h2>
<p>JDK 1.5 introduced a new for loop known as foreach loop or enhanced for loop, which enables you to traverse the complete array sequentially without using an index variable.</p>
<h3>Example</h3>
<p>The following code displays all the elements in the array myList &minus;</p>
<pre class="prettyprint notranslate tryit">
public class TestArray {

   public static void main(String[] args) {
      double[] myList = {1.9, 2.9, 3.4, 3.5};

      // Print all the array elements
      for (double element: myList) {
         System.out.println(element);
      }
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
1.9
2.9
3.4
3.5
</pre>
<h2>Passing Arrays to Methods</h2>
<p>Just as you can pass primitive type values to methods, you can also pass arrays to methods. For example, the following method displays the elements in an <b>int</b> array &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
public static void printArray(int[] array) {
   for (int i = 0; i &lt; array.length; i++) {
      System.out.print(array[i] + " ");
   }
}
</pre>
<p>You can invoke it by passing an array. For example, the following statement invokes the printArray method to display 3, 1, 2, 6, 4, and 2 &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
printArray(new int[]{3, 1, 2, 6, 4, 2});
</pre>
<h2>Returning an Array from a Method</h2>
<p>A method may also return an array. For example, the following method returns an array that is the reversal of another array &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
public static int[] reverse(int[] list) {
   int[] result = new int[list.length];

   for (int i = 0, j = result.length - 1; i &lt; list.length; i++, j--) {
      result[j] = list[i];
   }
   return result;
}
</pre>
<h2>The Arrays Class</h2>
<p>The java.util.Arrays class contains various static methods for sorting and searching arrays, comparing arrays, and filling array elements. These methods are overloaded for all primitive types.</p>
<table class="table table-bordered">
<tr>
<th>Sr.No.</th>
<th style="text-align:center;">Method &amp; Description</th>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">1</td>
<td><p><b>public static int binarySearch(Object[] a, Object key)</b></p>
<p>Searches the specified array of Object ( Byte, Int , double, etc.) for the specified value using the binary search algorithm. The array must be sorted prior to making this call. This returns index of the search key, if it is contained in the list; otherwise, it returns ( – (insertion point &plus; 1)).</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">2</td>
<td><p><b>public static boolean equals(long[] a, long[] a2)</b></p>
<p>Returns true if the two specified arrays of longs are equal to one another. Two arrays are considered equal if both arrays contain the same number of elements, and all corresponding pairs of elements in the two arrays are equal. This returns true if the two arrays are equal. Same method could be used by all other primitive data types (Byte, short, Int, etc.)</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">3</td>
<td><p><b>public static void fill(int[] a, int val)</b></p>
<p>Assigns the specified int value to each element of the specified array of ints. The same method could be used by all other primitive data types (Byte, short, Int, etc.)</p>
</td>
</tr>
<tr>
<td style="text-align:center; vertical-align:middle;">4</td>
<td><p><b>public static void sort(Object[] a)</b></p>
<p>Sorts the specified array of objects into an ascending order, according to the natural ordering of its elements. The same method could be used by all other primitive data types ( Byte, short, Int, etc.)</p>
</td>
</tr>
</table>
</div>
                

          
</asp:Content>

