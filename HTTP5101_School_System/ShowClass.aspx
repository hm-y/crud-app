<%@ Page Title="Class Info" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowClass.aspx.cs" Inherits="HTTP5101_School_System.ShowClass" %>
<asp:Content ID="class_view" ContentPlaceHolderID="body" runat="server">

    <div id="class_info" class="one_view" runat="server">
        <h2 id="c_title" class="one_title"><span id="class_title" runat="server"></span></h2>

        <asp:Table runat="server"
            CellPadding="10" GridLines="Both" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>Class Code</asp:TableCell>
                <asp:TableCell><span id="class_code" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Start Date</asp:TableCell>
                <asp:TableCell><span id="class_start" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Finish Date</asp:TableCell>
                <asp:TableCell><span id="class_finish" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Teacher ID</asp:TableCell>
                <asp:TableCell><span id="class_teacher" runat="server"></span></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <div id="updatebutton" runat="server"></div>
        <asp:Button class="one_options one_delete" Text="DELETE" runat="server" />

    </div>

</asp:Content>

