using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowTeacher : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string teacherid = Request.QueryString["teacherid"];
            if (String.IsNullOrEmpty(teacherid)) valid = false;

            //We will attempt to get the record we need
            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> teacher_record = db.FindTeacher(Int32.Parse(teacherid));

                if (teacher_record.Count > 0)
                {
                    teacher_title.InnerHtml = teacher_record["TEACHERFNAME"] + " " + teacher_record["TEACHERLNAME"];
                    teacher_fname.InnerHtml = teacher_record["TEACHERFNAME"];
                    teacher_lname.InnerHtml = teacher_record["TEACHERLNAME"];
                    employeer_number.InnerHtml = teacher_record["EMPLOYEENUMBER"];
                    teacher_hdate.InnerHtml = teacher_record["HIREDATE"].Substring(0, 10);
                    teacher_salary.InnerHtml = teacher_record["SALARY"];

                    updatebutton.InnerHtml = "<a class=\"one_options one_update\" href=\"UpdateTeacher.aspx?teacherid=" + teacherid + "\">UPDATE</a>";
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                teacher_info.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}