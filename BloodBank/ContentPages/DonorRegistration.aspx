<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="DonorRegistration.aspx.cs" Inherits="BloodBank.UserControls.DonorRegistration" %>

<%@ Register Src="~/UserControls/UserRegistrationControl.ascx" TagPrefix="uc1" TagName="UserRegistrationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
     
        <img src="../Images/23.jpg" width="100%" height="200" />

   
   
         <uc1:UserRegistrationControl runat="server" ID="UserRegistrationControl" />

   
   
     </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
