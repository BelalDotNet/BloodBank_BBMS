<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="ContactUsManagement.aspx.cs" Inherits="BloodBank.Admin.ContactUsManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">


    <h1 class="jumbotron center-block"> <strong>Contact Us Page Messages</strong>  </h1>

    <div class="jumbotron center-block" style="text-align: center" >


            <asp:GridView ID="gridVWContactUsMessage" runat="server" AutoGenerateColumns="False" DataKeyNames="MessageID" CellPadding="5" ForeColor="#333333" Width="1022px" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Message ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblMessagID" runat="server" Text='<%#Eval("MessageID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sender Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblSenderName" runat="server" Text='<%#Eval("SenderName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Phone No" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblPhoneNo" runat="server" Text='<%#Eval("PhoneNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contact Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblContactAddress" runat="server" Text='<%#Eval("ContactAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Message" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblMessage" runat="server" Text='<%#Eval("Message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


      
            <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" BackColor="Red" ForeColor="White" Text="Delete" OnCommand="btnDelete_Command" CommandArgument='<%#Eval("MessageID") %>'
                     ToolTip="Delete" OnClientClick="return confirm('Are you sure you want to delete?')" />

                </ItemTemplate>

            </asp:TemplateField>



        </Columns>
    
 </asp:GridView>
       
    </div>


    
</asp:Content>
