<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Member_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 563px;
            height: 199px;
        }
        .auto-style2 {
            width: 283px;
        }
        .auto-style3 {
            text-align: right;
            color: #fff;
            font-size: 20px;
            height: 35px;
            width: 283px;
        }
        .auto-style4 {
            width: 75px;
        }
        .auto-style5 {
            width: 663px;
            height: 199px;
        }
        .auto-style6 {
            width: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium" 
                class="tblhead">
                CHANGE PASSWORD</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Your Email ID :
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="email" runat="server" CssClass="txt" ></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="email" ErrorMessage="??" ForeColor="Yellow" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="email" ErrorMessage="Invalid email" ForeColor="Yellow" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            Enter New Password :
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtnewpass" ErrorMessage="??" ForeColor="Yellow" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            Confirm Password :
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtcpass" ErrorMessage="??" ForeColor="Yellow" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtnewpass" ControlToValidate="txtcpass" ErrorMessage="Not Match" 
                                ForeColor="Yellow" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style6">
                            <asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
                                Text="Change Password" />
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style6">
                            <asp:Label ID="lbl" runat="server" ForeColor="Yellow"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

