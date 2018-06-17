using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class WelcomeUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string username = (string)Session["username"];
        wcusername.Text = username.ToString();
    }


    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        
            Response.Redirect("Tutorials.aspx");
        
    }
    protected void Btncpp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tutorials.aspx");
    }
    protected void Btnjava_Click(object sender, EventArgs e)
    {
        Response.Redirect("Java_Home.aspx");
    }
    /*   protected void Button2_Click(object sender, EventArgs e)
       {
           Response.Redirect("Tutorials.aspx");
       }
       */
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("codearea.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("assessment.aspx");
    }
    protected void btnoop_Click(object sender, EventArgs e)
    {
        Response.Redirect("oop_home.aspx");
    }




}