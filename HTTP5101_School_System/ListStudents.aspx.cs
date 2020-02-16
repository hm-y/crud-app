using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//make sure your final project has these
using MySql.Data.MySqlClient;
using System.Diagnostics;


namespace HTTP5101_School_System
{
    public partial class ListStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            students_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                searchkey = student_search_textbox.Text;
            }

            string query = "select * from STUDENTS";

            if (searchkey != "")
            {
                query += " WHERE STUDENTFNAME like '%"+searchkey+"%' ";
                query += " or STUDENTLNAME like '%"+searchkey+"%' ";
                query += " or STUDENTNUMBER like '%"+searchkey+"%' ";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String,String>> rs = db.List_Query(query);
            foreach(Dictionary<String,String> row in rs)
            {
                students_result.InnerHtml += "<div class=\"listitem\">";

                string studentid = row["STUDENTID"];

                string studentnumber = row["STUDENTNUMBER"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentnumber + "</div>";

                string studentfirstname = row["STUDENTFNAME"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentfirstname + "</div>";

                string studentlastname = row["STUDENTLNAME"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentlastname + "</div>";

                students_result.InnerHtml += "<div class=\"col4last\"><a href=\"ShowStudent.aspx?studentid=" + studentid + "\">View Details</a></div>";

                students_result.InnerHtml += "</div>";
            }
        }
    }
}