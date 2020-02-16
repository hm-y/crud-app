<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="HTTP5101_School_System.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div id="teacher_form_container" class="one_view" runat="server">
        <h2 class="one_title">Add New Teacher</h2>
        
        <section>
            <asp:label AssociatedControlID="new_teacher_fname" runat="server">Teacher First Name:</asp:label>
            <asp:TextBox runat="server" ID="new_teacher_fname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_teacher_fname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_teacher_lname" runat="server">Teacher Last Name:</asp:label>
            <asp:TextBox runat="server" ID="new_teacher_lname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_teacher_lname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_employeer_number" runat="server">Employeer Number:</asp:label>
            <asp:TextBox runat="server" ID="new_employeer_number"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_employeer_number"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_teacher_hire_date" runat="server">Hire Date:</asp:label>
            <asp:TextBox runat="server" ID="new_teacher_hire_date"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_teacher_hire_date"></asp:RequiredFieldValidator>
        </section>

         <section>
            <asp:label AssociatedControlID="new_teacher_salary" runat="server">Salary:</asp:label>
            <asp:TextBox runat="server" ID="new_teacher_salary"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_teacher_salary"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_add" Text="ADD RECORD" runat="server"/>
    </div>

</asp:Content>