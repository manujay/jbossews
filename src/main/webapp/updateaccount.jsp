<%-- 
    Document   : updateaccount
    Created on : Jul 17, 2012, 10:59:02 PM
    Author     : Manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%
 String email = (String)session.getAttribute("n1"); 
              String passwd = request.getParameter("pwd");
              String fname = request.getParameter("t1");
              String lname = request.getParameter("t2");
              String gender = request.getParameter("t6");
              String qual = request.getParameter("t3");
              String add = request.getParameter("t4");
              String phone = request.getParameter("t5");
              String sq = request.getParameter("t7");
              String sa = request.getParameter("t8");
            try
              {
                //HttpSession ss = request.getSession(true);
                String username = "root";
                String password = "root";
                String url = "jdbc:mysql://localhost:3306/nhmsdb";
                String driver = "com.mysql.jdbc.Driver";
                Class.forName(driver);
                Connection con = DriverManager.getConnection(url, username, password);
                PreparedStatement pstmt = con.prepareStatement("update doc set fname=?,lname=?,qualification=?,address=?,phone=?,gender=?,SQ=?,SA=?,password=? where email=?");
                pstmt.setString(1,fname);
                pstmt.setString(2,lname);
                pstmt.setString(3, qual);
                pstmt.setString(4, add);
                pstmt.setString(10, email);
                pstmt.setString(5, phone);
                pstmt.setString(9, passwd);
                pstmt.setString(6, gender);
                pstmt.setString(7, sq);
                pstmt.setString(8, sa);
                int i=pstmt.executeUpdate();
                if(i!=0){
                     response.sendRedirect("account.jsp");
                  
                }
                
              }

                catch(Exception e)
                    {
                       
                      response.sendRedirect("error.jsp");
                    }
                
%>
