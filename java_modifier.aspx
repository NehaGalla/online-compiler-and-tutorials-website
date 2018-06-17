
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_modifier.aspx.cs" Inherits="java_modifier" %>


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
     <div class="modifier" style="padding-left:350px;padding-top:100px;position:absolute">
         
</div>
                
    <p>Modifiers are keywords that you add to those definitions to change their meanings. Java language has a wide variety of modifiers, including the following &minus;</p>
<ul class="list">
<li><p><a href="/java/java_access_modifiers.htm"> Java Access Modifiers</a></p></li>
<li><p><a href="/java/java_nonaccess_modifiers.htm">Non Access Modifiers</a></p></li>
</ul>
<p>To use a modifier, you include its keyword in the definition of a class, method, or variable. The modifier precedes the rest of the statement, as in the following example.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate">
<i>public</i> class className {
   // ...
}

<i>private</i> boolean myFlag;
<i>static final</i> double weeks = 9.5;
<i>protected static final</i> int BOXWIDTH = 42;

<i>public static</i> void main(String[] arguments) {
   // body of method
}
</pre>
<h2>Access Control Modifiers</h2>
<p>Java provides a number of access modifiers to set access levels for classes, variables, methods and constructors. The four access levels are &minus;</p>
<ul class="list">
<li>Visible to the package, the default. No modifiers are needed.</li>
<li>Visible to the class only (private).</li>
<li>Visible to the world (public).</li>
<li>Visible to the package and all subclasses (protected).</li>
</ul>
<h2>Non-Access Modifiers</h2>
<p>Java provides a number of non-access modifiers to achieve many other functionality.</p> 
<ul class="list">
<li><p>The <i>static</i> modifier for creating class methods and variables.</p></li>
<li><p>The <i>final</i> modifier for finalizing the implementations of classes, methods, and variables.</p></li>
<li><p>The <i>abstract</i> modifier for creating abstract classes and methods.</p></li>
<li><p>The <i>synchronized</i> and <i>volatile</i> modifiers, which are used for threads.</p></li>
</ul>
<h2>What is Next?</h2>
<p>In the next section, we will be discussing about Basic Operators used in Java Language. The chapter will give you an overview of how these operators can be used during application development.</p>
<hr />
          
</asp:Content>

