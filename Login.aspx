<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login " MasterPageFile ="~/MasterPage.Master" %>

    <asp:Content ID="Contents" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
       

        <table align = "center">
           
            
            <h1> <pre>                                      Login Page          </pre></h1>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server" TextMode="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtName" runat="server" ForeColor="Red" ErrorMessage="FirstName is requried" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCorrectPassword" runat="server" TextMode="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="txtCorrectPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Login" OnClick="SubmitButtonClick" />
                </td>
            </tr>
        </table>
        </asp:Content>