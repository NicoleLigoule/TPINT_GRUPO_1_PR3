<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarMedico.aspx.cs" Inherits="Vistas.EditarMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
a{color:#007bff;text-decoration:none;background-color:transparent}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style1 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="card">
                    <h3 class="text-center">EDITAR MEDICO</h3>
                    <table class="table">
                        <tr>
                            <td class="auto-style2">DNI:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDni" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDni" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revDni" runat="server" ErrorMessage="Solo Números" ForeColor="Red" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nombre:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Sólo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Apellido:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" EnableTheming="True" ErrorMessage="Sólo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Sexo:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nacionalidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Fecha de nacimiento:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtFechaNac" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                    Text="YYYY-MM-DD" 
                                    onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revfecha" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="ingerse yyyy-mm-dd" ForeColor="Red" ValidationExpression="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|1\d|2\d|3[01])$" ValidationGroup="grupo 1">*</asp:RegularExpressionValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Provincia:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Localidad:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlLocalidades" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Dirección:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revDire" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Solo números y letras" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9 ]+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Correo electronico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Caracteres incorrectos" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nº Telefonico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="rfvTele" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Sólo números" ForeColor="Red" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style2">Especialidad:</td>
                            <td class="auto-style3">
                               <asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="Campo Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-primary btn-block" OnClick="btnRegistrar_Click" Height="25px" />
                                <asp:HyperLink ID="hplVolverAMenuPaciente" runat="server" NavigateUrl="~/MenuMedico.aspx">Volver</asp:HyperLink>
                            </td>    
                            <td class="auto-style1">
                                &nbsp;</td>    
                        </tr>
                    </table>
                </div>
        <asp:ValidationSummary ID="ValidationSummaryEditarMed" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
