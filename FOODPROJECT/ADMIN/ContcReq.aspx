<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master"  AutoEventWireup="true" CodeFile="ContcReq.aspx.cs" Inherits="ADMIN_NewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                CONTACT REQUEST -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="940px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" DeleteText="Contacted" ShowDeleteButton="True">
                        <ControlStyle BackColor="#FFCC66" BorderColor="#CC0000" BorderStyle="Dashed" Font-Bold="True" />
                        </asp:CommandField>
                        <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                        <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:BoundField DataField="EDate" HeaderText="EDate" SortExpression="EDate" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FOODSYSTEMConnectionString %>" DeleteCommand="DELETE FROM [RequestMst] WHERE [CID] = @CID" InsertCommand="INSERT INTO [RequestMst] ([CName], [Email], [Subject], [message], [EDate]) VALUES (@CName, @Email, @Subject, @message, @EDate)" SelectCommand="SELECT [CID], [CName], [Email], [Subject], [message], [EDate] FROM [RequestMst]" UpdateCommand="UPDATE [RequestMst] SET [CName] = @CName, [Email] = @Email, [Subject] = @Subject, [message] = @message, [EDate] = @EDate WHERE [CID] = @CID">
        <DeleteParameters>
            <asp:Parameter Name="CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="EDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="EDate" Type="DateTime" />
            <asp:Parameter Name="CID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
