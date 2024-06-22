<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionPacientes.aspx.cs" Inherits="Vistas.GestionPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./Resources/estilos/styles.GestionPacientes.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="GridViewPacientes">
            <h2>Gestión Pacientes</h2>
            <asp:GridView ID="grvPacientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="grvPacientes_PageIndexChanging" PageSize="1">
                <Columns>
                    <asp:TemplateField HeaderText="DNI">
                        <ItemTemplate>
                            <asp:Label ID="lbl_DNIpc" runat="server" Text='<%# Bind("DNI_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Nombrepc" runat="server" Text='<%# Bind("Nombre_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Apellidopc" runat="server" Text='<%# Bind("Apellido_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sexo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Sexopc" runat="server" Text='<%# Bind("Sexo_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nacionalidad">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Nacionalidapc" runat="server" Text='<%# Bind("Nacionalidad_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha Nacimiento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Fechapc" runat="server" Text='<%# Bind("FechaNacimiento_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Direccion">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Direcpc" runat="server" Text='<%# Bind("Direccion_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Localidad">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Locapc" runat="server" Text='<%# Bind("Nombre_loca") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provincia">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Provpc" runat="server" Text='<%# Bind("Nombre_prov") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Correopc" runat="server" Text='<%# Bind("CorreoElectronico_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Telpc" runat="server" Text='<%# Bind("Telefono_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:HyperLink ID="hplPacientes" runat="server" NavigateUrl="~/MenuPacientes.aspx">Volver al menú Pacientes</asp:HyperLink>
        </div>
    </form>
</body>
</html>
