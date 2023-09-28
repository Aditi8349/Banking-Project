
<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
         try
         {
             
             
             
               String acno =request.getParameter("acno");
               String cname =request.getParameter("cname");
               String cfname =request.getParameter("cfname");
               String cdob =request.getParameter("cdob");
               String cgender =request.getParameter("cgender");
               String opdate =request.getParameter("opdate");
               String cadd=request.getParameter("cadd");
               String ccontact=request.getParameter("ccontact");
               String role= request.getParameter("rrole");
               String pass=request.getParameter("password");
               String sques=request.getParameter("secques");
               String sans =request.getParameter("sans");
               
               
               
             String updatepasswordQuery1 ="Update account set cusname='"+ cname+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst1 = con.prepareStatement( updatepasswordQuery1 );
             pst1.executeUpdate();  
               
             String updatepasswordQuery2 ="Update account set cusfname='"+ cfname+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst2 = con.prepareStatement( updatepasswordQuery2 );
             pst2.executeUpdate();
             
              String updatepasswordQuery3 ="Update account set dob='"+ cdob +"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst3 = con.prepareStatement( updatepasswordQuery3 );
             pst1.executeUpdate();
             
              String updatepasswordQuery4 ="Update account set gender='"+ cgender+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst4 = con.prepareStatement( updatepasswordQuery4 );
             pst4.executeUpdate();
             
              
             
              String updatepasswordQuery6 ="Update account set address='"+ cadd+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst6 = con.prepareStatement( updatepasswordQuery6 );
             pst6.executeUpdate();
             
              String updatepasswordQuery7 ="Update account set contactno='"+ ccontact+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst7 = con.prepareStatement( updatepasswordQuery7 );
             pst7.executeUpdate();
             
              String updatepasswordQuery8 ="Update account set password='"+ pass+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst8= con.prepareStatement( updatepasswordQuery8 );
             pst8.executeUpdate();
             
              String updatepasswordQuery9 ="Update account set sques='"+ sques+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst9 = con.prepareStatement( updatepasswordQuery9 );
             pst9.executeUpdate();
             
              String updatepasswordQuery5 ="Update account set sans='"+ sans+"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst5 = con.prepareStatement( updatepasswordQuery5 );
             pst5.executeUpdate();
             
             
             
           out.println("updated successfully");  
                     
               
               
             
         }
         catch(Exception e)
         {
             out.println("not updated");
         }
          
        %>
    </body>
</html>
