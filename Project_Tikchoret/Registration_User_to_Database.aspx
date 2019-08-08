<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration_User_to_Database.aspx.cs" Inherits="Project_Tikchoret.Registration_User_to_Database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        width: 511px;
    }
    .auto-style14 {
        width: 511px;
        height: 29px;
    }
    #Reset1 {
        width: 116px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="margin-top: 0px">
    <tr>
        <td class="auto-style13">FirstName:<asp:TextBox ID="TextBox1_first_name" runat="server" style="margin-left: 28px" Width="156px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1_first_name" Display="Dynamic" ErrorMessage="First Name is required !" ForeColor="Lime"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Last Name:<asp:TextBox ID="TextBox2_Last_Name" runat="server" style="margin-left: 22px" Width="162px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2_Last_Name" ErrorMessage="Last Name is required !" ForeColor="Lime"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">city/town:<asp:TextBox ID="TextBox3_city_town" runat="server" style="margin-left: 30px" Width="159px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3_city_town" Display="Dynamic" ErrorMessage="City is required !" ForeColor="#66FF33"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">adress:<asp:TextBox ID="TextBox4_adress" runat="server" style="margin-left: 55px" Width="167px"></asp:TextBox>
            :<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4_adress" Display="Dynamic" ErrorMessage="Adress is required !" ForeColor="#99FF33"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">postal code:<asp:TextBox ID="TextBox5_popstal_code" runat="server" style="margin-left: 13px" Width="188px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">country:<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="285px" style="margin-left: 32px">
            <asp:ListItem>Select Country</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>FRANCE</asp:ListItem>
            <asp:ListItem>ISRAEL</asp:ListItem>
            <asp:ListItem>CHINA</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">id number:<asp:TextBox ID="TextBox7_id_number" runat="server" style="margin-left: 16px" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">email:<asp:TextBox ID="TextBox8_email" runat="server" style="margin-left: 49px" Width="192px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8_email" Display="Dynamic" ErrorMessage="Mail is required !" ForeColor="#99FF33">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8_email" Display="Dynamic" ErrorMessage="it must be a valid Email !" ForeColor="#FFCC00" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">UserName:<asp:TextBox ID="TextBox9_username" runat="server" style="margin-left: 15px" Width="187px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox9_username" Display="Dynamic" ErrorMessage="UserName is required !" ForeColor="#66FF33">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Password :<asp:TextBox ID="TextBox10_password" runat="server" style="margin-left: 20px" Width="164px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox10_password" Display="Dynamic" ErrorMessage="Password is required !" ForeColor="#99FF33">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox10_password" Display="Dynamic" ErrorMessage="it must be a valid password !(8-20 charac ,at least one uppercase,one lowercase,one number)" ForeColor="#FFCC00" ValidationExpression="^(?=.{8,20}$)(?=.*[A-Z].*)(?=.*[a-z].*)(?=.*[0-9].*)[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Confirm Password:
            <asp:TextBox ID="Confirm_password" runat="server" style="margin-left: 2px" Width="208px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Confirm_password" Display="Dynamic" ErrorMessage="Confirm Password is required !" ForeColor="#99FF33">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10_password" ControlToValidate="Confirm_password" ErrorMessage="The password must to be the same" ForeColor="Yellow"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Method payment&nbsp; :
            <asp:RadioButton ID="Method_payment_credit_ordebitcard" runat="server" Text="Credit or Debit Card" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="Method_payment_paypal" runat="server" Text="Paypal" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Name of card :<asp:TextBox ID="TextBox11_name_of_card" runat="server" style="margin-left: 13px" Width="196px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Card Number:
            <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 14px" Width="196px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Expiration date :
            <asp:DropDownList ID="DropDownList1_day_expi" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
&nbsp;/<asp:DropDownList ID="DropDownList2_month_expir" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Button ID="Button1_Submit_registration" runat="server" style="text-align: right" Text="Submit" Width="188px" OnClick="Button1_Submit_registration_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" type="reset" value="reset" /><br />
        </td>
    </tr>
</table>
</asp:Content>
