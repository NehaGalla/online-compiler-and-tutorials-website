using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class help : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string subject = txtsub.Text;
        string body = txtmsg.Text;
        string recipient = txtmail.Text;
        SendEmail(recipient, subject, body);
    }
    private bool SendEmail(string recipient, string subject, string body)
    {
        MailMessage mm = new MailMessage("saisrineha@gmail.com", recipient);
        mm.Subject = subject;
        mm.Body = body;
        /*  if (fuAttachment.HasFile)
          {
              string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
              mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
          }*/
        mm.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential();
        NetworkCred.UserName = "saisrineha@gmail.com";
        NetworkCred.Password = "neha2396";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);
        return true;
    }


}