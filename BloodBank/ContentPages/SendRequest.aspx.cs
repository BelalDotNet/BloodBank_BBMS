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

namespace BloodBank.ContentPages
{
    public partial class SendRequest : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["BloodDBCon"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("Insert Into BloodRequest Values (@patientname, @phone, @requestdate,@requestedbldgroup,@unitsofblood, @region)", con);

                cmd.Parameters.AddWithValue("@patientname", txtPatientName.Text);
                cmd.Parameters.AddWithValue("@phone", txtBoxBldPhone.Text);
                cmd.Parameters.AddWithValue("@requestdate",Convert.ToDateTime( txtRequstDate.Text).ToShortDateString());
                cmd.Parameters.AddWithValue("@requestedbldgroup", ddlRequstedBloodGroup.SelectedValue);
                cmd.Parameters.AddWithValue("@unitsofblood", txtBoxUnitsOfBlood.Text);
                cmd.Parameters.AddWithValue("@region", ddlRegion.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Pleas wait For Response!!!";
                ClearData();
            }
        }
        private void ClearData()
        {
            txtBoxBldPhone.Text = "";
            txtBoxUnitsOfBlood.Text = "";
            txtPatientName.Text = "";
            txtRequstDate.Text = "";
            ddlRegion.SelectedIndex = -1;
            ddlRequstedBloodGroup.SelectedIndex = -1;

        }




    }
}