using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class UpdateClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string classid = Request.QueryString["classid"];
            if (String.IsNullOrEmpty(classid)) valid = false;

            //We will attempt to get the record we need
            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> class_record = db.FindClass(Int32.Parse(classid));

                if (class_record.Count > 0)
                {
                    update_class_name.Text = class_record["CLASSNAME"];
                    update_class_code.Text = class_record["CLASSCODE"];
                    update_class_start.Text = class_record["STARTDATE"].Substring(0, 10);
                    update_class_finish.Text = class_record["FINISHDATE"].Substring(0, 10);
                    update_class_teacher.Text = class_record["TEACHERID"];
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                class_update_container.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}