using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ListTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
               An alternate way to fetch data without the SCHOOLDB.cs class
               https://dev.mysql.com/doc/connector-net/en/connector-net-tutorials-sql-command.html
           */

            //resets the result set window
            teachers_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                //WARNING: This technique is vulnerable to SQL injections
                //read more about SQL injections
                //https://www.csoonline.com/article/3257429/what-is-sql-injection-how-sqli-attacks-work-and-how-to-prevent-them.html
                //we will learn to defend against these attacks next semester
                searchkey = teacher_search_textbox.Text;
            }


            string query = "select * from TEACHERS";

            if (searchkey != "")
            {
                query += " WHERE TEACHERFNAME like '%" + searchkey + "%' ";
                query += " or TEACHERLNAME like '%" + searchkey + "%' ";
                query += " or EMPLOYEENUMBER like '%" + searchkey + "%' ";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                teachers_result.InnerHtml += "<div class=\"listitem\">";

                string teacherid = row["TEACHERID"];

                string emplyoeernumber = row["EMPLOYEENUMBER"];
                teachers_result.InnerHtml += "<div class=\"col4\">" + emplyoeernumber + "</div>";

                string teacherfirstname = row["TEACHERFNAME"];
                teachers_result.InnerHtml += "<div class=\"col4\">" + teacherfirstname + "</div>";

                string teacherlastname = row["TEACHERLNAME"];
                teachers_result.InnerHtml += "<div class=\"col4\">" + teacherlastname + "</div>";

                teachers_result.InnerHtml += "<div class=\"col4last\"><a href=\"ShowTeacher.aspx?teacherid=" + teacherid + "\">View Details</a></div>";

                teachers_result.InnerHtml += "</div>";
            }

        }
    }
}