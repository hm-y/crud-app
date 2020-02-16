<%@ Page Title="Students" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListStudents.aspx.cs" Inherits="HTTP5101_School_System.ListStudents" %>

<asp:Content ID="students_list" ContentPlaceHolderID="body" runat="server">
    <div id="students_header" class="list_header">
        <h1>Students</h1>
        <div class="list_search">
            <asp:TextBox id="student_search_textbox" runat="server"></asp:TextBox>
            <button id="student_search_button" class="list_button search_button">Search</button>
        </div>
        <a class="list_button add_button" href="AddStudent.aspx">Add New Student</a>
        <div class="debugger" id="sql_debugger" runat="server"></div>
    </div>
    <div class="_table" runat="server">
        <div class="listitem  list_head">
            <div class="col4">STUDENT NUMBER</div>
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4last">DETAILS</div>
        </div>
        <div id="students_result" runat="server"></div>
    </div>
</asp:Content>
