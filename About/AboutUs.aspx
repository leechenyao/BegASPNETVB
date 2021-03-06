﻿<%@ Page Title="About Us" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="About_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <p>Planet Wrox is a sample site that comes with the book Beginning ASP.NET 4.5.1 in C# and VB by Imar Spaanjaars.</p>
    <p>The site demonstrates an on-line community site designed to share reviews of CDs and concerts. Additionally, users are invited to upload pictures from concerts they have been to (the so called Gig Pics) to show the world what cool concerts they have seen.</p>
    <p>Wrox is a trademark or registered trademark of Wiley Publishing, Inc. Used by permission.</p>
    <asp:Button ID="Button1" runat="server" Text="Button" /><br />
    <Wrox:Banner ID="Banner2" runat="server" DisplayDirection="Horizontal" />
</asp:Content>

