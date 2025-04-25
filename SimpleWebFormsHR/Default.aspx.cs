using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SimpleWebFormsHR
{
    public partial class _Default : Page
    {

        String Conn1 = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                loadddlGender();
                loadddlmartialstatus();
            }
        }

        protected void btnsubmit_onclick(object sender, EventArgs e)
        {
            using (SqlConnection Conn = new SqlConnection(Conn1)){
                
                using (SqlCommand cmd1 = new SqlCommand("HR_insert_employee",Conn)) {

                    cmd1.CommandType = CommandType.StoredProcedure;


                    cmd1.Parameters.AddWithValue("@name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd1.Parameters.AddWithValue("@birthday", txtBirthDay.Text);
                    cmd1.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                    cmd1.Parameters.AddWithValue("@nic", txtNIC.Text);
                    cmd1.Parameters.AddWithValue("@tel", txtMobile.Text);
                    cmd1.Parameters.AddWithValue("@age", txtAge.Text);
                    cmd1.Parameters.AddWithValue("@martial_status", ddlMartialStatus.SelectedValue);
                    Conn.Open();
                    cmd1.ExecuteNonQuery();


                }


            }

        }

        public void btnclear_onclick(object sender, EventArgs e) {

            txtName.Text ="";
            txtAddress.Text = "";
            txtBirthDay.Text = "";
            txtAge.Text = "";
            txtMobile.Text = "";
            txtNIC.Text = "";
            ddlGender.SelectedValue ="M";
            ddlMartialStatus.SelectedValue = "S" ;
         
        }

        public void loadddlGender() {
            ddlGender.Items.Clear();
            ddlGender.Items.Add(new ListItem("Male", "M"));
            ddlGender.Items.Add(new ListItem("Female", "F"));
        
        }

        public void loadddlmartialstatus() {
            //ddlGender.Items.Clear();
            //ddlMartialStatus.Items.Add(new ListItem("Married", "M"));
            //ddlMartialStatus.Items.Add(new ListItem("Divorced", "D"));
            //ddlMartialStatus.Items.Add(new ListItem("Single", "S"));

            using (SqlConnection con3 = new SqlConnection(Conn1)) {

                SqlCommand cmd3 = new SqlCommand("load_martial_status", con3);

                cmd3.CommandType = CommandType.StoredProcedure;

                con3.Open();

                SqlDataReader reader = cmd3.ExecuteReader();

                ddlMartialStatus.DataSource = reader;

                ddlMartialStatus.DataTextField = "Descrption";

                ddlMartialStatus.DataValueField = "Status";

                ddlMartialStatus.DataBind();




            }



        
        }

     

    }




}