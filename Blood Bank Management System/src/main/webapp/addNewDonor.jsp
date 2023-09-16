<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>
<%@include file="header.html"%>
<!DOCTYPE>
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="mail"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:50%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
 String msg=request.getParameter("msg");
 if("valid".equals(msg)){
	 %>
	 <center><font color="red" size="5">Successfully Updated</font></center>
	 <%
 }
%>
<%

 if("invalid".equals(msg)){
	 %>
	 <center><font color="red" size="5">Successfully**** Updated</font></center>
	 <%
 }
%>

<%
int id =1;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from donorr");
	if(rs.first())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;">Donor ID: <%out.println(id); %></h1>
	<% 
}
 catch(Exception e)
{}
%>
<div class="container">
<form action="./addNewDonorAction.jsp" method="post">
<input name="id" value="<%out.println(id); %>">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name">
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father">
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother">
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Other">Other</option>
</select>
<hr>
<h2>Email</h2>
<input type="mail" placeholder="Enter Email" name="email">
<hr>
<h2>BloodGroup</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B-">B-</option>
<option value="B+">B+</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
<hr>
</select>
<h2>Address</h2>
<input type="text" placeholder="Enter Address " name="address">
<br>
<br>
<center><button type="submit" class="button">Save</button></center>

</form>
   
 
 </div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ S>D:2023  </center></h3>

</body>
</html>



 