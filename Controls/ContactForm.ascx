<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<script>
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
                <tr>
                    <td colspan="3">Use the form below to get in touch with us. Enter your name, e-mail address, and your home or business phone number to get in touch with us.</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="ErrorMessage" runat="server" ErrorMessage="Enter your name" Text="*" ControlToValidate="Name">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail address</td>
                    <td>
                        <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter an e-mail address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid e-mail address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Repeat email address</td>
                    <td>
                        <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm the e-mail address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="ConfirmEmailAddress"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The e-mail addresses don’t match" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Home phone number</td>
                    <td>
                        <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter your home or business phone number" CssClass="ErrorMessage" Display="Dynamic" Text="*" ClientValidationFunction="validatePhoneNumbers"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Business phone number</td>
                    <td>
                        <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter a comment" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="Comments"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="SendButton" runat="server" Text="Send" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Message" runat="server" CssClass="Attention" Text="Message Sent" Visible="false" />
        <p runat="server" id="MessageSentPara" visible="false">Thank you for your message. We'll get in touch with you if necessary.</p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script>
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).
        animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>
