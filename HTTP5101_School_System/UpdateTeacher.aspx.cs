using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class UpdateTeacher : System.Web.UI.Page
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
                    update_teacher_fname.Text = teacher_record["TEACHERFNAME"];
                    update_teacher_lname.Text = teacher_record["TEACHERLNAME"];
                    update_employee_number.Text = teacher_record["EMPLOYEENUMBER"];
                    update_hiredate.Text = teacher_record["HIREDATE"].Substring(0, 10);
                    update_salary.Text = teacher_record["SALARY"];
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                teacher_update_container.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}