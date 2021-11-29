<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Vistas.Usuario.EliminarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 184px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 250px;
            text-align: center;
        }
        .auto-style11 {
            width: 250px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 250px;
        }
        .auto-style8 {
            text-align: center;
            width: 250px;
        }
        .auto-style12 {
            width: 472px;
            text-align: right;
        }
        .auto-style13 {
            width: 374px;
        }
        .auto-style14 {
            width: 99%;
        }
        .auto-style15 {
            width: 472px;
            text-align: right;
            height: 43px;
        }
        .auto-style16 {
            width: 374px;
            height: 43px;
            text-align: center;
        }
        .auto-style17 {
            text-align: center;
            height: 43px;
        }
        .auto-style18 {
            width: 250px;
            text-align: center;
        }
        .auto-style19 {
            text-align: center;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Eliminar Usuario</td>
            <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Usuario/AgregarUsuario.aspx">Crear Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/BuscarUsuario.aspx">Buscar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Usuario/ModificarUsuario.aspx">Modificar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style18">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Usuario/EditarUsuario.aspx">Editar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink4" runat="server" >Inicio</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        </div>
        <p class="auto-style19">
            Eliminar Usuario</p>
        <table class="auto-style14">
            <tr>
                <td class="auto-style12">Ingrese ID Usuario </td>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtIdUsuario" runat="server" Width="333px"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;&nbsp;<asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="147px" OnClick="btnEliminar_Click" OnClientClick="return confirm(&quot;¿Esta seguro que desea Eliminar el Usuario?&quot;);" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"> </td>
                <td class="auto-style16">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style17">
                </td>
            </tr>
        </table>
    </form>
    
</body>
</html>
