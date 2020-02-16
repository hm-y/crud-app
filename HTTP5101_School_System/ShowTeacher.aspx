<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowTeacher.aspx.cs" Inherits="HTTP5101_School_System.ShowTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div id="teacher_info" class="one_view" runat="server">
        <h2 id="t_title" class="one_title"><span id="teacher_title" runat="server"></span></h2>

        <asp:Table runat="server"
            CellPadding="10" GridLines="Both" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>First Name</asp:TableCell>
                <asp:TableCell><span id="teacher_fname" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Last Name</asp:TableCell>
                <asp:TableCell><span id="teacher_lname" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Employeer Number</asp:TableCell>
                <asp:TableCell><span id="employeer_number" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Hire Date</asp:TableCell>
                <asp:TableCell><span id="teacher_hdate" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Salary</asp:TableCell>
                <asp:TableCell><span id="teacher_salary" runat="server"></span></asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        
        <div id="updatebutton" runat="server"></div>
        <asp:Button class="one_options one_delete" Text="DELETE" runat="server" />
          

    </div>
</asp:Content>