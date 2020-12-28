<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sprawy.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
       
            <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false" OnAuthenticate="Unnamed1_Authenticate">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Logowanie</legend>
                    <ol>
                        <li>
                            
                            <asp:Label runat="server" AssociatedControlID="UserName">Użytkownik: </asp:Label>
                            
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="Proszę wprowadzic użytkownika" />
                            
                        </li>
                        <li>
                            
                            <asp:Label runat="server" AssociatedControlID="Password">Hasło: </asp:Label>
                                
                            
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="Proszę wprowadzić hasło" />
                            
                         </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Zapamiętać ?</asp:Label>
                        </li>
                    </ol>
                    <br />
                    
                    <asp:Button runat="server" CommandName="Login" Text="Zaloguj się" CssClass="bg-primary"  />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        </div>

       
    </div>
</asp:Content>
