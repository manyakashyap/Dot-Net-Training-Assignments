<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="ASP.Net_Assgn_1.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript">
          function ValidateLength(oSrc, args) {
              if (args.Value.length >= 2) {
                  args.IsValid = true;
              }
              else {
                  args.IsValid = false;
              }
              
          }
      </script>
 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Insert Your&nbsp; Details:<br />
            <br />
            <br />
            Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name" ControlToValidate="TextName" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            Family Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextFamilyName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="FamilyName" ControlToValidate="TextFamilyName" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Differs from Name" ControlToCompare="TextName" ControlToValidate="TextFamilyName" ValidationGroup="V1"></asp:CompareValidator>
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextAddress" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address" ControlToValidate="TextAddress" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateLength" ControlToValidate="TextAddress" ErrorMessage="at least 2 chars" ValidationGroup="V1"></asp:CustomValidator>
            <br />
            <br />
            <br />
            City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextCity" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City" ControlToValidate="TextCity" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="ValidateLength" ControlToValidate="TextCity" ErrorMessage="at least 2 chars" ValidationGroup="V1"></asp:CustomValidator>
            <br />
            <br />
            <br />
            Zip Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextZip" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="ZipCode" ControlToValidate="TextZip" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(xxxxx)" ControlToValidate="TextZip" ValidationExpression="\d{6}" ValidationGroup="V1"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            Phone :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextPhone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone" ControlToValidate="TextPhone" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="(xx-xxxxxxx / xxx-xxxxxxx)" ControlToValidate="TextPhone" ValidationExpression="(^[0-9]{2}-[0-9]{8}$)|(^[0-9]{3}-[0-9]{7}$)" ValidationGroup="V1"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            E-Mail :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextEMail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email" ControlToValidate="TextEMail" ForeColor="Red" ValidationGroup="V1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextEMail" ErrorMessage="example@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="V1"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Btn" runat="server" Text="Check" OnClick="BtnCheck_Click" ValidationGroup="V1" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="ValidationSum" ShowMessageBox="True" ValidationGroup="V1" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
