<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register_page.aspx.cs" Inherits="practical_4.register_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="Invalid email" ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="Label6" runat="server" Text="Contact No."></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Contact No. is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter valid 10 digit contact number" ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="Label7" runat="server" Text="College"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="College is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="Computer">Computer</asp:ListItem>
                <asp:ListItem Value="Civil">Civil</asp:ListItem>
                <asp:ListItem Value="Chemical">Chemical</asp:ListItem>
                <asp:ListItem Value="Mechanical">Mechanical</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Department is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Event"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="">-- Select Event --</asp:ListItem>
                <asp:ListItem Value="E1">E1</asp:ListItem>
                <asp:ListItem Value="E2">E2</asp:ListItem>
                <asp:ListItem Value="E3">E3</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Event is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label8" runat="server" Text="Skill"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="C#">C#</asp:ListItem>
                <asp:ListItem Value="AI">AI</asp:ListItem>
                <asp:ListItem Value="Python">Python</asp:ListItem>
            </asp:CheckBoxList>
            <br />

            <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="TextArea1" runat="server" TextMode="MultiLine" Rows="3" Columns="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextArea1" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label10" runat="server" Text="Terms and Conditions"></asp:Label>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to the terms and conditions" />
            <br /><br />

            <asp:Button ID="Submit1" runat="server" Text="Submit" OnClick="Submit1_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>