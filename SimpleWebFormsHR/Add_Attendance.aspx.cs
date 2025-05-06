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
    public partial class Add_Attendance : System.Web.UI.Page
    {

        string conn1 = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblerror.Visible = false;
            }
        }

        protected void btnloadClicked(object sender, EventArgs e)
        {

            try
            {

                //  int @year = int.Parse(txtyear.Text);

                int? @year = string.IsNullOrWhiteSpace(txtyear.Text) ? (int?)null : Convert.ToInt32(txtyear.Text);

                loadgridattendance(@year);
            }
            catch (Exception ex)
            {

                lblerror.Text = "Error occured" + ex;
                lblerror.Visible = true;

            }
        }

        //   protected void btnclearclicked(object sender, EventArgs e) {


        //  }


        protected void loadgridattendance(int? @year)
        {

            using (SqlConnection con3 = new SqlConnection(conn1))
            {

                SqlCommand cmd3 = new SqlCommand("load_attendance", con3);

                cmd3.CommandType = CommandType.StoredProcedure;

                cmd3.Parameters.AddWithValue("@year", @year);

                con3.Open();

                SqlDataAdapter sqladpt = new SqlDataAdapter(cmd3);

                DataTable dt = new DataTable();

                sqladpt.Fill(dt);

                grdattendance.DataSource = dt;

                grdattendance.DataBind();

                con3.Close();






            }



        }


    }
}