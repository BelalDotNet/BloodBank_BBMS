<%@ Page Title="Password Changed" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.cs" Inherits="BloodBank.Account.ResetPasswordConfirmation" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="cpMainContent">
    <h2><%: Title %>.</h2>
    <div>
        <p>Your password has been changed. Click <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">here</asp:HyperLink> to login </p>
    </div>
</asp:Content>
