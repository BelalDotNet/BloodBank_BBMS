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
    public partial class ContactUs : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["BloodDBCon"].ConnectionString;

        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContactSave_Click(object sender, EventArgs e)
        {


            if(txtBoxName.Text !="" && txtBoxAddress.Text !="" && txtBoxContactMsgPhone.Text !="" && txtBoxEmail.Text != "" && txtBoxMessage.Text != "" )
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    cmd = new SqlCommand("Insert Into ContactMessage values (@sendername, @email, @phoneno, @contactaddress , @message)", con);
                    cmd.Parameters.AddWithValue("@sendername", txtBoxName.Text);
                    cmd.Parameters.AddWithValue("@email", txtBoxEmail.Text);
                    cmd.Parameters.AddWithValue("@phoneno", txtBoxContactMsgPhone.Text);
                    cmd.Parameters.AddWithValue("@contactaddress", txtBoxAddress.Text);
                    cmd.Parameters.AddWithValue("@message", txtBoxMessage.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    message.Text = "Thanks For Your Comment!!";

                  
                    ClearData();


                }
            } else
            {
                message.Text = "Please Fill Up All The Field";
            }
          
           
        }
        private void ClearData()
        {
            txtBoxAddress.Text = "";
            txtBoxContactMsgPhone.Text = "";
            txtBoxEmail.Text = "";
            txtBoxMessage.Text = "";
            txtBoxName.Text = "";
        }
    }
}