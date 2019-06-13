using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Controls_ReGisascx : System.Web.UI.UserControl
{
    SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendButton_Click(object sender, EventArgs e)
    {
        string trung = "select Name from [Table] where Name ='"+Name.Text+"'" ;

        if(Checkkey(trung)==true)
        {
            Response.Write("<script>alert('Tên tài khoản đã có rồi !!!Vui lòng nhập lại');</script>");
        }
        else{
        string ins="Insert into [Table](Name,Password,ConfirmPass) values('"+Name.Text+"','"+Password.Text+"','"+ConfirmPass.Text+"')";
        SqlCommand com = new SqlCommand(ins, conn);
        conn.Open();
        com.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Chúc mừng bạn đã đăng ký thành công !!!');</script>");
         
        }
    }

    public  bool Checkkey(String sql)
    {

        SqlDataAdapter my_data = new SqlDataAdapter(sql,conn);
        DataTable table = new DataTable();
        my_data.Fill(table);
        if (table.Rows.Count > 0)
            return true;
        else
            return false;
    }


    protected void ConfirmPass_TextChanged(object sender, EventArgs e)
    {

    }
}