<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cinema UTN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/Inicio.styles.css" />
</head>
<body>
        <header>

            <%-- NAVBAR --%>
            <nav class="navbar">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">
                  <img src="./images/icons/Cinema_UTN.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                  Cinema UTN
                </a>
                  <div class ="float-right">

                      <button class="hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        INGRESAR
                      </button>
                    <asp:HyperLink ID="hlSobreNosotros" CssClass="hl-nav" runat="server">SOBRE NOSOTROS</asp:HyperLink>
                  </div>
              </div>
            </nav>
        </header>

        <%-- FORMULARIO DE ACCESO --%>
        <section id="formulario-acceso" class="container float-right">

            <div class="collapse" id="collapseExample">
              <div class="card card-body">
                <form id="Acceder">
                    <div class="mb-3">
                        <label for="InputEmail" class="form-label">Dirección de correo electronico</label>
                        <input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">El correo con  el que te registraste.</div>
                    </div>
                    <div class="mb-3">
                        <label for="InputPassword" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="InputPassword">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="Check">
                        <label class="form-check-label" for="Check">Mantenerme en sesión</label>
                    </div>
                    <button type="submit" class="btn btn-primary">INGRESAR</button>
                </form>
              </div>
            </div>

        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://popper.js.org/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
        <script src="scripts.js"></script>

    </body>
</html>
