using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ListClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            classes_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                searchkey = class_search_textbox.Text;
            }

            string query = "select * from CLASSES";

            if (searchkey != "")
            {
                query += " WHERE CLASSNAME like '%" + searchkey + "%' ";
                query += " or CLASSCODE like '%" + searchkey + "%' ";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                classes_result.InnerHtml += "<div class=\"listitem\">";

                string classid = row["CLASSID"];

                string classcode = row["CLASSCODE"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classcode + "</div>";

                string classname = row["CLASSNAME"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classname + "</div>";

                string classstartdate = row["STARTDATE"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classstartdate.Substring(0, 10) + "</div>";

                classes_result.InnerHtml += "<div class=\"col4last\"><a href=\"ShowClass.aspx?classid=" + classid + "\">View Details</a></div>";

                classes_result.InnerHtml += "</div>";
            }
        }
    }
}