using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace internet_programciligi_proje
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ad"] == null || Session["soyad"].ToString() == "")
            {
                Response.Redirect("Giris.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/veritabani/veritabani.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand("insert into gonderiler(gonderi,gonderi_konu,gonderen,tarih) values('" + icerik.Text + "','" + konu.Text + "','" + Session["ad"].ToString()+ " " + Session["soyad"].ToString() + "','" + DateTime.Now.ToShortDateString() + "')", baglanti);
            if (icerik.Text != "" || konu.Text != "")
            {
                komut.ExecuteNonQuery();
                Response.Redirect("Admin.aspx");
            }
            baglanti.Close();
            konu.Text = "";
            icerik.Text = "";
        }
    }
}