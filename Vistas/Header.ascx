<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Vistas.Header" %>
<link href="./Resources/estilos/Header.css" rel="stylesheet" />

<header>
    <nav class="navbar">
        <div id="hoverNav" class="container-fluid" >
            <a class="navbar-brand" href="Inicio-Clinica.aspx">
                <i class="fa-regular fa-hospital"></i>
                Clinica UTN
            </a>
            <div id="usuario" runat="server"></div>
        </div>
    </nav>
</header>
