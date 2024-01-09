<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LasSuperadoras.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2>Usuarios</h2>


        <div class="row">
            <div class="col-4">
                <h5>Compania</h5>
            </div>

            <div class="col-4">
                <h5>Usuario</h5>
            </div>

            <div class="col-2"></div>
            <div class="col-1"></div>
        </div>

        <div class="row">
            <asp:HiddenField runat="server" id="editUserId" />
            <div class="col-4">
                <asp:DropDownList runat="server" DataValueField="CompanyId" AutoPostBack="true" DataTextField="Name" ID="ddlNewCompany">
                </asp:DropDownList>
            </div>
            <div class="col-4">
                <asp:TextBox runat="server" ID="txtNewUsername"></asp:TextBox>

            </div>
            <div class="col-2">
                <asp:RequiredFieldValidator ErrorMessage="Debe ingresar un Usuario" ControlToValidate="txtNewUsername" runat="server" CssClass="failureNotification" ValidationGroup="UserRev" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtNewUsername"
                    CssClass="failureNotification" ErrorMessage="El formato 'Usuario' no es válido. Debe ser un Email." ToolTip="El 'Usuario' no es válido." ValidationGroup="UserRev" Display="Dynamic"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </div>
            <div class="col-2 d-grid gap-2 d-md-block text-end">
                <asp:Button runat="server" OnClick="cmdAdd_Click" ID="cmdAdd" Text="Agregar" CausesValidation="true" UseSubmitBehavior="true"
                    CssClass="btn btn-primary" Style="font-size: 1rem;" ValidationGroup="UserRev"></asp:Button>
                 <asp:Button runat="server" OnClick="cmdUpdate_Click" ID="cmdUpdate" Text="Actualizar" CausesValidation="true" UseSubmitBehavior="true" Visible="false"
                    CssClass="btn btn-primary" Style="font-size: 1rem;" ValidationGroup="UserRev"></asp:Button>
                <asp:Button runat="server" OnClick="cmdCancel_Click" ID="cmdCancel" Text="Cancelar" CausesValidation="true" UseSubmitBehavior="true" Visible="false"
                    CssClass="btn btn-primary" Style="font-size: 1rem;" ValidationGroup="UserRev"></asp:Button>
            </div>
            <div class="col-12">
                <asp:ValidationSummary ID="vasSummary" runat="server" DisplayMode="BulletList" ShowMessageBox="true" ValidationGroup="UserRev"
                    ShowSummary="false" />
                <asp:Label Text=" El Usuario ya existe." runat="server" Visible="false" ID="valUserExistsMsg" />
            </div>
        </div>


        <asp:Repeater runat="server" ID="repUser" OnItemCommand="repUser_ItemCommand">
            <HeaderTemplate>
                <div class="row tblUserHeader">
                    <div class="col-3 ">Compania</div>
                    <div class="col-6 ">Usuario</div>
                    <div class="col-3 "></div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="row tblUserRows">
                    <div class="col-3">
                        <asp:Label runat="server"> <%#DataBinder.Eval(Container,"DataItem.CompanyName")%>  </asp:Label>
                    </div>
                    <div class="col-6">
                        <asp:Label runat="server"> <%#DataBinder.Eval(Container,"DataItem.UserName")%>  </asp:Label>
                    </div>
                    <div class="col-3 text-end  d-md-block">
                        <asp:Button ID="cmdSendPassword" Text="Enviar contraseña" CssClass="btn btn-success btn-xs" CommandName="Send" ToolTip="Enviar contraseña." CommandArgument='<%#Eval("UserID") %>'
                                    runat="server"  />
                          <asp:Button ID="imgBtnEdit" Text="Editar" CssClass="btn btn-info btn-xs" CommandName="Edit" ToolTip="Editar un registro." CommandArgument='<%#Eval("UserID") %>'
                                    runat="server"  />
                        <asp:Button runat="server" Text="Quitar" CssClass="btn btn-danger btn-xs   " Style="font-size: 1rem;" CommandName="Delete" CommandArgument='<%# Eval("UserID") %>'
                            OnClientClick="return confirm('Esta seguro de eliminar este registro?');"></asp:Button>
                    </div>
                   
                </div>
            </ItemTemplate>

        </asp:Repeater>

    </div>


</asp:Content>
