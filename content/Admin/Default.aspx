<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LasSuperadoras.Admin.Default" %>

<asp:Content ContentPlaceHolderID="Head" runat="server">
    <script src="js/default.js"></script>
    <style>
        #bodyNode {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <section>
    <div class="container" runat="server" id="defaultContent">
      <div class="home">
      </div>
    </div>
  </section>

<section>

    <div></div>
    <script>
      // $('.modal').modal('show');
    </script>

</asp:Content>
