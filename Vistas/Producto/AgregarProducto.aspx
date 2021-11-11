<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Vistas.Producto.AgregarProducto" %>

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
            font-size: xx-large;
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
            width: 61%;
            margin-left: 34px;
            height: 217px;
        }
        .auto-style15 {
            width: 258px;
            height: 23px;
            text-align: right;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 258px;
            text-align: right;
        }
        .auto-style13 {
            width: 258px;
        }
        .auto-style18 {
            height: 23px;
            width: 235px;
        }
        .auto-style19 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"><strong>Producto</strong></td>
            <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Producto/AgregarProducto.aspx">Crear Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Producto/EliminarProducto.aspx">Eliminar Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Producto/BuscarProducto.aspx">Buscar Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
            <p class="auto-style12">
                <strong>Crear Producto</strong></p>
            <table align="center" class="auto-style14">
                <tr>
                    <td class="auto-style15">Nombre </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtNombre" runat="server" Width="216px" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre">Ingrese Nombre</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Marca</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtMarca" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvMarca" runat="server" ControlToValidate="txtMarca">Ingrese Marca</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Precio Unitario</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtPrecioU" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvPrecio" runat="server" ControlToValidate="txtPrecioU" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Precio</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Categoria</td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="ddlCategoria" runat="server" Height="16px" Width="220px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Stock</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtStock" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvStock" runat="server" ControlToValidate="txtStock" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Stock</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" Width="217px" />
                    </td>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
