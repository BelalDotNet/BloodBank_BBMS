<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="PatientListManagement.aspx.cs" Inherits="BloodBank.Admin.PatientListManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1 class="jumbotron center-block"><strong>Patient List Management</strong></h1>
    <div class=" jumbotron center-block">
        
        <asp:GridView ID="grdPatientList" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientID" CellPadding="5" ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Patient ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblPatient" runat="server" Text='<%#Eval("PatientID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblPatientName" runat="server" Text='<%#Eval("PatientName") %>'></asp:Label>
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
                        <asp:Image runat="server" Width="150" Height="150" ID="PatientPhotoIDGrid" ImageUrl='<%# "~/Uploads/"+ Eval("Photo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblContactAddress" runat="server" Text='<%#Eval("ContactAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" BackColor="Red" ForeColor="White" Text="Delete" OnCommand="btnDelete_Command" CommandArgument='<%#Eval("PatientID") %>'
                     ToolTip="Delete" OnClientClick="return confirm('Are you sure you want to delete?')" />

                </ItemTemplate>

            </asp:TemplateField>



            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
