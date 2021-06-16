<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="ADMIN_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                REPORT AND PAYMENT -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="939px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" DeleteText="Dispatch" ShowDeleteButton="True">
                        <ControlStyle BackColor="#FFCC66" BorderColor="#CC0000" BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" />
                        </asp:CommandField>
                        <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Paytype" HeaderText="Paytype" SortExpression="Paytype" />
                        <asp:BoundField DataField="Edate" HeaderText="Edate" SortExpression="Edate" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FOODSYSTEMConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [PID] = @PID" InsertCommand="INSERT INTO [Payment] ([Name], [Email], [Mobile], [Address], [Paytype], [Edate]) VALUES (@Name, @Email, @Mobile, @Address, @Paytype, @Edate)" SelectCommand="SELECT [PID], [Name], [Email], [Mobile], [Address], [Paytype], [Edate] FROM [Payment]" UpdateCommand="UPDATE [Payment] SET [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile, [Address] = @Address, [Paytype] = @Paytype, [Edate] = @Edate WHERE [PID] = @PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Paytype" Type="String" />
            <asp:Parameter Name="Edate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Paytype" Type="String" />
            <asp:Parameter Name="Edate" Type="DateTime" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

