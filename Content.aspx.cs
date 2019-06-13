using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Content : BasePage
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void OK_Click(object sender, EventArgs e)
    {
        string check = "select count (*) from [Table] where Name='" + Account.Text + "'and Password='" + Password.Text + "' ";
        SqlCommand com = new SqlCommand(check,con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Response.Redirect("AccountInfo.aspx");
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Tài khoản hoặc mật khẩu không đúng! Vui lòng kiểm tra lại";
        }
    }
}