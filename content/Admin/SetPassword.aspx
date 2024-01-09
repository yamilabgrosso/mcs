<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="SetPassword.aspx.cs" Inherits="LasSuperadoras.Admin.SetPassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="Head">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid changePasswordContainer">
        <h2>Establecer contraseña
        </h2>
        <h5><asp:Label ID="msgHashQuery" runat="server" Visible="false" Style="text-align: center"></asp:Label></h5>
        <div class="row">
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification summaryValContainer"
                ValidationGroup="ChangeUserPasswordValidationGroup" />
            <div class="accountInfo summaryValContainer">
                <fieldset class="changePassword">
                    <legend>Información de la cuenta</legend>
                    <p>
                        <asp:Label ID="NewPasswordLabel" runat="server" class="lblChangePassword" AssociatedControlID="NewPassword">Nueva contraseña:</asp:Label>
                        <asp:TextBox ID="NewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                            CssClass="failureNotification" ErrorMessage="Nueva contraseña es requerida." ToolTip="Nueva contraseña es requerida."
                            ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" class="lblChangePassword" AssociatedControlID="ConfirmNewPassword">Confirmar nueva contraseña:</asp:Label>
                        <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                            CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirmación de nueva contraseña es requerida."
                            ToolTip="Confirmación de nueva contraseña requerida." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                            CssClass="failureNotification" Display="Dynamic" ErrorMessage="La nueva contraseña y la confirmación deben ser iguales."
                            ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="SetPasswordPushButton" runat="server" CommandName="ChangePassword" OnClick="SetPasswordPushButton_Click" Text="Establecer contraseña" CssClass="btn btn-primary"
                        ValidationGroup="ChangeUserPasswordValidationGroup" />
                </p>
                <p>
                      <asp:Label ID="msgResult" runat="server" Visible="false" Style="text-align: center"></asp:Label>
                </p>
                <p>
                      <asp:LinkButton ID="lnkToLogin" href="/Admin" runat="server" Visible="false">Login</asp:LinkButton>
                </p>
            </div>
          
          
        </div>
    </div>
</asp:Content>
