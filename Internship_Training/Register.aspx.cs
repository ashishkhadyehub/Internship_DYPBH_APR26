using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internship_Training
{
    public partial class Register : System.Web.UI.Page
    {

        //1.Create UI form as per reqirement
        //2.Create database and table to store form fields
        //3.Apply required validations to UI form
        //4.Setup connection string in web.config file
        //5.Create object of connection class in back end file
        //6.Write ado.net code to insert form data into database table

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"]!=null)
            {
                lblName.Text = "Hello," + Session["Name"].ToString();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Users values (@name,@contact,@email,@city)",con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@city", ddlCities.SelectedItem.Text);
            con.Open();
            cmd.ExecuteNonQuery();

            txtContact.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            ddlCities.SelectedIndex = 0;
            Response.Write("<script>alert('Registration successful');</script>");
        }
    }
}