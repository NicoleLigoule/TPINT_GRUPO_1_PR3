<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarMedico.aspx.cs" Inherits="Vistas.RegistroMed" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Médico</title>
    <link href="./Resources/estilos/styles.AgregarMedico.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
</head>
<body class="registro-medico">
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <section id="form-body" class="flex-grow-1">
        <div class="card-container">
            <form id="form1" runat="server">
                <div class="card">
                    <h3 class="text-center">REGISTRARSE</h3>
                    <table class="table">
                        <tr>
                            <td class="auto-style2">DNI:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDni" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" ErrorMessage="Solo debe ingresar numeros" ForeColor="#CC0000" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nombre:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Solo deben ingresarse letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Apellido:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Solo deben ingresarse letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Sexo:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nacionalidad:</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:RegularExpressionValidator ID="revNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Solo deben ingresarse letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Fecha de nacimiento:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtFechaNac" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                    Text="YYYY-MM-DD" 
                                    onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revFechaNac" runat="server" ErrorMessage="La fecha debe ser yyyy-mm-dd" ForeColor="Red" ValidationExpression="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$" ControlToValidate="txtFechaNac">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Provincia:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Localidad:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlLocalidades" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Dirección:</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Solo deben ingresarse letras" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9. ]+$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Correo electronico:</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Caracteres incorrectos" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nº Telefonico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Solo deben ingresarse numeros" ForeColor="Red" ValidationExpression="^[0-9]*$">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Especialidad:</td>
                            <td class="auto-style3">
                               <asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="rfvLocalidades0" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="Campo Obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3">
                                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary btn-block" OnClick="btnRegistrar_Click" />
                                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            </td>    
                        </tr>
                        <td class="auto-style2">
                                <asp:ValidationSummary ID="ValidationSummary" runat="server" />
                            </td>
                    </table>
                </div>
                 <asp:HyperLink ID="hlMenuAdministrador" runat="server" NavigateUrl="~/AdmInicio.aspx" CssClass="menu-link">Volver a Menu de Administrador</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:HyperLink ID="hlMenuMedico" runat="server" NavigateUrl="~/MenuMedico.aspx" CssClass="menu-link">Volver a Menu Medico</asp:HyperLink>
            </form>
        </div>
    </section>
</body>
</html>