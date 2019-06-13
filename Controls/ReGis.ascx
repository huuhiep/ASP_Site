<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ReGis.ascx.cs" Inherits="Controls_ReGisascx" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Tên"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Nhập tên của bạn">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Mật Khẩu"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="ErrorMessage" Display="Dynamic" EnableTheming="True" ErrorMessage="Hãy nhập mật khẩu">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Xác nhận mật khẩu"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="ConfirmPass" runat="server" OnTextChanged="ConfirmPass_TextChanged" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPass" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận lại mật khẩu">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPass" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Mật khẩu không giống">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="SendButton" runat="server" Text="Đăng Ký" OnClick="SendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>