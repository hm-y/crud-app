using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class UpdateStudent : System.Web.UI.Page
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
                    update_student_fname.Text = student_record["STUDENTFNAME"];
                    update_student_lname.Text = student_record["STUDENTLNAME"];
                    update_student_number.Text = student_record["STUDENTNUMBER"];
                    update_student_enrollment.Text = student_record["ENROLMENTDATE"].Substring(0, 10);
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                student_update_container.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}