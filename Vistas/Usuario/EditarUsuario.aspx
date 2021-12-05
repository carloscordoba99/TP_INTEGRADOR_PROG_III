<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="Vistas.Usuario.EditarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Usuario</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align: center;
            background-color: #FF9900;
            border-radius: 15px;
            
        }
        .auto-style2 {
            font-size: x-large;
        }
        div{
            text-align:center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 249px;
        }
        .auto-style5 {
            width: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
            <table class="auto-style1">
                <tr>
                    <td rowspan="2" class="auto-style2" >Editar Usuario</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/AgregarUsuario.aspx">Agregar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Usuario/EliminarUsuario.aspx">Eliminar Usuario</asp:HyperLink>
                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Usuario/BuscarUsuario.aspx">Buscar Usuario</asp:HyperLink>
                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Usuario/EditarUsuario.aspx">Editar Usuario</asp:HyperLink>
                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PanelAdm.aspx">Inicio</asp:HyperLink>
                    </td>
                </tr>
            </table>
             
        </div>
        <br />
    <div>

                    <asp:GridView ID="grdUsuarios" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" AutoGenerateEditButton="True" OnRowCancelingEdit="grdUsuarios_RowCancelingEdit" OnRowEditing="grdUsuarios_RowEditing" OnRowUpdating="grdUsuarios_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="ID CLIENTE">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_idcliente" runat="server" Text='<%# Bind("IdCliente") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_idcliente" runat="server" Text='<%# Bind("IdCliente") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="NOMBRE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APELLIDO">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PROVINCIA">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_provincia" runat="server" Text='<%# Bind("Provincia") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_provincia" runat="server" Text='<%# Bind("Provincia") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LOCALIDAD">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_localidad" runat="server" Text='<%# Bind("Provincia") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_localidad" runat="server" Text='<%# Bind("Localidad") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DIRECCION">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CELULAR">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_celular" runat="server" Text='<%# Bind("Celular") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_celular" runat="server" Text='<%# Bind("Celular") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DNI">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_dni" runat="server" Text='<%# Bind("Dni") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EMAIL">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_email" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_email" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CONTRASEÑA">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_contrasena" runat="server" Text='<%# Bind("Contrasena") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_contrasena" runat="server" Text='<%# Bind("Contrasena") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TIPO DE USUARIO">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_tipousuario" runat="server" Text='<%# Bind("TipoUsuario") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_tipousuario" runat="server" Text='<%# Bind("TipoUsuario") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />

                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
