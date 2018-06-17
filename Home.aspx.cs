using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        
        if (!this.IsPostBack)
        {
            string ltmessage = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM UserActivation WHERE ActivationCode = @ActivationCode"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                        cmd.Connection = con;
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                        if (rowsAffected == 1)
                        {
                            // this.ltMessage.Visible = true;
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('activation successful please login');", true);
                        }
                        else
                        {
                            //this.ltMessage.Visible = true;
                            //ltmessage = "invalid activation code";
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('invalid activation code');", true);
                        }
                       
                    }
                }
            }
        }

    }

    protected void signup_Click(object sender, ImageClickEventArgs e)
    {
        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Insert_User"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", username.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", TxtMailid.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", password.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
            string message = string.Empty;
            switch (userId)
            {
                case -1:
                    message = "Username already exists.\\nPlease choose a different username.";
                    break;
                case -2:
                    message = "Supplied email address has already been used.";
                    break;
                default:
                    message = "Registration successful. Activation email has been sent.";
                    SendActivationEmail(userId);
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }
    }

    private void SendActivationEmail(int userId)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string activationCode = Guid.NewGuid().ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO userActivation VALUES(@UserId, @ActivationCode)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage("saisrineha@gmail.com", TxtMailid.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + username.Text.Trim() + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "CS_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("saisrineha@gmail.com", "neha2396");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }

    }
     protected void btnReset_Click(object sender, EventArgs e)
   {
       this.username.Text = null;
       this.TxtMailid.Text = null;
       this.password.Text = null; 
      
   }


    protected void signin_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=NEHA\SQLEXPRESS;Initial Catalog=virtual_tutor;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("vr_login", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@username", Lg_username.Text);
        cmd1.Parameters.AddWithValue("@password", Lg_password.Text);

        conn.Open();


        SqlDataAdapter adapter = new SqlDataAdapter(cmd1);
        DataSet dsloginstudent = new DataSet();
        adapter.Fill(dsloginstudent,"login_table");
        Session["username"] = Lg_username.Text;


        if (dsloginstudent.Tables[0].Rows.Count > 0)
        {
            int errorcode;
            errorcode = (int)dsloginstudent.Tables[0].Rows[0]["errcode"];
            if (errorcode == 200)
            {
                Response.Redirect("WelcomeUser.aspx");

            }
            else
            {

                Page.ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + (string)dsloginstudent.Tables[0].Rows[0]["errmsg"].ToString() + "')</script>");
            }
        }
        conn.Close();
       
    }
   
}
