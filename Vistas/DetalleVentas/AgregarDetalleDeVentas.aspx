<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarDetalleDeVentas.aspx.cs" Inherits="Vistas.DetalleDeVentas.WebForm1" %>

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
        .auto-style14 {
            width: 53%;
            margin-left: 34px;
        }
        .auto-style17 {
            width: 150px;
            text-align: right;
        }
        .auto-style13 {
            width: 150px;
        }
        .auto-style18 {
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Detalle de ventas</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DetalleVentas/AgregarDetalleDeVentas.aspx">Agregar detalle de ventas</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DetalleVentas/EliminarDetalleDeVentas.aspx">Eliminar detalle de ventas</asp:HyperLink>
                            </td>
                            <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DetalleVentas/BuscarDetalleDeVentas.aspx">Buscar detalle de ventas</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Home</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                Agregar detalle de ventas</p>
            <table align="center" class="auto-style14">
                <tr>
                    <td class="auto-style17">Código de venta: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtCodVenta" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvCodVenta" runat="server" ControlToValidate="TxtCodVenta" ValidationGroup="Group1">Ingrese Codigo Venta</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Codigo de artículo: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TXtCodArt" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvCodArt" runat="server" ControlToValidate="TXtCodArt" ValidationGroup="Group1">Ingrese Codigo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Cantidad: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtCantidad" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCantidad" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese cantidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        <asp:CompareValidator ID="cvCantidad" runat="server" ControlToValidate="TxtCantidad" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ValidationGroup="Group1">Ingrese una cantidad mayor a 0</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Precio unitario: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtPrecioUnitario" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPrecioUnitario" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese precio unitario</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        <asp:CompareValidator ID="cv" runat="server" ControlToValidate="TxtPrecioUnitario" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ValidationGroup="Group1">Ingrese Precio Unitario mayor a 0</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" ValidationGroup="Group1" />
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
