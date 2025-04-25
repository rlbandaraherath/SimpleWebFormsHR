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
    public partial class Home : System.Web.UI.Page
    {

        String Conn1 = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            BindGrid();


        }





        protected void BindGrid()
        {

            using (SqlConnection con1 = new SqlConnection(Conn1))
            {
                SqlCommand cmd1 = new SqlCommand("Loadgrid", con1);

                cmd1.CommandType = CommandType.StoredProcedure;

                con1.Open();

                SqlDataAdapter dap = new SqlDataAdapter(cmd1);

                DataTable dt = new DataTable();

                dap.Fill(dt);

                grdviewmain.DataSource = dt;
                grdviewmain.DataBind();




            }
        }
    }
}