<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarVenta.aspx.cs" Inherits="Vistas.Ventas.WebForm3" %>

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
            width: 145px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style10 {
            width: 223px;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            width: 250px;
            text-align: center;
            height: 23px;
        }
        .auto-style8 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style13 {
            width: 429px;
            text-align: right;
        }
        .auto-style15 {
            width: 348px;
        }
        .auto-style16 {
            width: 153px;
            text-align: center;
            height: 23px;
        }
        .auto-style17 {
            text-align: center;
            height: 23px;
            width: 257px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Venta</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Ventas/AgregarVenta.aspx">Agregar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ventas/EliminarVenta.aspx">Eliminar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style16">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Ventas/BuscarVenta.aspx">Buscar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style17">
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Ventas/ModificarVenta.aspx">Modificar ventas</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Menú principal</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                <strong>Eliminar </strong>venta</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Ingrese el ID de la venta: </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtIdVenta" runat="server" Width="320px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnEliminar" runat="server" CssClass="auto-style14" Text="Eliminar" Width="113px" OnClick="BtnEliminar_Click" OnClientClick="return confirm(&quot;¿Esta seguro que desea Eliminar la Venta?&quot;);" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
