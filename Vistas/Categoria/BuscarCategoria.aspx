<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarCategoria.aspx.cs" Inherits="Vistas.Categoria.BuscarCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            text-align:center;
            margin: 0 auto;
            border-collapse: collapse;
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
            width: 305px;
            text-align: right;
        }
        .auto-style17 {
            width: 100%;
            background-color: #FF9900;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            width: 97%;
            text-align: center;
            margin: 0 auto;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style17">
        <tr>
            <td class="auto-style3">Categorias</td>
            <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Categoria/AgregarCategoria.aspx">Crear Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Categoria/EliminarCategoria.aspx">Eliminar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Categoria/BuscarCategoria.aspx">Buscar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/PanelAdm.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        

    </table>
            <p class="auto-style12">
                <strong>Buscar Categoria</strong></p>
            <div>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style24">Ingrese ID de Categoria: </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtIdCategoria" runat="server" Width="488px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="135px" OnClick="btnBuscar_Click" />
                    </td>
                    <td class="auto-style25">
                        <asp:Button ID="btnTodos" runat="server" Text="Mostrar Todos" Width="135px" OnClick="btnTodos_Click" />
                    </td>
                </tr>
            </table>
        </div>
            <br />
            <div class="auto-style23">
                
                <asp:GridView ID="grdCategorias" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="grdCategorias_RowCancelingEdit" OnRowEditing="grdCategorias_RowEditing" OnRowUpdating="grdCategorias_RowUpdating" HorizontalAlign="Center">
                    <Columns>
                        <asp:TemplateField HeaderText="CODIGO CATEGORIA">
                            <EditItemTemplate>
                                <asp:Label ID="lbl_eit_CodCat" runat="server" Text='<%# Bind("CodCategoria") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_codcat" runat="server" Text='<%# Bind("CodCategoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NOMBRE">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("NombreCategoria") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_NomCat" runat="server" Text='<%# Bind("NombreCategoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DESCRIPCION">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </div>
            
        </div>
    </form>
</body>
</html>


