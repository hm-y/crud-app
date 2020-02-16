<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UpdateClass.aspx.cs" Inherits="HTTP5101_School_System.UpdateClass" %>
<asp:Content ID="update_class" ContentPlaceHolderID="body" runat="server">

    <div id="class_update_container" class="one_view" runat="server">
        <h2 id="c_title" class="one_title">Update Class Record</h2>
        
        <section>
            <asp:label AssociatedControlID="update_class_code" runat="server">Class Code:</asp:label>
            <asp:TextBox runat="server" ID="update_class_code"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="update_class_code"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_class_name" runat="server">Class Name:</asp:label>
            <asp:TextBox runat="server" ID="update_class_name"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_class_name"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_class_start" runat="server">Start Date:</asp:label>
            <asp:TextBox runat="server" 
                ID="update_class_start" placeholder="Day/Month/Year"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="update_class_start"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_class_finish" runat="server">Finish Date:</asp:label>
            <asp:TextBox runat="server" 
                ID="update_class_finish" placeholder="Day/Month/Year"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!" 
                ControlToValidate="update_class_finish"></asp:RequiredFieldValidator>
        </section>

        <section>
            <asp:label AssociatedControlID="update_class_teacher" runat="server">Teacher ID:</asp:label>
            <asp:TextBox runat="server" 
                ID="update_class_teacher"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" 
                ErrorMessage="required!"
                ControlToValidate="update_class_teacher"></asp:RequiredFieldValidator>
        </section>

        <asp:Button class="one_options one_update" Text="UPDATE" runat="server"/>
    </div>

</asp:Content>
