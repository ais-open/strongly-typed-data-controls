<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StronglyTypedDataControl.aspx.cs" Inherits="TypedDataControls.StronglyTypedDataControl" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <div class="clearfix"></div>

    <%--Using the Eval statement in a data-binding expression--%>
    <table class="table table-striped table-hover">
        <caption>Employees</caption>
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Title</th>
                <th>Username</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="empRepeater2" runat="server" DataSource="<%# this.GetEmployees() %>">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Number") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Title") %></td>
                        <td><%# Eval("Username") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <div class="clearfix"></div>

    <%--Using Strongly Typed Data Control--%>
    <table class="table table-striped table-hover">
        <caption>Employees</caption>
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Title</th>
                <th>Username</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="empRepeater" runat="server" ItemType="TypedDataControls.Employee" SelectMethod="GetEmployees">
                <ItemTemplate>
                    <tr>
                        <td><%# Item.Number %></td>
                        <td><%# Item.Name %></td>
                        <td><%# Item.Title %></td>
                        <td><%# Item.Username %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>  
    <div class="clearfix"></div>

</div>
<script src="Scripts/jquery-1.7.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
