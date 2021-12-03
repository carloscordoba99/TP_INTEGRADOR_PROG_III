<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProducto.aspx.cs" Inherits="Vistas.Producto.BuscarProducto" %>

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
        .auto-style13 {
            width: 429px;
            text-align: right;
        }
        .auto-style15 {
            width: 348px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Producto</td>
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
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
            <p class="auto-style12">
                <strong>Buscar Producto</strong></p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Ingrese ID del Producto: </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtIdProd" runat="server" Width="320px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </td>
                    <td>
                        <asp:Button ID="btnMostarTodos" runat="server" OnClick="btnMostarTodos_Click" Text="Mostar Todos" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="grdProductos" runat="server" Width="1392px" AutoGenerateColumns="False" HorizontalAlign="Center" AutoGenerateEditButton="True" OnRowCancelingEdit="grdProductos_RowCancelingEdit" OnRowEditing="grdProductos_RowEditing" OnRowUpdating="grdProductos_RowUpdating" >
                <Columns>
                    <asp:TemplateField HeaderText="Codigo Articulo">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_eit_CodigoArticulo" runat="server" Text='<%# Bind("CodArticulo") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_CodProducto" runat="server" Text='<%# Bind("CodArticulo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre Articulo">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_NombreArt" runat="server" Text='<%# Bind("NombreArticulo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_NombreArt" runat="server" Text='<%# Bind("NombreArticulo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripcion">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio Unitario">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_PrecioUnitario" runat="server" Text='<%# Bind("PrecioUnitario") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_PrecioUnitario" runat="server" Text='<%# Bind("PrecioUnitario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Estado" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Estado" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Codigo Categoria">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_CodCat" runat="server" Text='<%# Bind("CodCategoria") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_CodCategoria" runat="server" Text='<%# Bind("CodCategoria") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Stock">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Stock" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Stock" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Imagen">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_ImagenUrl" runat="server" Text='<%# Bind("ImagenUrl") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Imagen" runat="server" Text='<%# Bind("ImagenUrl") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Codigo de Proveedor">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_CodProveedor" runat="server" Text='<%# Bind("CodProveedor") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_CodProveedor" runat="server" Text='<%# Bind("CodProveedor") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
