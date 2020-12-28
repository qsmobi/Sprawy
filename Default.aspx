<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sprawy._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md4">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdSprawy" DataSourceID="LinqDataSource1" ValidateRequestMode="Enabled" Width="676px">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="IdSprawy" HeaderText="IdSprawy" InsertVisible="False" ReadOnly="True" SortExpression="IdSprawy" />
                <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                <asp:BoundField DataField="Termin" HeaderText="Termin" SortExpression="Termin" />
                <asp:BoundField DataField="DataDodania" HeaderText="DataDodania" SortExpression="DataDodania" />
                <asp:BoundField DataField="IdUzytRealizuje" HeaderText="IdUzytRealizuje" SortExpression="IdUzytRealizuje" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Dodaj" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Sprawy.DataClasses1DataContext" EntityTypeName="" TableName="Sprawas" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="IDSprawy" PropertyName="SelectedValue" />
            </DeleteParameters>
        </asp:LinqDataSource>
        </div>
        <div class="col-md4">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="IdSprawy" DataSourceID="LinqDataSource2" DefaultMode="Edit">
                <Fields>
                    <asp:BoundField DataField="IdSprawy" HeaderText="IdSprawy" InsertVisible="False" ReadOnly="True" SortExpression="IdSprawy" />
                    <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                    <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                    <asp:BoundField DataField="Termin" HeaderText="Termin" SortExpression="Termin" />
                    <asp:BoundField DataField="DataDodania" HeaderText="DataDodania" SortExpression="DataDodania" />
                    <asp:BoundField DataField="IdUzytRealizuje" HeaderText="IdUzytRealizuje" SortExpression="IdUzytRealizuje" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Sprawy.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Sprawas" Where="IdSprawy == @IdSprawy">
                <WhereParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="IdSprawy" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <br />
            </div>
    </div>

</asp:Content>
