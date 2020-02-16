using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowClass : System.Web.UI.Page
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
                    class_title.InnerHtml = class_record["CLASSNAME"];
                    class_code.InnerHtml = class_record["CLASSCODE"];
                    class_start.InnerHtml = class_record["STARTDATE"].Substring(0, 10);
                    class_finish.InnerHtml = class_record["FINISHDATE"].Substring(0, 10);
                    class_teacher.InnerHtml = class_record["TEACHERID"];

                    updatebutton.InnerHtml = "<a class=\"one_options one_update\" href=\"UpdateClass.aspx?classid=" + classid + "\">UPDATE</a>";
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                class_info.InnerHtml = "There was an error finding that student.";
            }
        }
    }
}