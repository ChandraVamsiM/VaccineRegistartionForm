using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace VaccineRegistrationForm
{
    public partial class RegForm : System.Web.UI.Page
    {
        string Gender;
        string PrefferedVaccine;
        string Age;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnReg_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-2KN3N5T\\SQLEXPRESS;Initial Catalog=VaccineRegistration;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[VaccineFormTable]
           ([EmployeeId]
           ,[FullName]
           ,[Age]
           ,[Gender]
           ,[PrefferedVaccine]
           ,[City]
           ,[MobileNumber]
           ,[EmailId]
           ,[Password])
     VALUES
           ('" + txtEmployeeId.Text + "','" + txtFullName.Text + "','" + Age + "','" + Gender + "','" + PrefferedVaccine + "','" + txtCity.Text + "','" + txtMobileNumber.Text + "','" + txtEmailId.Text + "','" + txtPassword.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Youu Have Registered Suceesfully For Vaccine')</script>");

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Others";
        }

        protected void RadioButton6_CheckedChanged1(object sender, EventArgs e)
        {
            PrefferedVaccine = "Covaxin";
        }

        protected void RadioButton7_CheckedChanged1(object sender, EventArgs e)
        {
            PrefferedVaccine = "CoviSheild";
        }

        protected void RadioButton8_CheckedChanged1(object sender, EventArgs e)
        {
            PrefferedVaccine = "Sputnik V";
        }

        protected void RadioButton4_CheckedChanged1(object sender, EventArgs e)
        {
            Age = "Above 18";
        }

        protected void RadioButton5_CheckedChanged1(object sender, EventArgs e)
        {
            Age = "Below 18";
        }
    }
}