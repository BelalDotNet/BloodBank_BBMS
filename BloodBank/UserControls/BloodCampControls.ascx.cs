using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //Add
using System.Net; //add
using System.Net.Mail; //add

namespace BloodBank.UserControls
{
    public partial class BloodCampControls : System.Web.UI.UserControl
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BloodBank.mdf;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveCamp_Click(object sender, EventArgs e)
        {

            if (chkCampBoxAgree.Checked && txtCamBoxName.Text != "" && txtCamBoxEmail.Text != "" && txtCamBoxPhoneNo.Text != "" && txtCampBoxAddress.Text != "" && txtCamMsgBox.Text != "")
            {
                con.Open();
                string key = "Insert Into CampRegistration(Name, Email, PhoneNo, Address, Message) Values(@name, @email, @phoneno,@address,@message)";
                cmd = new SqlCommand(key, con);

                cmd.Parameters.AddWithValue("@name", txtCamBoxName.Text);
                cmd.Parameters.AddWithValue("@email", txtCamBoxEmail.Text);
                cmd.Parameters.AddWithValue("@phoneno", txtCamBoxPhoneNo.Text);
                cmd.Parameters.AddWithValue("@address", txtCampBoxAddress.Text);
                cmd.Parameters.AddWithValue("@message", txtCamMsgBox.Text);
                
                cmd.ExecuteNonQuery();
                con.Close();

                rtnMessage.Text = "Your record inserted Successfully!!";

                // Send Email Start 
                try
                {
                    sendEmailToAuthority();
                    sendEmailToUser();
                    emailSendSuccess.Text = "Email Send Successfully!!";
                    emailSendSuccess.Visible = true;

                }
                catch (Exception)
                {
                    emailSendSuccess.Text = "Problem occured to the Message";
                }
                // Send Email End

                txtCamBoxEmail.Text = "";
                txtCamBoxName.Text = "";
                txtCamBoxPhoneNo.Text = "";
                txtCampBoxAddress.Text = "";
                txtCamMsgBox.Text = "";

                chkCampBoxAgree.Checked = false;




            }
            else
            {
                rtnMessage.Text = "Read All The Condition!!!";
            }

        }
        protected void sendEmailToUser()
        {
            var frmAddress = "belalaspdotnet@gmail.com";
            const string frmPassword = "24434@24434";
            var toAddress = txtCamBoxEmail.Text;
            string subject = "Blood Camp-2019";

            string body = "Thank u " + txtCamBoxEmail.Text + " for Your perticipation\n";
            body += "Looking forward to see  you on the Blood Camp Event day.\n\n";
            body += "==============Blood Camp Event Details ================\n";
            body += "Event Address : New Vision Information Technology\n";
            body += "Event date : Friday 10 march 2019 \n";
            body += "Event Start Time: start from 02:00PM\n";
            body += "Your Perticipation will be cordially received!! ";

            //smtp
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(frmAddress, frmPassword);
                smtp.Timeout = 20000;
            }

            //passing value to smtp object
            smtp.Send(frmAddress, toAddress, subject, body);

        }
        protected void sendEmailToAuthority()
        {
            var frmAddress = "belalaspdotnet@gmail.com";
            const string frmPassword = "24434@24434";
            var toAddress = "belalcsharp@gmail.com";
            string subject = "BSA BloodCamp Event-2019";

            string body = txtCamBoxEmail.Text + " is Coming to BSA BloodCamp Event Program-2019.\n";
            body += "His/her personal information is like  as below-\n";
            body += "Trainee Name : " + txtCamBoxName.Text + "\n";
            body += "Email Address : " + txtCamBoxEmail.Text + "\n";
            body += "Phone Number : " + txtCamBoxPhoneNo.Text + "\n";
            body += "Address  : " + txtCampBoxAddress.Text + "\n";
            body += "Message : " + txtCamMsgBox.Text;

            //smtp
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(frmAddress, frmPassword);
                smtp.Timeout = 20000;
            }

            //passing value to smtp object
            smtp.Send(frmAddress, toAddress, subject, body);
        }
    }
}