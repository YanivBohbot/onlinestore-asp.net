<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Tikchoret.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {            width: 107px;
        }
        .auto-style14 {
            width: 292px;
        }
        .auto-style15 {
            text-align: center;
            height: 35px;
        }
        .auto-style17 {
            width: 292px;
            height: 30px;
        }
        .auto-style18 {
            height: 30px;
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="height: 111px">
        <tr>
            <td class="auto-style18">USERNAME:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1_Username" runat="server" Height="20px" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">PASSWORD:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2_Password" runat="server" Height="24px" Width="302px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
                <asp:Button ID="Button1_login" runat="server" Height="24px" Text="LOgin" Width="102px" OnClick="Button1_login_Click" style="margin-left: 0px" />
            </td>
        </tr>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label_result" runat="server" Text="lb_result"></asp:Label>
    </table>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE (([UserName] = @UserName) AND ([Password] = @Password))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1_Username" Name="UserName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2_Password" Name="Password" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    If Your not a menber !!!! REgister yourself !</p>
<p>
    REgistration
    <asp:Button ID="Button1_Registration" runat="server" OnClick="Button1_Registration_Click" Text="Registration " Width="180px" />
</p>
<p>
</p>
</asp:Content>
