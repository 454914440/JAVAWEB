<%@page language="java" contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*" %>
<%@ page import="java.sql.*"%>

<%!
StringBuffer Trans(StringBuffer sour)
{
for(int i=0;i<sour.length();i++)
{
if(sour.substring(i,i+1).equals("\n"))
{
sour.delete(i,i+1);
sour.insert(i,"<br>");
}
}
return sour;
}
%>

<%  request.setCharacterEncoding("GB2312");

     Connection conn=null;
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
      String url="jdbc:mysql://localhost:3306/news";
       conn=DriverManager.getConnection(url,"root","123456");
             
       Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select name from tb1 ");

      while(rs.next())
       {
        String username=rs.getString(1);
       out.println("�û���:"+username+"<br>");
       }
    }
    catch(Exception e)
    {
     out.println("some error");
      out.println(e.toString());
    }
    finally
    {
      conn.close();
    }

     String str=request.getParameter("message");
     StringBuffer message=new StringBuffer(str);
     message=Trans(message);
     out.println("���������Ϣ��:<br>");
     out.println(message);
   
%>
  <br />
  <a href="contents.jsp">������һҳ</a>
  <a href="logout.jsp">ע��</a>