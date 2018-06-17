
<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="java_FileIO.aspx.cs" Inherits="java_FileIO" %>


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
     <div class="fileio" style="padding-left:350px;padding-top:100px;position:absolute">
         <h2>Directories in Java</h2>
<p>A directory is a File which can contain a list of other files and directories. You use <b>File</b> object to create directories, to list down files available in a directory. For complete detail, check a list of all the methods which you can call on File object and what are related to directories.</p>
<h3>Creating Directories</h3>
<p>There are two useful <b>File</b> utility methods, which can be used to create directories &minus;</p>
<ul class="list">
<li><p>The <b>mkdir( )</b> method creates a directory, returning true on success and false on failure. Failure indicates that the path specified in the File object already exists, or that the directory cannot be created because the entire path does not exist yet.</p></li>
<li><p>The <b>mkdirs()</b> method creates both a directory and all the parents of the directory.</p></li>
</ul>
<p>Following example creates "/tmp/user/java/bin" directory &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate">
import java.io.File;
public class CreateDir {

   public static void main(String args[]) {
      String dirname = "/tmp/user/java/bin";
      File d = new File(dirname);
      
      // Create directory now.
      d.mkdirs();
   }
}
</pre>
<p>Compile and execute the above code to create "/tmp/user/java/bin".</p>
<p><b>Note</b> &minus; Java automatically takes care of path separators on UNIX and Windows as per conventions. If you use a forward slash (/) on a Windows version of Java, the path will still resolve correctly.</p>
<h2>Listing Directories</h2>
<p>You can use <b>list( )</b> method provided by <b>File</b> object to list down all the files and directories available in a directory as follows &minus;</p>
<p><b>Example</b></p>
<pre class="prettyprint notranslate">
import java.io.File;
public class ReadDir {

   public static void main(String[] args) {
      File file = null;
      String[] paths;
  
      try {      
         // create new file object
         file = new File("/tmp");

         // array of files and directory
         paths = file.list();

         // for each name in the path array
         for(String path:paths) {
            // prints filename and directory name
            System.out.println(path);
         }
      }catch(Exception e) {
         // if any error occurs
         e.printStackTrace();
      }
   }
}
</pre>
<p>This will produce the following result based on the directories and files available in your <b>/tmp</b> directory &minus;</p>
<p><b>Output</b></p>
<pre class="result notranslate">
test1.txt
test2.txt
ReadDir.java
ReadDir.class
</pre>
</div>
                

          
</asp:Content>

