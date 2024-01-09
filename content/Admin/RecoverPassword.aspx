<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="RecoverPassword.aspx.cs" Inherits="LasSuperadoras.Admin.RecoverPassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="Head">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid changePasswordContainer recoverpassword">
        <h2>Recuperar o establecer contraseña
        </h2>
        <div class="row">
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification summaryValContainer"
                ValidationGroup="UserRev" />
            <div class="accountInfo summaryValContainer">
                <fieldset class="changePassword">
                    <legend>Información de la cuenta</legend>
                    <p>
                        <asp:Label ID="CurrentPasswordLabel" runat="server" class="lblChangePassword" AssociatedControlID="txtUserEmail">Email:</asp:Label>
                        <asp:TextBox runat="server" ID="txtUserEmail"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="Debe ingresar un Email" ControlToValidate="txtUserEmail" runat="server" CssClass="failureNotification" ValidationGroup="UserRev" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserEmail"
                            CssClass="failureNotification" ErrorMessage="El formato de ingresado no es válido. Debe ser un Email." ToolTip="El 'Usuario' no es válido." ValidationGroup="UserRev" Display="Dynamic"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </p>

                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="RecoverPasswordPushButton" runat="server" CommandName="ChangePassword" OnClick="RecoverPasswordPushButton_Click" Text="Recuperar o establecer contraseña" CssClass="btn btn-primary"
                        ValidationGroup="UserRev" />
                </p>
            </div>
            <asp:Label ID="msgResult" runat="server" Visible="false" Style="text-align: center"></asp:Label>
        </div>
    </div>
</asp:Content>
