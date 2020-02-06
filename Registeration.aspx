<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="WebApplication.Registeration" MasterPageFile="~/MasterPage.Master" %>
 
<asp:Content ID="ContentId" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    
      <style type="text/css">
        #Reset1 {
            width: 75px;
            margin-left: 76px;
        }
    </style>


        <table align="center">
            <h1><pre>                           REGISTATION PAGE                </pre> </h1>
            <h1></h1>
            <tr>
                <td>
                    <asp:Label ID="lblFirstname" runat="server" Text="FirstName"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtName" runat="server" ForeColor="Red" ErrorMessage="FirstName is requried" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldTxtLastName" runat="server" ForeColor="Red" ErrorMessage="LastName is requried" ControlToValidate="txtLastname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
                <td>
                    <asp:RadioButton ID="rdbMale" Text="Male" runat="server" GroupName="Gender" />
                    <asp:RadioButton ID="rdbFemale" Text="Female" runat="server" GroupName="Gender" />


                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RequiredAge" runat="server" ControlToValidate="txtAge" ForeColor="Red"
                        ErrorMessage="Enter your age (4 - 100)" MaximumValue="100"
                        MinimumValue="4" Type="Integer">
   
                    </asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ForeColor="Red" ErrorMessage="Email is mandatory" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCP" runat="server" Text="ConfirmPassword"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCP" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password and Confirm Password sholud match" ControlToValidate="txtCP" ControlToCompare="txtPassword"></asp:CompareValidator>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldTxtAddress" runat="server" ForeColor="Red" ErrorMessage="Address is mandatory" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>

                </td>

            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList" runat="server">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                        <asp:ListItem>Coimbatore </asp:ListItem>
                        <asp:ListItem>Tripur</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Selam</asp:ListItem>
                        <asp:ListItem>Erode</asp:ListItem>
                        <asp:ListItem>Madurai</asp:ListItem>
                        <asp:ListItem>Trichy</asp:ListItem>
                        <asp:ListItem>Vellore</asp:ListItem>
                        <asp:ListItem>Pondicherry</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidationDrop" runat="server" ForeColor="Red" ErrorMessage="City is mandatory" ControlToValidate="DropDownList"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPincode" runat="server" Text="Pincode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ForeColor="Red" ErrorMessage="Pincode is required" ControlToValidate="txtPincode"></asp:RequiredFieldValidator>

                </td>

            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Register" OnClick="SubmitButtonClick" />
                </td>


                <td>
                    <%--<asp:Button ID="Login" runat="server" Text="Login"  target ="login.aspx" />--%>
                    <%--< asp:HyperLinkID="HyperLink1" runat="server" Text="JavaTpoint" NavigateUrl="www.javatpoint.com" ></asp:HyperLink>--%>
                    <%--<asp:HyperLinkID = "HyperLink" runat ="server" NavigateUrl="http://localhost:65171/Login.aspx"></asp:HyperLinkID>--%>
                    <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="http://localhost:65171/Login.aspx" Text="Login"></asp:HyperLink>
                    <%--<asp:Button ID="Button" runat="server" Text="Login" OnClick="SubmitButtonClick" />--%>
                    <input id="Reset1" type="reset" value="reset" />

                </td>
            </tr>
        </table>
      </asp:Content>
    
