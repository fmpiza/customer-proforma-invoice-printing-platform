<%@ page errorPage="error.jsp" %>
<!DOCTYPE html> 
<html> 
    <head> 
        <center>Result for <%=request.getParameter("operation")%></center>
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
        <%  
          String servicefee= request.getParameter("servicefee"); 
          String VAT=request.getParameter("VAT");
          String productioncost= request.getParameter("productioncost"); 
          String discount=request.getParameter("discount");

          
          int i=Integer.parseInt(servicefee);
          int j=Integer.parseInt(VAT); 
          int k=Integer.parseInt(productioncost);
          int l=Integer.parseInt(discount);
         
         

         int m=0;
         String str=request.getParameter("operation");
         if(str.equals("addition"))
         m=i+j+k+l;

         if(str.equals("subtraction"))
         m=i-j-k-l;

        
         %> 
    </body> 
    <%-- Here we use the JSP expression tag to display value  
         stored in a variable --%> 
    <h2><b>YOUR ANSWER is  :</b> </h2><%=k%>
    
</html>