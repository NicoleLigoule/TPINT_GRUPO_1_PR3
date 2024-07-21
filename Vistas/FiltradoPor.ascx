<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FiltradoPor.ascx.cs" Inherits="Vistas.FiltradoPor" %>

<div id="Filtrar-por">
    <asp:Label ID="lblFiltrarPor" runat="server" Text="Filtrar por"></asp:Label>
    &nbsp;<asp:DropDownList ID="ddlTipoFiltro" runat="server" AutoPostBack="True"></asp:DropDownList>
    &nbsp;<asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
    &nbsp;<asp:DropDownList ID="DdlSexo" runat="server" Visible="False"></asp:DropDownList>
    &nbsp;<asp:DropDownList ID="ddlProvincias" runat="server" Visible="False"></asp:DropDownList>
    &nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
</div>
