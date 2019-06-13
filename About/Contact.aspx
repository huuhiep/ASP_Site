<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="huuhiep" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClipTrailer" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <huuhiep:ContactForm runat="server" ID="ContactForm"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SiderbarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

