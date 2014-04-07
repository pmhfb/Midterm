<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="walkroute.aspx.cs" Inherits="TripViewer.walkroute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
            #edit_user .hello
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
#edit_user .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
.table
    {
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: #ffffff;
    font-size:medium;

    }
    .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   position:absolute;
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
        .textbox{
	font-family: 'Open Sans', sans-serif;
	margin-top: 5px;
	display: block;
	width: 30%;
    text-align:justify;
	background: rgba(255, 255, 255, 1);
       position:absolute;
       left:250px;
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
    <div id="edit_user">
    <h2 class="style">Walk through the Map</h2>
    <br /> 
    <ul>
        <li>
    <asp:Label ID="Labelc" runat="server" Text="Label"  Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="brown">Route Name: </asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label"  Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="black">Kansas City - Chicago </asp:Label>
        
    </li></ul> 
    <br />
    <br />
     <div id="ScribbleMap" style="width: 650px; height: 500px">
             </div>
 <br />
             <asp:Button ID="update" runat="server"  Text="Start"  CssClass="hello" />
         </div>
</asp:Content>
