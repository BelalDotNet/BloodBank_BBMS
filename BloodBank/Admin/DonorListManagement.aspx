<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="DonorListManagement.aspx.cs" Inherits="BloodBank.Admin.DonorListManagement" %>





<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <h2 class="jumbotron center-block">Donor List Management</h2>

    <div class="jumbotron text-center">

        <asp:GridView ID="grdViewDonorList" runat="server" CssClass="well well-lg text-center" AutoGenerateColumns="False" DataKeyNames="DonorID" CellPadding="10" ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Donor ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblDonor" runat="server" Text='<%#Eval("DonorID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("DonorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblGender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Date Of Birth" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblDob" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Blood Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblBloolGroup" runat="server" Text='<%#Eval("BloodGroup") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone No." ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("PhoneNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Picture" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Image runat="server" Width="150" Height="150" ID="donorPhotoGrid" ImageUrl='<%# "~/Uploads/"+ Eval("Photo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblContactAddress" runat="server" Text='<%#Eval("ContactAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" BackColor="Red" ForeColor="White" Text="Delete" OnCommand="btnDelete_Command" CommandArgument='<%#Eval("DonorID") %>'
                     ToolTip="Delete" OnClientClick="return confirm('Are you sure you want to delete?')" />

                </ItemTemplate>

            </asp:TemplateField>



            </Columns>
        </asp:GridView>

    </div>
   
  </asp:Content>
