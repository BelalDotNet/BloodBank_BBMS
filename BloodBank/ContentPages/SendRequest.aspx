<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="SendRequest.aspx.cs" Inherits="BloodBank.ContentPages.SendRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

<style type="text/css">
    .auto-style1 {
        height: 25px;
        text-align:center;
       
    }
</style>

    <img src="../Images/22.jpg" width="100%" height="200"  /> <br /> <br />
    <table class="table table-bordered table-striped table-condensed" runat="server">
  

    <tr>
        <td><asp:Label ID="Label1" runat="server" Text=" Name : "></asp:Label></td>
        <td><asp:TextBox ID="txtPatientName" CssClass="form-control" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatientName" ErrorMessage="Patient Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
   <tr>
        <td><asp:Label ID="Label3" runat="server" Text=" Phone No : "></asp:Label></td>
        <td><asp:TextBox ID="txtBoxBldPhone" CssClass="form-control" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxBldPhone" ErrorMessage="Phone No Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
     <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Date : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtRequstDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>
         <tr>
        <td><asp:Label ID="Label4" runat="server" Text=" Requested Blood : "></asp:Label></td>
        <td>
            <asp:DropDownList ID="ddlRequstedBloodGroup" runat="server" Height="40px" CssClass="form-control" >
                
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
            &nbsp;
        </td>
    </tr>
           <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Units Of Blood : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxUnitsOfBlood" CssClass="form-control" runat="server" ></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Region : "></asp:Label></td>
        <td>
            <asp:DropDownList ID="ddlRegion" runat="server" Height="40px" CssClass="form-control" >
                
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Dhaka</asp:ListItem>
                <asp:ListItem>Chattogram</asp:ListItem>
                <asp:ListItem>Sylhet</asp:ListItem>
                <asp:ListItem>Maymonsing</asp:ListItem>
                <asp:ListItem>Khulna</asp:ListItem>
                <asp:ListItem>Barishal</asp:ListItem>
                <asp:ListItem>Rangpur</asp:ListItem>
                <asp:ListItem>Cumilla</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>

   
     <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  BackColor="Green" ForeColor="White"/>
        </td>
        <td><asp:Label ID="lblMessage" runat="server" Text="Message" ForeColor="Red"></asp:Label></td>
    </tr>



</table>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
