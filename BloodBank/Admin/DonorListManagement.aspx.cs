using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace BloodBank.Admin
{
    public partial class DonorListManagement : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["BloodDBCon"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            DispliayData();
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("Delete From Donor Where DonorID=@id", con);
                cmd.Parameters.AddWithValue("@id", e.CommandArgument.ToString());
                con.Open();
                cmd.ExecuteNonQuery();


                DispliayData();



            }
        }
        private void DispliayData()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("Select * From Donor", con);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();


                grdViewDonorList.DataSource = dt;
                grdViewDonorList.DataBind();
            }
        }
    }
}