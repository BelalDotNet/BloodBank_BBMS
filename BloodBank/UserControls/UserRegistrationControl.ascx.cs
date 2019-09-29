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

namespace BloodBank.UserControls
{
    public partial class UserRegistrationControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["BloodDBCon"].ConnectionString;
       
        SqlCommand cmd;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }




        protected void btnSubmit_Click(object sender, EventArgs e)
        {



            string folderPath = Server.MapPath("~/Uploads/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }



            //Upload Image Code Start
            if (donorPicture.HasFile)
            {
                string fileExt = Path.GetExtension(donorPicture.FileName);

                if (fileExt.ToLower() != ".png" && fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".jpeg")
                {
                    lblUplMessageFired.Text = "Only files with .jpg , .jpeg and .png extension are allowed";
                }
                else
                {
                    //Save the File to the Directory (Folder).
                    donorPicture.SaveAs(folderPath + Path.GetFileName(donorPicture.FileName));

                }
            }
            //Upload Image Code End


            using (SqlConnection con = new SqlConnection(cs))
            {
                if(chkBoxAgree.Checked == true)
                {

                    string key = "sp_InsertDonorOrPatient";
                    cmd = new SqlCommand(key, con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@type", rdlDonorOrPatient.SelectedValue);
                    cmd.Parameters.AddWithValue("@name", txtBoxName.Text);
                    cmd.Parameters.AddWithValue("@gender", rdlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(txtDOB.Text).ToShortDateString());
                    cmd.Parameters.AddWithValue("@bldgroup", ddlBloodGroup.Text);
                    cmd.Parameters.AddWithValue("@email", txtBoxEmail.Text);
                    cmd.Parameters.AddWithValue("@phoneno", txtBoxPhone.Text);
                    cmd.Parameters.AddWithValue("@photo", Path.GetFileName(donorPicture.FileName));
                    cmd.Parameters.AddWithValue("@contactaddress", txtBoxAddress.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClearData();

                    lblmessage.Text = "Information Saved!!!!!";
                }
                else
                {
                    lblmessage.Text = "Please Fill Up all the Information and Agree with conditions!!!!!";
                }







            }




        }


        private void ClearData()

        {
            txtBoxName.Text = "";
            rdlGender.SelectedIndex = -1;
            txtDOB.Text = "";
            txtBoxAddress.Text = "";
            txtBoxEmail.Text = "";
            chkBoxAgree.Checked = false;
            rdlDonorOrPatient.SelectedIndex =-1;
            txtBoxPhone.Text = "";
            donorPicture.Dispose();


        }







    }








}