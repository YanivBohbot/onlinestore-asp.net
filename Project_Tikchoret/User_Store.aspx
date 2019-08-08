<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_Store.aspx.cs" Inherits="Project_Tikchoret.Store" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-decoration: underline;
            color: #CC33FF;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="nike-cq-nav-section nike-cq-nav-section-0">
    <a class="nike-cq-nav-section-title-link" href="http://www.nike.com/us/en_us/c/men#">
    <h3 class="nike-cq-nav-section-title nsg-font-family--platform">&nbsp;</h3>
    </a>
    <div class="nike-cq-left-navigation-nav-links-wrapper">
        <p>
            &nbsp;</p>
        <p>
            <a class="nike-cq-nav-section-link" data-tracking="MEN'S PRODUCTS&gt;SHOP&gt;Accessories &amp; Equipment" href="http://store.nike.com/us/en_us/pw/mens-accessories-equipment/7puZobv" target="">t</a><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Id_pro] = @Id_pro)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButton1_first_product" DefaultValue="4" Name="Id_pro" PropertyName="Checked" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Id_pro] = @Id_pro)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButton1_sec_product" DefaultValue="5" Name="Id_pro" PropertyName="Checked" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/nike-air-jordan-4-white-cement-2016-836015-192-670x408.jpg" style="text-align: left" Width="198px" />
            <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Nike-Roshe-Run-Femme-Noir-Blanc-nicolasanelka12377-iQlAFj0Vh.jpg" Width="219px" />
        </p>
        <p>
            <asp:RadioButton ID="RadioButton1_first_product" runat="server" Text="Air jordan  23$" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1_sec_product" runat="server" Text="NIKE KNITE  24$" />
        </p>
    </div>
</section>
    <p class="auto-style13" style="text-align: center">
&nbsp; 99 DOLLLAR !!!!</p>
    <p class="auto-style13" style="text-align: center">
        <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/nike-air-max-bw-denim-1.jpg" Width="245px" />
        <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/nikemags2015.jpg.png" Width="253px" style="text-align: right" />
    </p>
<p class="auto-style13" style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p class="auto-style13" style="text-align: center">
        &nbsp;</p>
    <p class="auto-style13" style="text-align: center">
        <asp:Image ID="Image11" runat="server" Height="168px" ImageUrl="~/Images/Roshe-Run-Print-01_4.jpg" Width="250px" />
        <asp:Image ID="Image12" runat="server" Height="167px" ImageUrl="~/Images/Nike-Roshe-Run-Femme-Noir-Blanc-nicolasanelka12377-iQlAFj0Vh.jpg" style="margin-left: 62px" Width="250px" />
    </p>
<p class="auto-style13" style="text-align: center">
        &nbsp;</p>
    <p class="auto-style13" style="text-align: center">
        <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="BUY !" Width="178px" />
    </p>
    <br />
</asp:Content>
