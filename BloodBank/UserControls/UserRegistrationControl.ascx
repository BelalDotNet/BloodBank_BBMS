<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserRegistrationControl.ascx.cs" Inherits="BloodBank.UserControls.UserRegistrationControl" %>

<style type="text/css">
    .auto-style1 {
        height: 25px;
        text-align:center;
       
    }
</style>
<h2 class="auto-style1"><strong>Give Blood Save Life</strong></h2><br />

    <table class="table table-bordered table-striped table-condensed">
     <tr>
        <td><asp:Label ID="Label8" runat="server" Text="Registration For : "></asp:Label></td>
        <td><asp:RadioButtonList ID="rdlDonorOrPatient" runat="server" Height="26px" Width="132px" RepeatDirection="Horizontal">
                <asp:ListItem>Donor</asp:ListItem>
                <asp:ListItem>Patient</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td><asp:Label ID="Label1" runat="server" Text=" Name : "></asp:Label></td>
        <td><asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Pls Fill The FirstName" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
    <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Gender : "></asp:Label></td>
        <td><asp:RadioButtonList ID="rdlGender" runat="server" Height="52px" Width="132px" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>&nbsp;</td>
    </tr>
   

     <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Blood Group : "></asp:Label></td>
        <td>
            <asp:DropDownList ID="ddlBloodGroup" runat="server" Height="16px" >
                
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="dropDownRequireValid" runat="server" ErrorMessage="Select any Group of Blood" InitialValue="0" ControlToValidate="ddlBloodGroup" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
     <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text=" Email Address : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxEmail" runat="server"></asp:TextBox>
        </td>
        <td> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not Valid Email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtBoxEmail"></asp:RegularExpressionValidator>
         </td>
    </tr>
   
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text=" Phone No : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxPhone" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

   
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Photo  : "></asp:Label>

        </td>
        <td>
            <asp:FileUpload ID="donorPicture" runat="server" />
        </td>
        <td> <asp:Label ID="lblUplMessageFired" runat="server" Text="Give Valid Format" ForeColor="Red"></asp:Label> </td>
        
    </tr>


      
  

    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Contact Address : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

       <tr>
        <td>&nbsp; </td>
        <td>
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Agree With Terms &amp; Conditions?" />
        </td>
        <td>
            <asp:Label ID="lblmessage" runat="server" Text="Message" ForeColor="Red"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>



</table>

