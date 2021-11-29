<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUsuario.aspx.cs" Inherits="Vistas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 1203px;
        }
        .auto-style8 {
            width: 1230px;
        }
        </style>
</head>
<body style="margin: 30px 100px">
    <form id="form1" runat="server">
        <div>
            <nav> 
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Button ID="BtnCerrarSesion" runat="server" OnClick="BtnCerrarSesion_Click" Text="Cerrar sesión" Width="118px" />
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtbuscar" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" Width="100px" />
                        </td>
                        <td class="auto-style2">
                            <asp:Button ID="BtnCarrito" runat="server" Text="Ir al carrito" Width="100px" OnClick="BtnCarrito_Click" />
                        </td>
                        <td class="auto-style2">
                            <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </nav>
            <asp:Label ID="LblProductoAgregado" runat="server"></asp:Label>
            <asp:ListView ID="LVproductos" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FAFAD2; color: #284775;">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl='<%# Eval("ImagenURL") %>' Width="200px" />
                        <br />
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' Width="200px"></asp:Label>
                        <br />
                        Precio: $
                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                        <br />
                        <asp:Button ID="BtnCarrito" runat="server" CommandArgument='<%# Eval("CodArticulo") %>' CommandName="EventoAgregar" OnCommand="BtnCarrito_Command" Text="Agregar al carrito" Width="200px" />
                        <br /></td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #FFCC66;color: #000080;">ImagenUrl:
                        <asp:TextBox ID="ImagenUrlTextBox" runat="server" Text='<%# Bind("ImagenUrl") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />PrecioUnitario:
                        <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">ImagenUrl:
                        <asp:TextBox ID="ImagenUrlTextBox" runat="server" Text='<%# Bind("ImagenUrl") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />PrecioUnitario:
                        <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #FFFBD6; color: #333333;">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("ImagenUrl") %>' Width="200px" />
                        <br />
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' Width="200px" />
                        <br />Precio: $
                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                        <br />
                        <asp:Button ID="BtnCarrito" runat="server" CommandArgument='<%# Eval("CodArticulo") %>' CommandName="EventoAgregar" OnCommand="BtnCarrito_Command" Text="Agregar al carrito" Width="200px" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">ImagenUrl:
                        <asp:Label ID="ImagenUrlLabel" runat="server" Text='<%# Eval("ImagenUrl") %>' />
                        <br />Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />PrecioUnitario:
                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoProg3ConnectionString %>" SelectCommand="SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
