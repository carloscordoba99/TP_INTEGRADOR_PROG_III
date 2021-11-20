using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao
{
    public class DaoCarritos
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteCarrito(Carrito cat)
        {
            String consulta = "Select * from Categorias where CodCategoria='" + cat.getCodCategoria() + "'";
            return dt.existe(consulta);
        }
    }
}
