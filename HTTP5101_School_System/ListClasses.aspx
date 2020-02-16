<%@ Page Title="Classes" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListClasses.aspx.cs" Inherits="HTTP5101_School_System.ListClasses" %>

<asp:Content ID="classes_list" ContentPlaceHolderID="body" runat="server">
    <div id="classes_header" class="list_header">
        <h1>Classes</h1>
        <div class="list_search">
            <asp:TextBox ID="class_search_textbox" runat="server"></asp:TextBox>
            <button id="class_search_button" class="list_button search_button">Search</button>
        </div>
        <a class="list_button add_button" href="AddClass.aspx">Add New Class</a>
        <div class="debugger" id="sql_debugger" runat="server"></div>
    </div>
    <div class="_table" runat="server">
        <div class="listitem list_head">
            <div class="col4">CLASS CODE</div>
            <div class="col4">CLASS NAME</div>
            <div class="col4">STARTDATE</div>
            <div class="col4last">DETAILS</div>
        </div>
        <div id="classes_result" class="results" runat="server"></div>
    </div>
</asp:Content>
