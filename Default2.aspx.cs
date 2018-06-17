using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        { 
        string szMgwGCCPath = @"F:\MinGW\bin"; // Example of location
        string szArguments = "gcc -o hello.exe hello.c"; // Example of arguments
        ProcessStartInfo gccStartInfo = new ProcessStartInfo(szMgwGCCPath, szArguments);
          
            gccStartInfo.RedirectStandardOutput = true;

            gccStartInfo.RedirectStandardError = true;
            gccStartInfo.UseShellExecute = false;
            gccStartInfo.CreateNoWindow = false;

        // Now we create a process, assign its ProcessStartInfo and start it
        System.Diagnostics.Process proc = new System.Diagnostics.Process();

        proc.StartInfo = gccStartInfo;
        proc.Start();
        // Get the output into a string
       
            while (!proc.StandardError.EndOfStream)
        {
            string line = proc.StandardError.ReadLine();
            TextBox1.Text = "error"+ line;
        }
            // Display the command output.
            while (!proc.StandardOutput.EndOfStream)
            {
                string result = proc.StandardOutput.ReadToEnd();
               TextBox2.Text="OUTPUT:" +result; 
                
            }
        
           
           
        }
    
        catch (Exception objException)
        {
            TextBox2.Text = "error"+objException; // Log the exception
        }

        // 
        //ExecuteCommandSync();
    }
     /* public void ExecuteCommandSync()
    {
        string command;
       command = "-o a hello.c";
        try
        {
            // create the ProcessStartInfo using "cmd" as the program to be run,
            // and "/c " as the parameters.
            // Incidentally, /c tells cmd that we want it to execute the command that follows,
            // and then exit.
            System.Diagnostics.ProcessStartInfo procStartInfo =
                new System.Diagnostics.ProcessStartInfo("cmd", "/c " + command);

            procStartInfo.WorkingDirectory = @"F:\MinGW\bin";
            procStartInfo.RedirectStandardOutput = true;
            procStartInfo.RedirectStandardError = true;
            procStartInfo.UseShellExecute = false;
            procStartInfo.CreateNoWindow = false;

            // Now we create a process, assign its ProcessStartInfo and start it
            System.Diagnostics.Process proc = new System.Diagnostics.Process();
           
            proc.StartInfo = procStartInfo;
          proc.StartInfo.RedirectStandardInput = true;
            proc.Start();
            // Get the output into a string
           string result = proc.StandardOutput.ReadToEnd();

            while(!proc.StandardError.EndOfStream)
            {
                string line = proc.StandardError.ReadLine();
                TextBox1.Text = line;
            }
            // Display the command output.
          TextBox2.Text=result;
        }
        catch (Exception objException)
        {
            TextBox2.Text = "error"+objException; // Log the exception
        }
    }*/

    protected void Button2_Click(object sender, EventArgs e)
    {
        ExecuteCommandSync2();
    }
        public void ExecuteCommandSync2()
    {
        string command;
        command = "hello.exe";
        try
        {
            // create the ProcessStartInfo using "cmd" as the program to be run,
            // and "/c " as the parameters.
            // Incidentally, /c tells cmd that we want it to execute the command that follows,
            // and then exit.
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
        catch (Exception objException)
        {
            TextBox2.Text = "error" + objException; // Log the exception
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        File.WriteAllText(@"F:\MinGW\bin\temp.c", TextBox1.Text);
    }
}

