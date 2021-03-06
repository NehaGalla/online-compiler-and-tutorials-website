﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class assessment : System.Web.UI.Page
{
    string quizresponsestable = "user_responses";
    string quizquestionstable = "quiz_questions";
    string quizquestionanswertable = "question_answer";
    string quizuserreponsetable = "question_responses";
    string quizquestionoptionstable = "question_options";
    int categoryid = 0;
    int userid = 0;
    protected void Page_Load(object sender, EventArgs e)
        
    {
       
        if (!IsPostBack)
        {
            
            BindQuestions();
            Binduserid();
        }
        btnsubmit.Attributes.Add("onclick", "javascript: if ( Page_ClientValidate() ){" + btnsubmit.ClientID + ".disabled=true; " + btnsubmit.ClientID + ".value='Wait...';}" + ClientScript.GetPostBackEventReference(btnsubmit, ""));
    }

    protected void Binduserid()
    {
        string username = "neha galla";
        SqlDataReader dReader;
        SqlCommand getquizescmd = new SqlCommand("select userid from Users where username = @username");
        getquizescmd.Parameters.AddWithValue("@username", username);
        db getquizeslist = new db();
        dReader = getquizeslist.returnDataReader(getquizescmd);

        while (dReader.Read())
        {
            //get and store quizid
            quizfield.Value = dReader["userid"].ToString();
            userid = Convert.ToInt32(quizfield.Value);
        }
    }
    protected void BindQuestions()
    {
        DataTable dTable = new DataTable();
        SqlDataReader dr;


        SqlCommand getquestions = new SqlCommand("select top 30 percent * from quiz_questions order by NEWID() ");


        db getquestionslist = new db();
        dTable = getquestionslist.returnDataTable(getquestions);
        dr = getquestionslist.returnDataReader(getquestions);

        if (dTable.Rows.Count > 0)
        {

            questionsrpt.DataSource = dTable;
            questionsrpt.DataBind();
        }
        else
        {
            questionsdiv.InnerHtml = "<span style='color:#FF0000; font-size:15px;'>Nothing available at the moment</span>";
        }
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlDataReader dReader;
        string selectedanswer = "";
        string correctanswer = "";
        int questionId = 0;
        int questionscount = 0;
        int correctcount = 0;
        int wrongcount = 0;
        int success = 0;
        //int userid = 0;
        ArrayList answersList = new ArrayList();
      


        Page.Validate();
        if (Page.IsValid)
        {

            foreach (RepeaterItem item in questionsrpt.Items)
            {
                // Checking the item is a data item
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    //get the questionid
                    var hfId = item.FindControl("hfID") as HiddenField;
                    questionId = Convert.ToInt32(hfId.Value);
                    //get the categoryid

                    var catID = item.FindControl("categoryID") as HiddenField;
                    categoryid = Convert.ToInt32(catID.Value);
                    //get the submitted answer
                    var rdbList = item.FindControl("rbloptions") as RadioButtonList;
                    selectedanswer = rdbList.SelectedValue;
                    //disable to prevent submitting again
                    rdbList.Enabled = false;

                    //get the correct answer
                    SqlCommand getanswercmd = new SqlCommand("select optionid from " + quizquestionanswertable + " where questionid=@questionid");
                    getanswercmd.Parameters.AddWithValue("questionid", questionId);

                    db getanswer = new db();
                    dReader = getanswer.returnDataReader(getanswercmd);

                    if (!dReader.HasRows)
                    {
                        //can't find this question/answer
                    }
                    else
                    {
                        while (dReader.Read())
                        {
                            correctanswer = dReader["optionid"].ToString();

                        }
                    }

                    //compare both answers
                    if (selectedanswer == correctanswer)
                    {
                        correctcount++;
                        rdbList.SelectedItem.Attributes.Add("style", "color: #006400");
                    }
                    else
                    {
                        wrongcount++;
                        rdbList.SelectedItem.Attributes.Add("style", "color: #ff0000");
                        rdbList.Items.FindByValue(correctanswer).Attributes.Add("style", "color: #006400");
                       
                    }

                    //add the submitted answer to list
                    answersList.Add(new string[] { questionId.ToString(), selectedanswer });

                }
            }
            
                SqlCommand insertentrycmd = new SqlCommand("insert into " + quizresponsestable + " (userid, categoryid, correctanswers, wronganswers) values (@userid, @categoryid, @correctanswers, @wronganswers);SELECT CAST(scope_identity() AS int)");
                insertentrycmd.Parameters.AddWithValue("userid", userid);
                insertentrycmd.Parameters.AddWithValue("categoryid", categoryid);
                insertentrycmd.Parameters.AddWithValue("correctanswers", correctcount);
                insertentrycmd.Parameters.AddWithValue("wronganswers", wrongcount);


                db insertentry = new db();
                success = insertentry.ReturnIDonExecuteQuery(insertentrycmd);
            
            //display the result on screen
            if (success > 0)
            {
                foreach (string[] arr in answersList)
                {
                    SqlCommand insertresponsecmd = new SqlCommand("insert into " + quizuserreponsetable + "(responseid, questionid, optionid, categoryid) values (@responseid, @questionid, @optionid, @categoryid)");
                    insertresponsecmd.Parameters.Clear();
                    insertresponsecmd.Parameters.AddWithValue("responseid", success);
                    insertresponsecmd.Parameters.AddWithValue("questionid", arr[0].ToString());
                    insertresponsecmd.Parameters.AddWithValue("optionid", arr[1].ToString());
                    insertresponsecmd.Parameters.AddWithValue("categoryid", categoryid);

                    db insertresponses = new db();
                    insertresponses.ExecuteQuery(insertresponsecmd);
                }
               
                //detailsdiv.Visible = false;
                questionscount = correctcount + wrongcount;
                lblalert.Visible = true;

                //get the completion description from database table
                SqlDataReader Treader;
                SqlCommand getcompletiondesc = new SqlCommand("select categoryid from " + quizresponsestable + " where userid=@userid");
                getcompletiondesc.Parameters.AddWithValue("userid", userid);

                db getdesc = new db();
                Treader = getdesc.returnDataReader(getcompletiondesc);

                if (!Treader.HasRows)
                {
                    lblalert.Text = "You have answered <span style='color:#006400;'>" + correctcount + "</span> questions correctly out of " + questionscount + "<br />";
                }
                else
                {
                    while (Treader.Read())
                    {
                        string completiondesc = Treader["categoryid"].ToString();
                        lblalert.Text = "You have answered <span style='color:#006400;'>" + correctcount + "</span> questions correctly out of " + questionscount + "<br />";

                    }
                }


                btnsubmit.Visible = false;
            }
            else
            {
                lblalert.Visible = true;
                lblalert.Text = "Sorry! we could not process your request. Please try again.";
            }
        }
        else
        {
            lblalert.Visible = true;
            lblalert.Text = "Please answer all the questions!";
        }
    }
        
    
    protected void questionsrpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        int qid = 0;

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //get the questionid
            HiddenField hfl = (HiddenField)e.Item.FindControl("hfID");
            qid = Convert.ToInt32(hfl.Value);

            //get the options for this questionid
            RadioButtonList rbl = (RadioButtonList)e.Item.FindControl("rbloptions");
            DataTable qTable = new DataTable();
            SqlCommand getoptions = new SqlCommand("select id, questionoption from " + quizquestionoptionstable + " where questionid=@questionid");
            getoptions.Parameters.AddWithValue("questionid", qid);


            db getoptionslist = new db();
            qTable = getoptionslist.returnDataTable(getoptions);

            if (qTable.Rows.Count > 0)
            {
                rbl.DataSource = qTable;
                rbl.DataTextField = "questionoption";
                rbl.DataValueField = "id";
                rbl.DataBind();
            }
        }
    }

}

