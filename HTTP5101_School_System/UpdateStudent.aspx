<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="HTTP5101_School_System.UpdateStudent" %>
<asp:Content ID="update_student" ContentPlaceHolderID="body" runat="server">

    <div id="student_update_container" class="one_view" runat="server">
        <h2 id="s_title" class="one_title">Update Student Record</h2>
        
        <section>
            <asp:label AssociatedControlID="update_student_fname" runat="server">Student First Name:</asp:label>
            <asp:TextBox runat="server" ID="update_student_fname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_student_fname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_student_lname" runat="server">Student Last Name:</asp:label>
            <asp:TextBox runat="server" ID="update_student_lname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_student_lname"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_student_number" runat="server">Student Number:</asp:label>
            <asp:TextBox runat="server" ID="update_student_number"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_student_number"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_student_enrollment" runat="server">Enrollment Date:</asp:label>
            <asp:TextBox runat="server" ID="update_student_enrollment"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_student_enrollment"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_update" Text="UPDATE" runat="server"/>
    </div>

</asp:Content>
