using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace internet_programciligi_proje
{
    public partial class Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/veritabani/veritabani.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand("insert into uye(uye_adi,uye_soyadi,uye_mail,uye_sifre) values('" + ad.Text + "','" + soyad.Text + "','"+mail.Text+"','"+parola.Text+"')", baglanti);
            if (ad.Text != "" || soyad.Text != "" ||mail.Text != "" ||parola.Text != "" || parolaT.Text != "")
            {
                if (parola.Text == parolaT.Text)
                {
                    komut.ExecuteNonQuery();
                    Response.Redirect("Giris.aspx");
                }
            }
        }
    }
}