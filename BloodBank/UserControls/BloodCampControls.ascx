<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BloodCampControls.ascx.cs" Inherits="BloodBank.UserControls.BloodCampControls" %>


    <table class="table table-bordere table-condensed table-striped">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCamBoxName" runat="server"></asp:TextBox>
        </td>
        <td class="columnStyle">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCamBoxName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        </td>
       <td class="auto-style2">
            <asp:TextBox ID="txtCamBoxEmail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCamBoxEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCamBoxEmail" ErrorMessage="Email address not valid." ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="PhoneNo"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCamBoxPhoneNo" runat="server"></asp:TextBox>
        </td>
        <td class="columnStyle">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCampBoxAddress" runat="server"></asp:TextBox>
        </td>
        <td class="columnStyle">
            &nbsp;
        </td>
    </tr>
        <tr>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCamMsgBox" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="columnStyle">
            &nbsp;
        </td>
    </tr>

    <tr>
        <td class="columnStyle">&nbsp;</td>
        <td class="columnStyle">
            <asp:CheckBox ID="chkCampBoxAgree" runat="server" Text="Yes, I am Agree." Font-Bold="True" />
        </td>
        <td class="columnStyle">
        <asp:Label ID="rtnMessage" runat="server"></asp:Label>&nbsp; <asp:Label ID="emailSendSuccess" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="columnStyle">&nbsp;</td>
        <td class="columnStyle">
            <asp:Button ID="btnSaveCamp" runat="server" OnClick="btnSaveCamp_Click" Text="Submit" BackColor="#33CC33" ForeColor="Black" />
        </td >
        <td class="columnStyle">&nbsp;</td>
    </tr>
    </table>
