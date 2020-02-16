<%@ Page Title="Student Info" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowStudent.aspx.cs" Inherits="HTTP5101_School_System.ShowStudent" %>
<asp:Content ID="student_view" ContentPlaceHolderID="body" runat="server">

    <div id="student_info" class="one_view" runat="server">
        <h2 id="s_title" class="one_title"><span id="student_title" runat="server"></span></h2>

        <asp:Table runat="server"
            CellPadding="10" GridLines="Both" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>First Name</asp:TableCell>
                <asp:TableCell><span id="student_fname" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Last Name</asp:TableCell>
                <asp:TableCell><span id="student_lname" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Student Number</asp:TableCell>
                <asp:TableCell><span id="student_number" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Enrollment Date</asp:TableCell>
                <asp:TableCell><span id="student_edate" runat="server"></span></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <div id="updatebutton" runat="server"></div>
        <a class="one_options one_delete" href="#" runat="server">DELETE</a>

    </div>
</asp:Content>
