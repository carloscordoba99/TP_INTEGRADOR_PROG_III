<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProveedor.aspx.cs" Inherits="Vistas.Proveedores.WebForm1" %>

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
            width: 62%;
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

        .auto-style23 {
            width: 258px;
            text-align: right;
            height: 46px;
        }
        .auto-style24 {
            width: 238px;
            height: 46px;
        }
        .auto-style25 {
            width: 269px;
            height: 46px;
        }
        .auto-style26 {
            width: 258px;
            text-align: right;
            height: 68px;
        }
        .auto-style27 {
            width: 238px;
            height: 68px;
        }
        .auto-style28 {
            width: 269px;
            height: 68px;
        }
        .auto-style29 {
            width: 303px;
        }
        .auto-style30 {
            width: 303px;
            height: 46px;
        }
        .auto-style31 {
            width: 303px;
            height: 68px;
        }
        .auto-style32 {
            width: 303px;
            height: 30px;
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
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ControlToValidate="TxtRazonSocial" ValidationGroup="Group1">Ingrese Razon Social</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Marca: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtMarca" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvMarca" runat="server" ControlToValidate="TxtMarca" ValidationGroup="Group1">Ingrese Marca</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Provincia: </td>
                    <td class="auto-style19">
                    <asp:DropDownList ID="DdlProvincias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlProvincias_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style29">
                    <asp:RequiredFieldValidator ID="frProvincia" runat="server" ControlToValidate="DdlProvincias" InitialValue="-- Seleccionar provincia --" ValidationGroup="Group1">Elija una Provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Localidad: </td>
                    <td class="auto-style19">
                    <asp:DropDownList ID="DdlLocalidad" runat="server" AutoPostBack="True" Width="214px">
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style29">
                    <asp:RequiredFieldValidator ID="frProvincia0" runat="server" ControlToValidate="DdlLocalidad" InitialValue="-- Seleccionar localidad --" ValidationGroup="Group1">Elija una Localidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Dirección: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtDireccion" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion" ValidationGroup="Group1">Ingrese Direccion</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">Cuit: </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TxtCuit" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
                        <asp:RequiredFieldValidator ID="rfvCuit" runat="server" ControlToValidate="TxtCuit" ValidationGroup="Group1">Ingrese numero de Cuit</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style25">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Telefono: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtTelefono" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="TxtTelefono" ValidationGroup="Group1">Ingrese Numero de Telefono</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Contacto: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtContacto" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvContacto" runat="server" ControlToValidate="TxtContacto" ValidationGroup="Group1">Ingrese Contacto</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">Web: </td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TxtWeb" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style31">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtWeb" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese pagina Web</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style28">
                        <asp:RegularExpressionValidator ID="revWeb" runat="server" ControlToValidate="TxtWeb" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ValidationGroup="Group1">Ingrese una Pagina web Valida</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Email: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtEmail" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese pagina email</asp:RequiredFieldValidator>
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
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfvCbu" runat="server" ControlToValidate="TxtCBU" ValidationGroup="Group1">Ingrese numero de Cbu</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style21">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" ValidationGroup="Group1" />
                    </td>
                    <td class="auto-style32">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    <br />
    <div>

            <asp:GridView ID="GrdProveedores" runat="server" Width="1392px" AutoGenerateColumns="False" HorizontalAlign="Center" >
                <Columns>
                    <asp:TemplateField HeaderText="Codigo Proveedor">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_eit_CodPro" runat="server" Text='<%# Bind("Cod_Proveedor_Pr") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_CodProv" runat="server" Text='<%# Bind("Cod_Proveedor_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Razon Social">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_RazonSocial" runat="server" Text='<%# Bind("RazonSocial_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_RazonSocial" runat="server" Text='<%# Bind("RazonSocial_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Marca">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Marca" runat="server" Text='<%# Bind("Marca_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Marca" runat="server" Text='<%# Bind("Marca_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Direccion">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Direccion" runat="server" Text='<%# Bind("Direccion_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Direccion" runat="server" Text='<%# Bind("Direccion_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ciudad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Ciudad" runat="server" Text='<%# Bind("Localidad_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Ciudad" runat="server" Text='<%# Bind("Localidad_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provincia">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Provincia" runat="server" Text='<%# Bind("Provincia_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Provincia_Pr" runat="server" Text='<%# Bind("Provincia_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cuit">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Cuit" runat="server" Text='<%# Bind("Cuit_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Cuit" runat="server" Text='<%# Bind("Cuit_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("Telefono_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Telefono" runat="server" Text='<%# Bind("Telefono_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contacto">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Contacto" runat="server" Text='<%# Bind("Contacto_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Contacto" runat="server" Text='<%# Bind("Contacto_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Web">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Web" runat="server" Text='<%# Bind("Web_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Web" runat="server" Text='<%# Bind("Web_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Email" runat="server" Text='<%# Bind("Email_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Email" runat="server" Text='<%# Bind("Email_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CBU">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_CBU" runat="server" Text='<%# Bind("CBU_Pr") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Cbu" runat="server" Text='<%# Bind("CBU_Pr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

    </div>
    </form>
    </body>
</html>
