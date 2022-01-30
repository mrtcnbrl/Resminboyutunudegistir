<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asp.Net Çoklu Resim Yükleme</title>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/multi.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 267px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 267px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
            width: 116px;
        }
        .auto-style7 {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style3" colspan="2">***Yeni En -Boy Değerlerini Giriniz.***</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" Width="128px" />
                </td>
                <td class="auto-style6">Eni&nbsp;&nbsp; (Width) :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style7">Boy (Height) :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Eski Hali :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style7">Yeni Hali :
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="auto-style7">
                    <asp:Image ID="Image2" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
