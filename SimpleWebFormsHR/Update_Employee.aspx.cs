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
    public partial class Update_Employee : System.Web.UI.Page
    {

        string conn1 = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {

                loadddlGender();
                loadddlmartialstatus();
                BindData();
            }

        }

        protected void BindData()
        {
            using (SqlConnection con1 = new SqlConnection(conn1))
            {

                using (SqlCommand cmd1 = new SqlCommand("Loadgrid", con1))
                {

                    cmd1.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter SDA = new SqlDataAdapter(cmd1);

                    DataTable dt = new DataTable();

                    SDA.Fill(dt);


                    grdemployee.DataSource = dt;
                    grdemployee.DataBind();

                }
            }




        }

        protected void grdemployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grdemployee.SelectedRow;

            txtName.Text = row.Cells[1].Text;
            txtAddress.Text = row.Cells[2].Text;
            DateTime Bday = Convert.ToDateTime(row.Cells[3].Text);
            txtBirthDay.Text = Bday.ToString("yyyy-MM-dd");
            ddlGender.SelectedValue = row.Cells[4].Text;
            txtNIC.Text = row.Cells[5].Text;
            txtMobile.Text = row.Cells[6].Text;
            txtAge.Text = row.Cells[7].Text;
            ddlMartialStatus.SelectedValue = row.Cells[8].Text;







        }

        public void loadddlGender()
        {

            ddlGender.Items.Add(new ListItem("Male", "M"));
            ddlGender.Items.Add(new ListItem("Female", "F"));

        }

        public void loadddlmartialstatus()
        {

            ddlMartialStatus.Items.Add(new ListItem("Married", "M"));
            ddlMartialStatus.Items.Add(new ListItem("Divorced", "D"));
            ddlMartialStatus.Items.Add(new ListItem("Single", "S"));

        }


        protected void Cllick_btnUpdate(object sender, EventArgs e)
        {

            using (SqlConnection conn = new SqlConnection(conn1))
            {

                SqlCommand cmd2 = new SqlCommand("UpdateHR", conn);

                cmd2.CommandType = CommandType.StoredProcedure;
                conn.Open();
                cmd2.Parameters.AddWithValue("@name", txtName.Text);
                cmd2.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd2.Parameters.AddWithValue("@birthday", txtBirthDay.Text);
                cmd2.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                cmd2.Parameters.AddWithValue("@nic", txtNIC.Text);
                cmd2.Parameters.AddWithValue("@tel", txtMobile.Text);
                cmd2.Parameters.AddWithValue("@age", txtAge.Text);
                cmd2.Parameters.AddWithValue("@martial_status", ddlMartialStatus.SelectedValue);
                cmd2.ExecuteNonQuery();

            }

            BindData();

        }

        protected void grdemployeeRowDelete(object sender, GridViewDeleteEventArgs e) {

            using (SqlConnection con3 = new SqlConnection(conn1)) {

                SqlCommand cmd3 = new SqlCommand("deleteRow", con3);

                cmd3.CommandType = CommandType.StoredProcedure;

                con3.Open();

                //  GridViewRow row = grdemployee.SelectedRow;
                string nic = grdemployee.DataKeys[e.RowIndex].Value.ToString();
                cmd3.Parameters.AddWithValue("@nic", nic);

                cmd3.ExecuteNonQuery();

                BindData();con3.Close();

            }
        
        
        
        }
    }
}