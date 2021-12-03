﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProveedor.aspx.cs" Inherits="Vistas.Proveedores.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
            background-color:coral;
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
            text-align:center;
        }
        .auto-style17 {
            width: 258px;
            text-align: right;
        }
        .auto-style13 {
            width: 258px;
            height: 30px;
        }
        .auto-style19 {
            width: 238px;
        }
        .auto-style20 {
            width: 269px;
        }
        .auto-style21 {
            width: 238px;
            height: 30px;
            text-align: center;
        }
        .auto-style22 {
            width: 269px;
            height: 30px;
        }
        table {
		
            margin: 0 auto;
		
            border-collapse: collapse;
        }

    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Proveedor</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Proveedores/AgregarProveedor.aspx">Agregar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Proveedores/EliminarProveedor.aspx">Eliminar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Proveedores/BuscarProveedor.aspx">Buscar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Inicio</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                Agregar proveedor&nbsp;&nbsp;&nbsp; </p>
            <table class="auto-style14" align="center">
                <tr>
                    <td class="auto-style17">Razon social: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtRazonSocial" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ControlToValidate="TxtRazonSocial" ValidationGroup="Group1">Ingrese Razon Social</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Marca: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtMarca" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvMarca" runat="server" ControlToValidate="TxtMarca" ValidationGroup="Group1">Ingrese Marca</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Provincia: </td>
                    <td class="auto-style19">
                    <asp:DropDownList ID="DdlProvincias" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreProvincia" DataValueField="IdProvincia">
                        <asp:ListItem>-- Seleccione Provincia --</asp:ListItem>
                        <asp:ListItem>Cordoba</asp:ListItem>
                        <asp:ListItem>Santa Fe</asp:ListItem>
                        <asp:ListItem>Buenos Aires</asp:ListItem>
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProg3ConnectionString5 %>" SelectCommand="SELECT [IdProvincia], [NombreProvincia] FROM [Provincias]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="DdlProvincias" ValidationGroup="Group1">Ingrese Provincia</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Localidad: </td>
                    <td class="auto-style19">
                    <asp:DropDownList ID="DdlLocalidad" runat="server" DataSourceID="SqlDataSource2" DataTextField="NombreLocalidad" DataValueField="IdLocalidad">
                        <asp:ListItem>-- Seleccione Provincia --</asp:ListItem>
                        <asp:ListItem>Cordoba</asp:ListItem>
                        <asp:ListItem>Santa Fe</asp:ListItem>
                        <asp:ListItem>Buenos Aires</asp:ListItem>
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProg3ConnectionString6 %>" SelectCommand="SELECT * FROM [Localidades]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="DdlLocalidad" ValidationGroup="Group1">Ingrese localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Dirección: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtDireccion" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion" ValidationGroup="Group1">Ingrese Direccion</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Cuit: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtCuit" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvCuit" runat="server" ControlToValidate="TxtCuit" ValidationGroup="Group1">Ingrese numero de Cuit</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Telefono: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtTelefono" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="TxtTelefono" ValidationGroup="Group1">Ingrese Numero de Telefono</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Contacto: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtContacto" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvContacto" runat="server" ControlToValidate="TxtContacto" ValidationGroup="Group1">Ingrese Contacto</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Web: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtWeb" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RegularExpressionValidator ID="revWeb" runat="server" ControlToValidate="TxtWeb" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ValidationGroup="Group1">Ingrese una Pagina web Valida</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Email: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtEmail" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Group1">Ingrese una Direccion de Email Valida</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">CBU: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtCBU" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvCbu" runat="server" ControlToValidate="TxtCBU" ValidationGroup="Group1">Ingrese numero de Cbu</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style21">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" ValidationGroup="Group1" />
                    </td>
                    <td class="auto-style22">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    <br />
    <div>

        <asp:GridView ID="grdListaProveedores" runat="server" HorizontalAlign="Center" Width="1392px">
        </asp:GridView>

    </div>
    </form>
    </body>
</html>
