using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practical_4
{
    public partial class register_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode =
                UnobtrusiveValidationMode.None;
        }
        protected void Submit1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string skills = "";

                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        skills += item.Text + ", ";
                    }
                }

                if (skills == "")
                {
                    skills = "None";
                }

                lblResult.Text = "<h3>Registration Details</h3>" +
                    "<b>Name:</b> " + Server.HtmlEncode(TextBox1.Text) + "<br />" +
                    "<b>Email:</b> " + Server.HtmlEncode(TextBox2.Text) + "<br />" +
                    "<b>Contact No:</b> " + Server.HtmlEncode(TextBox3.Text) + "<br />" +
                    "<b>College:</b> " + Server.HtmlEncode(TextBox4.Text) + "<br />" +
                    "<b>Department:</b> " + Server.HtmlEncode(RadioButtonList2.SelectedValue) + "<br />" +
                    "<b>Event:</b> " + Server.HtmlEncode(DropDownList1.SelectedValue) + "<br />" +
                    "<b>Gender:</b> " + Server.HtmlEncode(RadioButtonList1.SelectedValue) + "<br />" +
                    "<b>Skills:</b> " + Server.HtmlEncode(skills) + "<br />" +
                    "<b>Address:</b> " + Server.HtmlEncode(TextArea1.Text) + "<br />" +
                    "<b>Terms and Conditions:</b> " +
                    (CheckBox1.Checked ? "Accepted" : "Not Accepted");
            }
        }
    }
}