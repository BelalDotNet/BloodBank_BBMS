<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BloodBank.ContentPages.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">


    <h1 class="jumbotron center-block"><strong>Please Send Us your Comments</strong> <br /><br />
        <img src="../Images/25.jpg" width="350" height="150"/>
    </h1>
    
    

 <table class="table table-bordered table-striped table-condensed">
    
    <tr>
        <td class="">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td >
            <asp:TextBox class="form-control" ID="txtBoxName" runat="server"></asp:TextBox>
        </td>
        <td class="">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        </td>
       <td class="auto-style2">
            <asp:TextBox class="form-control" ID="txtBoxEmail" runat="server"></asp:TextBox>
        </td>
        <td>
             &nbsp;
        </td>
    </tr>
           <tr>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Phone No. "></asp:Label>
        </td>
       <td class="auto-style2">
            <asp:TextBox class="form-control" ID="txtBoxContactMsgPhone" runat="server"></asp:TextBox>
        </td>
        <td>
             &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox class="form-control" ID="txtBoxAddress" runat="server"></asp:TextBox>
        </td>
        <td class="columnStyle">
            &nbsp;
        </td>
    </tr>
           <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
        </td>
        <td class="auto-style2">
           <asp:TextBox ID="txtBoxMessage" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        <td class="columnStyle">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="columnStyle">&nbsp;</td>
        <td class="columnStyle">
            <asp:Button ID="btnContactSave" runat="server" Onclick="btnContactSave_Click" Text="Save" BackColor="#33CC33" ForeColor="Black" />
        </td >
        <td class="columnStyle">
            <asp:Label ID="message" runat="server" ForeColor="#FF3300"></asp:Label>
        </td>
    </tr>

   
        
    </table>
   
        
   
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
