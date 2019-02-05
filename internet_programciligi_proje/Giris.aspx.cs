using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace internet_programciligi_proje
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/veritabani/veritabani.accdb"));
            baglanti.Open();
            OleDbCommand komut = new OleDbCommand("select * from uye where uye_mail = '" + mail.Text + "' and uye_sifre = '" + parola.Text + "'", baglanti);
            OleDbDataReader read = komut.ExecuteReader();

            if (read.Read())
            {
                string _ad,_soyad,_mail, _parola;
                _ad = read[1].ToString();
                _soyad = read[2].ToString();
                _mail = read[3].ToString();
                _parola = read[4].ToString();
                if (_mail == mail.Text && _parola == parola.Text)
                {
                    Session["mail"] =_mail;
                    Session["ad"] = _ad;
                    Session["soyad"] = _soyad;
                    Response.Redirect("Admin.aspx");
                }
            }
            else
            {
                bilgi.Text = "Kullanıcı Adı veya Parola Hatalı!";
            }
            baglanti.Close();
        }
    }
}