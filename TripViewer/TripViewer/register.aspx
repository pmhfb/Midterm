<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="TripViewer.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   <style type="text/css">
              #registration .hello
        {
    margin-top: 10px;
	font-family: 'Open Sans', sans-serif;
	cursor: pointer;
	background: brown;
	border: 1px solid #242424;
	padding: 2px 24px;
	outline: none;
	color: #ffffff;
	font-size: 1em;
	text-transform: uppercase;
	-webkit-appearance: none;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
}
#registration .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
           
        #registration input
{
    right: 20px;
            margin-left: 146px;
        }
    .label{
        float : left;
   display : inline;
   
   display : block;
   text-align: left;
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
        .textbox{
	font-family: 'Open Sans', sans-serif;
	margin-top: 5px;
	display: block;
	width: 30%;
	background: rgba(255, 255, 255, 1);
       position:absolute;
       left:150px;
	outline: none;
	color: black;
	font-size: 1em;
	border: groove
	-webkit-appearance: none;
    border-style:solid;
    border-width: 3px;
    border-color: grey;
}
      
     ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 16px arial-black;
    display: block !important;
    display: inline;
    overflow: hidden;
}
 li .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   color:black;
}

 </style>     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="registration">
    
       <h2>User Registration</h2>
         <br />
        <asp:Label ID="Label1" runat="server" Text="User Registration" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="#009933"></asp:Label>
       <br />
         <br />
        <ul>
            
            <li>
        <asp:label ID="Label3"  runat="server" CssClass="label" >User Name&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="name" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
      <asp:label ID="Label6" runat="server" CssClass="label" >Password&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="password" runat="server" CssClass="textbox" TextMode="Password" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="password" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            
            <br />
            <br />
        </li>
         <li>
      <asp:label ID="Label7" runat="server" CssClass="label" >Confirm Password&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="cpassword" runat="server"  CssClass="textbox" TextMode="Password" OnTextChanged="cpassword_TextChanged"  Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
      <br />

              <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="cpassword" 
            ErrorMessage="Password should match"></asp:CompareValidator>
        
             <br />
            <br />
        </li>
        <li>
             
                
            <asp:Button ID="reg" runat="server" onclick="register_Click" Text="Register"  CssClass="hello" />
         </li>
       </ul>
         
    </div>
</asp:Content>
