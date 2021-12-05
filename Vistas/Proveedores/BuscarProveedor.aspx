<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProveedor.aspx.cs" Inherits="Vistas.Proveedores.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
            text-align: center;
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
        

        p,td{
            text-align:center;
        }

        .auto-style19 {
            width: 70%;
            text-align:center;

        }
        
        
        .auto-style20 {
            width: 96%;
            text-align: center;
            position:center;
        }
        
        
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Home</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                <strong>Buscar Proveedor</strong></p>
            <div>
                <table class="auto-style19">
                    <tr>
                        <td>&nbsp;Ingrese código de Proveedor: 
                        </td>
                        <td> 
                        <asp:TextBox ID="TxtIdProveedor" runat="server" Width="303px"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                        <asp:Button ID="BtnBuscar" runat="server" CssClass="auto-style14" Text="Buscar" Width="113px" OnClick="BtnBuscar_Click" />
                        </td>
                        <td><asp:Button ID="BtnMostarTodos" runat="server" OnClick="btnMostarTodos_Click" Text="Mostar Todos" />
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <table class="auto-style20">
                 <tr>
                    <td class="auto-style5" colspan="3">
            <asp:GridView ID="GrdProveedores" runat="server" Width="1392px" AutoGenerateColumns="False" HorizontalAlign="Center" AutoGenerateEditButton="True" OnRowCancelingEdit="GrdProveedores_RowCancelingEdit" OnRowEditing="GrdProveedores_RowEditing" OnRowUpdating="GrdProveedores_RowUpdating" >
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
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
