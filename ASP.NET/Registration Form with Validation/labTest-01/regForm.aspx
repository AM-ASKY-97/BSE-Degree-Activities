<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regForm.aspx.cs" Inherits="labTest_01.regForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 210px;
            text-align: right;
        }
        .auto-style5 {
            width: 335px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Employee Registration Form"></asp:Label>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Title"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:ListBox ID="lTitle" runat="server">
                        <asp:ListItem>Dr.</asp:ListItem>
                        <asp:ListItem>Mr.</asp:ListItem>
                        <asp:ListItem>Ms.</asp:ListItem>
                        <asp:ListItem>Mrs.</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lTitle" ErrorMessage="Title Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Name With Initials"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Date Of Birth"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="DOB is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Contact No"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContact" ErrorMessage="Contact number is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" ForeColor="Blue" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Email"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email must be in the  correct format" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="LinkedIn URL"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLinkedIn" runat="server" TextMode="Url"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLinkedIn" ErrorMessage="URL is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLinkedIn" ErrorMessage="Must Be correct Format" Font-Italic="True" ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" ForeColor="Blue" Text="Upload CV"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:FileUpload ID="fileCV" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fileCV" ErrorMessage="Cv is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Add a secret word"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSecret" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtSecret" ErrorMessage="Secret word is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" ForeColor="Blue" Text="Secret word Confirm "></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtReEnterSecret" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtReEnterSecret" ErrorMessage="Re-enter secret word" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSecret" ControlToValidate="txtReEnterSecret" ErrorMessage="Enter Same secret word" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#00FFCC" OnClick="btnSubmit_Click" Text="SUBMIT" />
                </td>
                <td>
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
