using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string studentid = Request.QueryString["studentid"];
            if (String.IsNullOrEmpty(studentid)) valid = false;

            //We will attempt to get the record we need
            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(studentid));

                if (student_record.Count > 0)
                {
                    student_title.InnerHtml = student_record["STUDENTFNAME"] + " " + student_record["STUDENTLNAME"];
                    student_fname.InnerHtml = student_record["STUDENTFNAME"];
                    student_lname.InnerHtml = student_record["STUDENTLNAME"];
                    student_number.InnerHtml = student_record["STUDENTNUMBER"];
                    student_edate.InnerHtml = student_record["ENROLMENTDATE"].Substring(0,10);

                    updatebutton.InnerHtml = "<a class=\"one_options one_update\" href=\"UpdateStudent.aspx?studentid=" + studentid + "\">UPDATE</a>";
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                student_info.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}