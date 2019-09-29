<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Lockout.aspx.cs" Inherits="BloodBank.Account.Lockout" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="cpMainContent" runat="server">
    <hgroup>
        <h1>Locked out.</h1>
        <h2 class="text-danger">This account has been locked out, please try again later.</h2>
    </hgroup>
</asp:Content>
