<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio-Clinica.aspx.cs" Inherits="Vistas.Inicio_Cine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 420px;
        }
        .auto-style4 {
            width: 420px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
    <script type="text/javascript">
        function clearTextBoxOnClick(textBox) {
            if (textBox.value == 'Ingrese su documento') {
                textBox.value = '';
                textBox.style.color = 'black';
        }
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Ingrese su DNI:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="Debe ingresarse un DNI"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDNI" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="229px" 
                        Text="Ingrese su documento" 
                        onfocus="clearTextBoxOnClick(this)">Ingrese su documento</asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Contraseña:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Debe ingresarse una contrasenia"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContrasenia" runat="server" ForeColor="Gray" TextMode="Password" Width="227px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" />
                </td>
            </tr>
        </table>
        
        </form>
</body>
</html>