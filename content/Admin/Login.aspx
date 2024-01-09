<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LasSuperadoras.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administración</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
       <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link href="../Content/validation.css" rel="stylesheet" />
    <script src="../Scripts/validation.js"></script>
    <link href="Content/Login.css" rel="stylesheet" />
    <script src="Scripts/Login.js"></script>
</head>
<body id="grid-container">
    <form id="form1" runat="server" class="form-group">


        <header id="header">
            <div id="logo"></div>
            <div id="titulo">Panel de administración</div>
        </header>
        <nav id="loginpannel" runat="server" visible="true">

            <div class="divided login">
                <div class="main-content">
                    <h4 class="title-login">INICIO DE SESIÓN</h4>
                    <p class="grey">
                        Accedé con tu email y contraseña
            tus órdenes.
                    </p>
                    <div class="input-group">
                        <div class="form-group input__container">
                            <label>Email</label>
                            <input type="text" class="form-control" placeholder="E-Mail" id="email" data-minlength='3' maxlength="255"  >
                        </div>
                        <div class="form-group input__container">
                            <label>Contraseña</label>
                            <input type="password" class="form-control" placeholder="Contraseña" id="password" name="password" data-minlength='3' maxlength="20">
                        </div>
                    </div>
                    <div class="submit-group" style="justify-content: space-between">
                        <button type="button" id="btnLogin" name="btnLogin" class="btn btn-primary btn-login">INGRESAR</button>
                        <a class="forgot-pass" href="/Admin/RecuperarContrasenia">Recuperar o establecer contraseña <img src="/img/arrow-grey.svg" alt=""></a>
                    </div>
                </div>
                <div class="admin-bg first">
                </div>
            </div>

        </nav>

        <nav id="recoverypannel" runat="server" visible="false">
            <div>
                <input validationgroup="recover" placeholder="Email" id="txtUserNameRecover" type="text" runat="server" class="form-control" />
                <asp:RequiredFieldValidator ValidationGroup="recover" ControlToValidate="txtUserNameRecover"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="RequiredFieldValidator1" />
            </div>
            <div>
                <asp:Button ValidationGroup="recover" class="form-control" Text="Recuperar" runat="server" ID="cmdrecover" />
            </div>
            <div>
                <asp:Label validationgroup="recover" ID="lblMsgRecover" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
            </div>
        </nav>

        <footer id="footer">
        </footer>






    </form>
</body>
</html>
