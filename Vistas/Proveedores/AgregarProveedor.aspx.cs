using Negocio;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Vistas.Proveedores
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProveedores ObjProv = new NegocioProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if(IsPostBack == false)
            {
                AgregarListaProveedores();
                LlenarDropDownList();
            }
        }
        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean Agregado = false;

            String localidad = DdlLocalidad.SelectedValue.ToString();
            String Provincia = DdlProvincias.SelectedValue.ToString();

            DataSet Resultado1 = ConsultarDdl("SELECT NombreProvincia FROM Provincias WHERE IdProvincia='" + Provincia + "'");
            DataSet Resultado2 = ConsultarDdl("SELECT NombreLocalidad FROM Localidades WHERE IdLocalidad='" + localidad + "'");

            DataTable dt = Resultado1.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                Provincia = Convert.ToString(row["NombreProvincia"]);
            }
            dt = Resultado2.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                localidad = Convert.ToString(row["NombreLocalidad"]);
            }
            Agregado = ObjProv.AgregarProveedor(TxtRazonSocial.Text,TxtMarca.Text,TxtDireccion.Text,localidad,Provincia,TxtCuit.Text,TxtTelefono.Text,TxtContacto.Text,TxtEmail.Text,TxtWeb.Text,TxtCBU.Text);
            if (Agregado == true)
            {
                LblMensaje.Text = "Proveedor Agregado.";

            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar el proveedor.";
            }

            LimpiarDatos();
            AgregarListaProveedores();

        }
        public void LimpiarDatos()
        {
            TxtRazonSocial.Text = "";
            TxtMarca.Text = "";
            TxtDireccion.Text = "";
            TxtCuit.Text = "";
            TxtTelefono.Text = "";
            TxtContacto.Text = "";
            TxtEmail.Text = "";
            TxtWeb.Text = "";
            TxtCBU.Text = "";
            DdlProvincias.SelectedIndex = 0;
            DdlLocalidad.SelectedIndex = 0;
        }

        public void AgregarListaProveedores()
        {
            GrdProveedores.DataSource = ObjProv.GetTablaProveedores();
            GrdProveedores.DataBind();
        }

        public void LlenarDropDownList()
        {
            DdlProvincias.DataSource = ConsultarDdl("SELECT * FROM PROVINCIAS");
            DdlProvincias.DataTextField = "NombreProvincia";
            DdlProvincias.DataValueField = "IdProvincia";
            DdlProvincias.DataBind();
            DdlProvincias.Items.Insert(0, new System.Web.UI.WebControls.ListItem("-- Seleccionar provincia --"));
            DdlLocalidad.Items.Insert(0, new System.Web.UI.WebControls.ListItem("-- Seleccionar localidad --"));
        }
        public DataSet ConsultarDdl(String consulta)
        {
            string conexion = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=ProyectoProg3;Integrated Security=True";
            SqlConnection cn = new SqlConnection(conexion);
            cn.Open();
            SqlCommand cmd = new SqlCommand(consulta,cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            return ds;
        }

        protected void DdlProvincias_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlProvincias.SelectedIndex == 0)
            {
                DdlLocalidad.SelectedIndex = 0;
            }
            else
            {
                int ProvinciaId = Convert.ToInt32(DdlProvincias.SelectedValue);
                DdlLocalidad.DataSource = ConsultarDdl("SELECT * FROM LOCALIDADES WHERE IdProvincia='" + Convert.ToString(ProvinciaId) + "'");
                DdlLocalidad.DataTextField = "NombreLocalidad";
                DdlLocalidad.DataValueField = "IdLocalidad";
                DdlLocalidad.DataBind();
                DdlLocalidad.Items.Insert(0, new System.Web.UI.WebControls.ListItem("-- Seleccionar localidad --"));
            }
        }
    }
}