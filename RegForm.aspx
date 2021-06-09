<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="VaccineRegistrationForm.RegForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: silver;
}


     </style>
</head>
<body>
    <div><h1>Employee Registeration Form</Form></h1></div>
    <div><p>Please fill in this form to get Vaccinated.</p></div>
    <form id="form1" runat="server">
        <div>
            <tr>
                <td class="Style1">EmployeeId</td>
                <td class="container">
                    <div><asp:TextBox ID="txtEmployeeId" runat="server" placeholder="Enter Your Employee Id"></asp:TextBox></td></div>
            </tr>
        </div>
        <div>
            <tr>
                <td class="Style1">FullName</td>
                <td class="container">
                    <div><asp:TextBox ID="txtFullName" runat="server" placeholder="Enter Your Full Name"></asp:TextBox></td></div>
            </tr>
        </div>
        <div>
            <tr>
                <td>Age</td>
                <td> <div>
                    <asp:RadioButton GroupName="Age" ID="RadioButton4" runat="server" Text="Above 18" OnCheckedChanged="RadioButton4_CheckedChanged1"/><br />
                    <asp:RadioButton GroupName="Age" ID="RadioButton5" runat="server" Text="Below 18" OnCheckedChanged="RadioButton5_CheckedChanged1"/></div>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>Gender</td>
                <td><div>
                    <asp:RadioButton GroupName="Gender" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged"/><br/>
                    <asp:RadioButton GroupName="Gender" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged"/><br/>
                    <asp:RadioButton GroupName="Gender" ID="RadioButton3" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged"/></div>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>Preffered Vaccine</td>
                <td><div>
                    <asp:RadioButton GroupName="Vaccine" ID="RadioButton6" runat="server" Text="Covaxin" OnCheckedChanged="RadioButton6_CheckedChanged1"/><br/>
                    <asp:RadioButton GroupName="Vaccine" ID="RadioButton7" runat="server" Text="Covisheild" OnCheckedChanged="RadioButton7_CheckedChanged1"/><br/>
                    <asp:RadioButton GroupName="Vaccine" ID="RadioButton8" runat="server" Text="Sputnik V" OnCheckedChanged="RadioButton8_CheckedChanged1"/></div>
                </td>
            </tr>
        </div>
        <div>
            <tr>
                <td>City</td>
                <td>
                    <div><asp:TextBox ID="txtCity" runat="server" placeholder="Enter Your City"></asp:TextBox></td></div>
            </tr>
        </div>
        <div>
            <tr>
                <td>MobileNumber</td>
                <td>
                    <div><asp:TextBox ID="txtMobileNumber" runat="server" placeholder= "+91 0000 000 000"></asp:TextBox></td></div>
            </tr>
        </div>
        <div>
            <tr>
                <td>EmailId</td>
                <td>
                    <div><asp:TextBox ID="txtEmailId" runat="server" placeholder="Enter Your Email Id" TextMode="Email"></asp:TextBox></td></div>
            </tr>
        </div>
        <div>
            <tr>
                <td>Password</td>
                <td>
                    <div><asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox></td></div>
            </tr>
        </div>
        <div><p>By Click on Register you agree to our <a href="#">Terms & Conditions</a>.</p></div>
        <div>
            <tr>
                <td></td>
                <td class="registerbtn">
                    <asp:Button ID="BtnReg" runat="server" Text="Register" OnClick="BtnReg_Click1" /></td>
            </tr>
        </div>
    </form>
</body>
</html>
