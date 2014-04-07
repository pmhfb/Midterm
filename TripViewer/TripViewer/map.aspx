<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="TripViewer.map" %>

   
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
    <h2 class="style">Create a Map</h2>
    <br />
          <asp:Label ID="Labelc" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
          <ul>
       <li>
        <asp:label ID="Label1" runat="server" CssClass="label" >Route Name&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="name" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
      <asp:label ID="Label2" runat="server" CssClass="label" >Description of Route&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="Description" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <br />
            <br />
        </li>
       
         <li>
            <asp:label ID="Label4" runat="server" CssClass="label" >Map URL&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="mapurl" runat="server" CssClass="textbox"   Width="200px"  Font-Names="Tahoma"></asp:TextBox>
             <br /><br />
        </li>
         
     <li>
        <asp:label ID="Label5" runat="server" CssClass="label"  >Price&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="price" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
     <div id="ScribbleMap" style="width: 650px; height: 500px">
     </div>  <br />
             
                
            <asp:Button ID="update" runat="server" onclick="register_Click" Text="Done"  CssClass="hello" />
         </li>
                 
    </ul>
    <br />
    <br />
    <h2 class="style">Create Check-in</h2>
    <br />
          <asp:Label ID="Label6" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
          <ul>
              <li>
        <asp:label ID="Label12" runat="server" CssClass="label" >Route Name&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="checkinname" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
       <li>
        <asp:label ID="Label7" runat="server" CssClass="label" >Check-in Title&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="title" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
      <asp:label ID="Label8" runat="server" CssClass="label" >Check-in Description&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="checkdesc" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <br />
            <br />
        </li>
        <li>
       <asp:label ID="Label9" runat="server" CssClass="label" >Add Image: &nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="image" runat="server" CssClass="textbox"   Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <br />
            <br />
        </li> 
         <li>
            <asp:label ID="Label10" runat="server" CssClass="label" >Latitude&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="lat" runat="server" CssClass="textbox"   Width="200px"  Font-Names="Tahoma"></asp:TextBox>
             <br /><br />
        </li>
         
     <li>
        <asp:label ID="Label11" runat="server" CssClass="label"  >Longitude&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="longitude" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
           <br />
           <br />
        </li>
        <li>
    <asp:Button ID="Button2" runat="server" OnClick="Checkin_Click"  Text="Check-in"  CssClass="hello" />
         </li>

      </ul>     
    </div>
</asp:Content>