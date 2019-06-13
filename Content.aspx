<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClipTrailer" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 id="TitlePost">Summoners War: Sky Arena</h1>
    <p id="ContentPost" class="auto-style1"><br />

        <img src="Other/h12.jpg" /><label style="font-style: italic; text-align: left">Summoners War và những kỉ lục trong 3 năm kể từ ngày phát hành</label><br/><br />

       Summoners War: Sky Arena, hay gọi đơn giản là Summoners War, là một trò chơi điện tử 3D thể loại RPG được phát triển và xuất bản bởi Com2uS. 
        Trò chơi đã được phát hành trên toàn thế giới vào ngày 12 tháng 6 năm 2014, trên cả hai nền tảng iOS lẫn Android, và đến nay đã vượt mốc 80 triệu lượt tải về. 
        Hiện tại, trò chơi có 14 ngôn ngữ khác nhau, bao gồm tiếng Anh và hầu hết các ngôn ngữ châu Âu và châu Á, trong đó có cả tiếng Việt.
        Trò chơi lấy bối cảnh trong một thế giới giả tưởng bao gồm nhiều loại quái vật,
         và những người chơi được gọi là Summoner (pháp sư hiệu triệu) – những người điều khiển những con quái vật này để chiến đấu với nhau nhằm khẳng định sức mạnh.
         Trò chơi tập trung vào việc thu thập những quái vật cho riêng mình, tăng level và phát triển chúng để cạnh tranh với những người chơi khác,
         đồng thời hoàn thành các thử thách PvE (Player versus Environment) khác nhau.<br/><br/>
        
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SiderbarContent" Runat="Server">
        <div id="SidebarTitle">Trò Chơi</div>
    <div id="SidebarBuy">
        <img src="Other/icon.jpg" /><br />
        <a id="SidebarBuyNow" href="https://www.withhive.com/game/desc/313/22">Tải Ngay</a><br />
    </div><br /><br />

    <div id="SidebarTitle">Đăng Nhập</div>
    <div id="SidebarLogin">
        <p>Tài Khoản<br/><asp:TextBox ID="Account" runat="server" Width="160px"></asp:TextBox><br /></p>
        <p>Mật khẩu<br/><asp:TextBox ID="Password" runat="server" Width="160px" TextMode="Password"></asp:TextBox><br/></p>
        <div>
            <a href="Register.aspx">Bạn chưa có tài khoản?</a><br />
            <br />
            <asp:Button ID="OK" runat="server" Text="Đăng Nhập" Width="175px" CssClass="SiderbarButton" OnClick="OK_Click"/>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" Runat="Server">
    
</asp:Content>