<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="HTTP5101_School_System.UpdateTeacher" %>



<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div id="teacher_update_container" class="one_view" runat="server">
        <h2 id="t_title" class="one_title">Update Teacher Record</h2>
        
        <section>
            <asp:label AssociatedControlID="update_teacher_fname" runat="server">Teacher First Name:</asp:label>
            <asp:TextBox runat="server" ID="update_teacher_fname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_teacher_fname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_teacher_lname" runat="server">Teacher Last Name:</asp:label>
            <asp:TextBox runat="server" ID="update_teacher_lname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_teacher_lname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_employee_number" runat="server">Employee Number:</asp:label>
            <asp:TextBox runat="server" ID="update_employee_number"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_employee_number"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_hiredate" runat="server">Hire Date:</asp:label>
            <asp:TextBox runat="server" ID="update_hiredate"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_hiredate"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_salary" runat="server">Salary:</asp:label>
            <asp:TextBox runat="server" ID="update_salary"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_salary"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_update" Text="UPDATE" runat="server"/>
    </div>

</asp:Content>
