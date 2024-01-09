<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LasSuperadoras.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administración</title>
    <link rel="stylesheet" href="Content/Login.css">
</head>
<body id="grid-container">
    <form id="form1" runat="server">
        

            <header id="header">
                 <div id="logo"></div>
                <div id="titulo">Adiministración</div>
            </header>
            <nav id="loginpannel">
                <div>
                    <input id="txtUserName" type="text" runat="server" />
                    <asp:RequiredFieldValidator ControlToValidate="txtUserName"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserName" />
                </div>
                <div>
                    <input id="txtUserPass" type="password" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtUserPass"
                        Display="Static" ErrorMessage="*" runat="server"
                        ID="vUserPass" />
                </div>

                <div>
                    <input type="submit" value="Logon" runat="server" id="cmdLogin" /></div>
                <div>
                    <asp:Label ID="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" /></div>
            </nav>
            <footer id="footer">

            </footer>





        
    </form>
</body>
</html>
