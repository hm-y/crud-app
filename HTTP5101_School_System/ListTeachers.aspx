<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListTeachers.aspx.cs" Inherits="HTTP5101_School_System.ListTeachers" %>


<asp:Content ID="teachers_list" ContentPlaceHolderID="body" runat="server">
    <div id="teachers_header" class="list_header">
        <h1>Teachers</h1>
        <div class="list_search">
            <asp:TextBox id="teacher_search_textbox" runat="server"></asp:TextBox>  
            <button id="teacher_search_button" class="list_button search_button">Search</button>
        </div>
        <a class="list_button add_button" href="Addteacher.aspx">Add New teacher</a>
        <div class="debugger" id="sql_debugger" runat="server"></div>
    </div>

     <div class="_table" runat="server">
        <div class="listitem list_head">
            <div class="col4">EMPLOYER NUMBER</div>
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4last">DETAILS</div>
        </div>
        <div id="teachers_result" runat="server">

        </div>
    </div>
   
</asp:Content>
