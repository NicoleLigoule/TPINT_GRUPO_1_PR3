<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="Vistas.Paciente" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pacientes</title>
    <link href="./Resources/estilos/styles.Pacientes.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            width: 452px;
        }
        .auto-style4 {
            height: 26px;
            width: 386px;
        }
    </style>
</head>
<body class="registro-medico-pac">
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <section id="form-body" class="flex-grow-1">
        <div class="card-container">
            <form id="form1" runat="server">
                <div class="card">
                    <h3 class="text-center">CARGAR PACIENTE</h3>
                    <table class="table">
                        <tr>
                            <td class="auto-style4">DNI:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDniPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDniPac" ErrorMessage="solo Numeros" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDniPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Nombre:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNombrePac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvnombre" runat="server" ControlToValidate="txtNombrePac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombrePac" ErrorMessage="Solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Apellido:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtApellidoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvapellido" runat="server" ControlToValidate="txtApellidoPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revapellido" runat="server" ControlToValidate="txtApellidoPac" ErrorMessage="Solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Sexo:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlSexoPac" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvsexo" runat="server" ControlToValidate="ddlSexoPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Nacionalidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvnacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revnacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Fecha de nacimiento:</td>
                            <td class="auto-style3">
                                <%--<asp:TextBox ID="txtFechaNac" runat="server">DD/MM/AAAA</asp:TextBox>--%>
                                <asp:TextBox ID="txtFechaNac" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                    Text="YYYY-MM-DD" 
                                    onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvfecha" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revfecha" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="ingerse yyyy-mm-dd" ForeColor="Red" ValidationExpression="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|1\d|2\d|3[01])$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Provincia:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvProv" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                                <tr>
                            <td class="auto-style4">Localidad:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlLocalidad" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvloca" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="campo obligatorios" ForeColor="Red" InitialValue="0" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Dirección:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDireccionPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccionPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccionPac" ErrorMessage="Solo letras y numeros" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9 ]+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Correo electronico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtCorreoElectronicoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ControlToValidate="txtCorreoElectronicoPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revelecto" runat="server" ControlToValidate="txtCorreoElectronicoPac" ErrorMessage="caracteres invalido" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Nº Telefonico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtTelefonoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvtelefono" runat="server" ControlToValidate="txtTelefonoPac" ErrorMessage="campo obligatorios" ForeColor="Red" ValidationGroup="grupo 1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTelef" runat="server" ControlToValidate="txtTelefonoPac" ErrorMessage="Solo numeros" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="btnRegistrar" runat="server" Text="Agregar" CssClass="btn btn-primary btn-block" OnClick="btnRegistrar_Click" ValidationGroup="grupo 1" />
                                <asp:HyperLink ID="hplVolverAMenuPaciente" runat="server" NavigateUrl="~/MenuPacientes.aspx">Volver</asp:HyperLink>
                            </td>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:ValidationSummary ID="vsm" runat="server" ValidationGroup="grupo 1" />
                            </td>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="auto-style3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        
                    </table>
                </div>
            </form>
        </div>
    </section>
</body>
</html>