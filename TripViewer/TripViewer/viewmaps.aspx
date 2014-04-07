<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="viewmaps.aspx.cs" Inherits="TripViewer.viewmaps" %>
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="edit_user">
     <h2 class="style">Routes Shop</h2>
    <br />
   <br />
       
<div id="DisplayRoutes">
    <table  id="displayroutes" align="center" cellpadding="4" cellspacing="4" border="0" bgcolor="#EAEAEA" class="container" style="border-collapse:collapse; width:600px;  table-layout:fixed">
        <tr align="left" style="background-color:#004080; color:white;" >
            <td class="table"style="width:20px; border:solid 1px #fab;"> Route Name </td>                        
            <td class="table"style="width:40px;"> Description </td>            
             
            <td class="table"style="width:40px;word-wrap:break-word;"> Map URL </td>                       
           <td class="table"style="width:10px;word-wrap:break-word;"> Price </td>                       
                    </tr>
        <%=getWhileLoopData()%>
    </table>
        </div></div>
</asp:Content>


 