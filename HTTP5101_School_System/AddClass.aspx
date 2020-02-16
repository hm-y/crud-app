<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="HTTP5101_School_System.AddClass" %>
<asp:Content ID="add_class" ContentPlaceHolderID="body" runat="server">

    <div id="class_form_container" class="one_view" runat="server">
        <h2 class="one_title c_title">Add New Class</h2>
        
        <section>
            <asp:label AssociatedControlID="new_class_code" runat="server">Class Code:</asp:label>
            <asp:TextBox runat="server" ID="new_class_code"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="new_class_code"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_class_name" runat="server">Class Name:</asp:label>
            <asp:TextBox runat="server" ID="new_class_name"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_class_name"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_class_start" runat="server">Start Date:</asp:label>
            <asp:TextBox runat="server" 
                ID="new_class_start" placeholder="Day/Month/Year"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="new_class_start"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_class_finish" runat="server">Finish Date:</asp:label>
            <asp:TextBox runat="server" 
                ID="new_class_finish" placeholder="Day/Month/Year"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_class_finish"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_class_teacher" runat="server">Teacher ID:</asp:label>
            <asp:TextBox runat="server" 
                ID="new_class_teacher"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="new_class_teacher"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_add" Text="ADD RECORD" runat="server"/>
    </div>

</asp:Content>