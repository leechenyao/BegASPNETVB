﻿<%@ Page Title="Containers Demo" Language="VB" AutoEventWireup="false" CodeFile="Containers.aspx.vb" Inherits="Demos_Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Panel" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:Panel ID="Panel1" runat="server" Visible="false" Width="500px">
                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0">
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="About You">
                            <asp:Label ID="Label1" runat="server" Text="Type your name"></asp:Label>
                            <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" StepType="Finish" Title="Favorite Language">
                            <asp:DropDownList ID="FavoriteLanguage" runat="server">
                                <asp:ListItem>C#</asp:ListItem>
                                <asp:ListItem>Visual Basic</asp:ListItem>
                                <asp:ListItem>CSS</asp:ListItem>
                            </asp:DropDownList>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                            <asp:Label ID="Result" runat="server" Text="Type your name"></asp:Label>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
