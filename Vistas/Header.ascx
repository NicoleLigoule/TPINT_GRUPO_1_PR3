<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Vistas.Header" %>
<link href="./Resources/estilos/Header.css" rel="stylesheet" />
<%-- SCRIPTS --%>
<script src="./utils.js" type="text/javascript"></script>
<header>
    <nav class="navbar">
        <div id="hoverNav" class="container-fluid">
            <a class="navbar-brand" href="Inicio-Clinica.aspx">
                <i class="fa-regular fa-hospital"></i>
                Clinica UTN
            </a>
            <div id="usuario" runat="server"></div>
            <button id="cerrarSesion" runat="server" style="color: black; background-color: #B3E5FC;" onserverclick="CerrarSesion_ServerClick">Cerrar sesión</button>
        </div>
    </nav>
</header>
