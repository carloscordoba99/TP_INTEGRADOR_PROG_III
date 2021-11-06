<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarDetalleDeVentas.aspx.cs" Inherits="Vistas.DetalleDeVentas.WebForm3" %>

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
            width: 184px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style10 {
            width: 250px;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            width: 294px;
            text-align: center;
            height: 23px;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
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
            width: 429px;
            text-align: right;
            height: 26px;
        }
        .auto-style17 {
            width: 348px;
            height: 26px;
        }
        .auto-style18 {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Detalle de ventas</td>
                <td class="auto-style5">Usuario<table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DetalleDeVentas/AgregarDetalleDeVentas.aspx">Agregar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DetalleDeVentas/EliminarDetalleDeVentas.aspx">Eliminar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DetalleDeVentas/BuscarDetalleDeVentas.aspx">Buscar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style8"></td>
                    </tr>
                    </table>
                </td>
            </tr>
        </table>
        <p class="auto-style12">
            <strong>Eliminar </strong>detalle de ventas</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">Ingrese el ID del detalle de venta: </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TxtIdDetVenta" runat="server" Width="320px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnEliminar" runat="server" CssClass="auto-style14" Text="Eliminar" Width="113px" OnClick="BtnEliminar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"> </td>
                <td class="auto-style17">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
