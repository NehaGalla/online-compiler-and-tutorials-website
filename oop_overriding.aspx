<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="oop_overriding.aspx.cs" Inherits="oop_overriding" %>


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
                <p>The benefit of overriding is: ability to define a behavior that's specific to the subclass type, which means a subclass can implement a parent class method based on its requirement.</p>
<p>In object-oriented terms, overriding means to override the functionality of an existing method.</p>
<h3>Example</h3>
<p>Let us look at an example.</p>
<pre class="prettyprint notranslate tryit">
class Animal {
   public void move() {
      System.out.println("Animals can move");
   }
}

class Dog extends Animal {
   public void move() {
      System.out.println("Dogs can walk and run");
   }
}

public class TestDog {

   public static void main(String args[]) {
      Animal a = new Animal();   // Animal reference and object
      Animal b = new Dog();   // Animal reference but Dog object

      a.move();   // runs the method in Animal class
      b.move();   // runs the method in Dog class
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Animals can move
Dogs can walk and run
</pre>
<p>In the above example, you can see that even though <b>b</b> is a type of Animal it runs the move method in the Dog class. The reason for this is: In compile time, the check is made on the reference type. However, in the runtime, JVM figures out the object type and would run the method that belongs to that particular object.</p>
<p>Therefore, in the above example, the program will compile properly since Animal class has the method move. Then, at the runtime, it runs the method specific for that object.</p>
<p>Consider the following example &minus;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
class Animal {
   public void move() {
      System.out.println("Animals can move");
   }
}

class Dog extends Animal {
   public void move() {
      System.out.println("Dogs can walk and run");
   }
   public void bark() {
      System.out.println("Dogs can bark");
   }
}

public class TestDog {

   public static void main(String args[]) {
      Animal a = new Animal();   // Animal reference and object
      Animal b = new Dog();   // Animal reference but Dog object

      a.move();   // runs the method in Animal class
      b.move();   // runs the method in Dog class
      b.bark();
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
TestDog.java:26: error: cannot find symbol
      b.bark();
       ^
  symbol:   method bark()
  location: variable b of type Animal
1 error
</pre>
<p>This program will throw a compile time error since b's reference type Animal doesn't have a method by the name of bark.</p>
<h2>Rules for Method Overriding</h2>
<ul class="list">
<li><p>The argument list should be exactly the same as that of the overridden method.</p></li>
<li><p>The return type should be the same or a subtype of the return type declared in the original overridden method in the superclass.</p></li>
<li><p>The access level cannot be more restrictive than the overridden method's access level. For example: If the superclass method is declared public then the overridding method in the sub class cannot be either private or protected.</p></li>
<li><p>Instance methods can be overridden only if they are inherited by the subclass.</p></li>
<li><p>A method declared final cannot be overridden.</p></li>
<li><p>A method declared static cannot be overridden but can be re-declared.</p></li>
<li><p>If a method cannot be inherited, then it cannot be overridden.</p></li>
<li><p>A subclass within the same package as the instance's superclass can override any superclass method that is not declared private or final.</p></li>
<li><p>A subclass in a different package can only override the non-final methods declared public or protected.</p></li>
<li><p>An overriding method can throw any uncheck exceptions, regardless of whether the overridden method throws exceptions or not. However, the overriding method should not throw checked exceptions that are new or broader than the ones declared by the overridden method. The overriding method can throw narrower or fewer exceptions than the overridden method.</p></li>
<li><p>Constructors cannot be overridden.</p></li>
</ul>
<h2>Using the super Keyword</h2>
<p>When invoking a superclass version of an overridden method the <b>super</b> keyword is used.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
class Animal {
   public void move() {
      System.out.println("Animals can move");
   }
}

class Dog extends Animal {
   public void move() {
      super.move();   // invokes the super class method
      System.out.println("Dogs can walk and run");
   }
}

public class TestDog {

   public static void main(String args[]) {
      Animal b = new Dog();   // Animal reference but Dog object
      b.move();   // runs the method in Dog class
   }
}
</pre>
<p>This will produce the following result &minus;</p><h3>Output</h3>
<pre class="result notranslate">
Animals can move
Dogs can walk and run
</pre>
<hr />
 </div>

                

          
</asp:Content>
