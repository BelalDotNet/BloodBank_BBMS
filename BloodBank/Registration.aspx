<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BloodBank.Registration" %>

<%@ Register Src="~/UserControls/UserRegistrationControl.ascx" TagPrefix="uc1" TagName="UserRegistrationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <br />
    <asp:panel ID="Pnl1" runat="server">
        <uc1:UserRegistrationControl runat="server" id="UserRegistrationControl" />
    </asp:panel>
   </asp:Content>
