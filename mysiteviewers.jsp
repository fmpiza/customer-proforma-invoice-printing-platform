<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>mysiteviewers</title>
</head>
<body style="background-color:black;margin:0"> 
            <font color="black" size=0><p>.</p></font>
                  <font color="black" size=0><p>.</p></font>
        <font color="black" size=0><p>.</p></font> 
 <div align="center"><p><b><i><font color="white" size=6>Your site Staffs Logs are:</font></i></b></p>

 </div>
                  

<%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/viewersinmysite";    
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/viewersinmysite","root","88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from staffslogs";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font>

            <font color="black" size=0><p>.</p></font>
                  <font color="black" size=0><p>.</p></font>
        <font color="black" size=0><p>.</p></font> 
        
</body>
</html>