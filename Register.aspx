<%@ Page Title="Dang Ky" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Registers" %>

<%@ Register Src="~/Controls/ReGis.ascx" TagPrefix="huuhiep" TagName="ReGis" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClipTrailer" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <huuhiep:ReGis runat="server" ID="ReGis" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SiderbarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

