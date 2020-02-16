<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="HTTP5101_School_System.AddStudent" %>
<asp:Content ID="add_student" ContentPlaceHolderID="body" runat="server">

    <div id="student_form_container" class="one_view" runat="server">
        <h2 class="one_title s_title">Add New Student</h2>
        
        <section>
            <asp:label AssociatedControlID="new_student_fname" runat="server">Student First Name:</asp:label>
            <asp:TextBox runat="server" ID="new_student_fname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_student_fname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_student_lname" runat="server">Student Last Name:</asp:label>
            <asp:TextBox runat="server" ID="new_student_lname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_student_lname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_student_number" runat="server">Student Number:</asp:label>
            <asp:TextBox runat="server" ID="new_student_number"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_student_number"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="new_student_enrollment" runat="server">Enrollment Date:</asp:label>
            <asp:TextBox runat="server" ID="new_student_enrollment"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="new_student_enrollment"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_add" Text="ADD RECORD" runat="server"/>
    </div>

</asp:Content>