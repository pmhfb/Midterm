<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TripViewer.Login" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            #login_user .hello
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
#login_user .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
        #login_user input
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
       left:80px;
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
    <script type="text/javascript" src="https://scribblemaps.com/api/js/"></script>
    
        <script type="text/javascript">
            window.onload = function () {
                var sm = new ScribbleMap(document.getElementById('ScribbleMap'));
            }
         </script>
    
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="login_user">
    <h2 class="style">User Login</h2>
    <br />
          <asp:Label ID="Labelc" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
          <ul>
       <li>
        <asp:label ID="Label1" runat="server" CssClass="label" >User Name&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="username" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
      <asp:label ID="Label2" runat="server" CssClass="label" >Password&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="password" runat="server" CssClass="textbox" TextMode="Password" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <br />
            <br />
        </li>
         
        <li>
             
                
            <asp:Button ID="update" runat="server" onclick="user_Click" Text="Login"  CssClass="hello" />
         </li>
          
               
    </ul>
    
           
    </div>
</asp:Content>