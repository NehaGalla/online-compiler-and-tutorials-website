using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.CodeDom.Compiler;
using System.Diagnostics;
using System.IO;
   
public partial class codearea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack && DDLoptions.SelectedItem.Text == "JAVA")
        {
            //aloadjava();
        }
        else if (!IsPostBack && DDLoptions.SelectedItem.Text== "C" || DDLoptions.SelectedItem.Text=="C++"|| DDLoptions.SelectedItem.Text == "JAVA")
        {
            emptytext();
           // loadjava();


        }else if(!IsPostBack && DDLoptions.SelectedItem.Text=="JAVA")
        {

        }
        
    }


    public void loadjava()
    {
        string text = "import java.util.*;" + "\n"

           + "import java.lang.*;" + "\n" +
       "import java.io.*;" + "\n" + "\n" + "\n" +

"/* Name of the class has to be Main only if the class is public. */" + "\n" +
"class hello" + "\n" +
 "  {" + "\n" +
       "public static void main(String[] args) throws java.lang.Exception" + "\n" +
       "{" + "\n" +
     "  // your code goes here" + "\n" +
       "}" + "\n" +
   "}";
        if (DDLoptions.SelectedItem.Text == "JAVA")
        {
            TextBox1.Text = text;
        }
    }
    public void emptytext()
    {

        if (DDLoptions.SelectedItem.Text == "C++")
        {
            TextBox1.Text = null;
        }

    }
    protected void compile_Click(object sender, EventArgs e)
    {
        if (DDLoptions.SelectedItem.Text == "C")
        {
            ccompile();

        }
        else if (DDLoptions.SelectedItem.Text == "C++")
        {
            cppcompile();
        }
        else if (DDLoptions.SelectedItem.Text == "JAVA")
        {
            jcompile();
        }
    }
    public void ccompile()
    {
        try
        {
            Process p = new Process();
            p.StartInfo.WorkingDirectory = @"F:\\MinGW\\bin";
            p.StartInfo.FileName = @"F:\\MinGW\\bin\\mingw32-gcc.exe";
            p.StartInfo.Arguments = "temp.c -o temp.exe";
            p.StartInfo.UseShellExecute = false;    
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;


            p.Start();

            if (!p.StandardError.EndOfStream)
            {
                string error = p.StandardError.ReadToEnd();
                TextBox2.Text = error.ToString();
            }
            else
            {
                TextBox2.Text = "compilation successfull";
            }


            p.WaitForExit();

        }
        catch (Exception ex)
        {
            TextBox2.Text = "error" + ex;
        }

    }
    public void crun()
    {
        string command;
        command = "temp.exe";
        try
        {

            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = true;
            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();

            proc.StartInfo = procStartInfo;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardError = true;

            proc.Start();

            // Get the output into a string
                


            string result = proc.StandardOutput.ReadToEnd();
            TextBox2.Text = result;

        }
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }
    public void cppcompile()
    {
        string command;
        command = "g++ hello.cpp -o hello.exe";
        try
        {

            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = true;
            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();

            proc.StartInfo = procStartInfo;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardError = true;

            proc.Start();

            // Get the output into a string



            //string result = proc.StandardOutput.ReadToEnd();
            //TextBox2.Text = result;
            if (!proc.StandardError.EndOfStream)
            {
                string result = proc.StandardError.ReadToEnd();
                TextBox2.Text = result.ToString();
            }
            else
            {
                TextBox2.Text = "compilation successfull";
            }


        }
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }
    public void cpprun()
    {
        string command;
        command = "hello.exe";
        try
        {

            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = true;
            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();

            proc.StartInfo = procStartInfo;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardError = true;

            proc.Start();

            // Get the output into a string



            string result = proc.StandardOutput.ReadToEnd();
            TextBox2.Text = result;



        }
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }
    public void jcompile()
    {
        string command;
        command = "javac hello.java";
        try
        {

            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = true;
            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();

            proc.StartInfo = procStartInfo;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardError = true;

            proc.Start();

            // Get the output into a string



            //string result = proc.StandardOutput.ReadToEnd();
            //TextBox2.Text = result;
            if (!proc.StandardError.EndOfStream)
            {
                string result = proc.StandardError.ReadToEnd();
                TextBox2.Text = result.ToString();
            }
            else
            {
                TextBox2.Text = "compilation successfull";
            }



        }
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }
    public void jrun()
    {
        string command;
        command = "java hello";
        try
        {

            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = true;
            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();

            proc.StartInfo = procStartInfo;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardError = true;

            proc.Start();

            // Get the output into a string



            string result = proc.StandardOutput.ReadToEnd();
            TextBox2.Text = result;



        }
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }
    protected void run_Click(object sender, EventArgs e)
    {
        if (DDLoptions.SelectedItem.Text == "C")
        {
            crun();
        }
        if (DDLoptions.SelectedItem.Text == "C++")
        {
            cpprun();
        }
        if (DDLoptions.SelectedItem.Text == "JAVA")
        {
            jrun();
        }

    }


    protected void save_Click(object sender, EventArgs e)
    {
        if (DDLoptions.SelectedItem.Text == "C")
        {
            File.WriteAllText(@"F:\MinGW\bin\temp.c", TextBox1.Text);
            deleteTemp();
        }


        else if (DDLoptions.SelectedItem.Text == "C++")
        {
            File.WriteAllText(@"F:\MinGW\bin\hello.cpp", TextBox1.Text);
            deleteHello();
        }


        else if (DDLoptions.SelectedItem.Text == "JAVA")
        {
            File.WriteAllText(@"F:\hello.java", TextBox1.Text);
        }

    }
    public void deleteHello()
    {
        string command = "del hello.exe";
        System.Diagnostics.ProcessStartInfo procStartInfo =
               new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

        procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
        procStartInfo.RedirectStandardOutput = true;
        procStartInfo.UseShellExecute = false;
        procStartInfo.CreateNoWindow = false;
        // Now we create a process, assign its ProcessStartInfo and start it
        System.Diagnostics.Process proc = new System.Diagnostics.Process();

        proc.StartInfo = procStartInfo;
        proc.StartInfo.RedirectStandardInput = true;
        proc.Start();
        // Get the output into a string
        string result = proc.StandardOutput.ReadToEnd();
        // Display the command output.
        TextBox2.Text = result;
    }
    public void deleteTemp()
    {
        string command = "del temp.exe";
        System.Diagnostics.ProcessStartInfo procStartInfo =
               new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

        procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
        procStartInfo.RedirectStandardOutput = true;
        procStartInfo.UseShellExecute = false;
        procStartInfo.CreateNoWindow = false;
        // Now we create a process, assign its ProcessStartInfo and start it
        System.Diagnostics.Process proc = new System.Diagnostics.Process();

        proc.StartInfo = procStartInfo;
        proc.StartInfo.RedirectStandardInput = true;
        proc.Start();
        // Get the output into a string
        string result = proc.StandardOutput.ReadToEnd();
        // Display the command output.
        TextBox2.Text = result;
    }

}


