using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["AutomobiliDb"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {  
           SqlConnection conn = new SqlConnection(connectionString);

            try
            {
                conn.Open();
               // SqlCommand cmd = new SqlCommand("SELECT ModelloAuto, Immagine, Prezzo FROM Automobili1", conn);
                // SqlDataReader dataSelect = cmd.ExecuteReader();
                // Popolare la dropdown con tutte le categorie
                SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT IdAuto, ModelloAuto, Immagine, Prezzo FROM Automobili1", conn);
                DataTable tbAuto = new DataTable();
                dataAdapter.Fill(tbAuto);

                foreach (DataRow row in tbAuto.Rows)
                {
                    ListItem listItem = new ListItem();
                    listItem.Text = row["ModelloAuto"].ToString();
                    listItem.Value = row["IdAuto"].ToString();
                    AutoModel.Items.Add(listItem);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally { conn.Close(); }
        }
    }
}