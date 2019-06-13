<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 405px;
    }
    tr {
        color: #3366FF   ;
    }
    .auto-style2 {
        width: 334px;
    }
    .auto-style3 {
    }
    .auto-style5 {
        height: 31px;
    }
</style>

<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>')
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

</script>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">
            <h1><strong>Thông tin liên hệ</strong></h1>
            <br />
            Vui lòng nhập tên, email, số điện thoại của bạn :</td>
    </tr>
    <tr>
        <td class="auto-style3">Tên :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Nhập tên của bạn">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Địa chỉ Email :</td>
        <td class="auto-style2">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Nhập địa chỉ Email" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Nhập địa chỉ Email hợp lệ" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Xác nhận địa chỉ Email :</td>
        <td class="auto-style2">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Xác nhận địa chỉ Email" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không giống nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Số điện thoại cá nhân :</td>
        <td class="auto-style2">
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điện thoại cá nhân hay số cơ quan" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Số điện thoại cơ quan :</td>
        <td class="auto-style2">
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Chú thích :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Comments" runat="server" Height="73px" TextMode="MultiLine" Width="256px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style5">
            <asp:Button ID="SendButton" runat="server" Text="Gửi" Height="29px" style="text-align: center" Width="100px" OnClick="SendButton_Click" />
            </td>
        <td class="auto-style5">
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
    </table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible ="false" />
            </ContentTemplate>
        </asp:UpdatePanel>

<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="AJAX">
               Vui lòng chờ trong giây lát...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
