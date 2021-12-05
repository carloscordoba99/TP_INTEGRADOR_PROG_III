using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using System.Data;
using Negocio;
using System.Data.SqlClient;



namespace Vistas.Usuario
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if(IsPostBack == false)
            {
                LlenarDropDownList();
            }
           
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

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

            agregado = negUsuarios.AgregarUsuario(txtNom.Text, txtApellido.Text, txtEmail.Text, txtNumCel.Text, txtDni.Text, TxtDireccion.Text, Provincia, localidad, txtContrasenia.Text, Convert.ToInt32 (ddlTipo.SelectedValue.ToString()));
            if (agregado == true)
            {
                lblMensaje.Text = "El Usuario ha sido agregado";
            }
            else
            {
                lblMensaje.Text = "El Usuario no ha sido Agregado, porque ya existe usuario con ese DNi";
            }

            LimpiarTexbox();
          
        }
        public void LimpiarTexbox()
        {
            txtNom.Text = "";
            txtApellido.Text = "";
            txtEmail.Text = "";
            txtNumCel.Text = "";
            TxtDireccion.Text = "";
            txtDni.Text = "";
            txtContrasenia.Text = "";
            txtContraseniaRevision.Text = "";
            ddlTipo.SelectedIndex = 0;
            DdlLocalidad.SelectedIndex = 0;
            DdlProvincias.SelectedIndex = 0;
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
            SqlCommand cmd = new SqlCommand(consulta, cn);
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