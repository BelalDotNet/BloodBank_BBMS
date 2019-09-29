<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="BloodCampRegistration.aspx.cs" Inherits="BloodBank.BloodCampRegistration" %>

<%@ Register Src="~/UserControls/BloodCampControls.ascx" TagPrefix="uc1" TagName="BloodCampControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
     <h3 class="jumbotron center-block" style="text-align:center"><strong>Blood Bank Blood Camp-2019</strong> </h3>
    <table class="table table-bordered table-condensed table-responsive table-striped">
        
        <tr>
            <td class="auto-style3"><b> Event Name : </b></td>
            <td>Blood Camp-2019</td>
        </tr>
        <tr>
            <td class="auto-style3"><b> Event Address : </b></td>
            <td>New Vision Information Technology (NVIT)</td>
        </tr>
        <tr>
            <td class="auto-style3"><b> Event Date : </b></td>
            <td>Friday, 10 March 2019</td>
        </tr>

    </table>
     
     
    <h3 class="jumbotron center-block"><strong>Please Register if you agree to join Camp and donate Blood</strong> </h3>
    
 
    <uc1:BloodCampControls runat="server" id="BloodCampControls" />
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
        <%: Scripts.Render("~/bundles/modernizr") %>
    <style type="text/css">
        .auto-style3 {
            width: 528px;
        }
    </style>
</asp:Content>

