<%@ Page Title="Skins Demo" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="SkinsDemo.aspx.vb" Inherits="Demos_SkinsDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Button BackColor="Red" ForeColor="Black" SkinID="RedButton" runat="server" />
</asp:Content>

