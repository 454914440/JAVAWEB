<%@page language="java" contentType="text/html;charset=GBK" %>
<%@page import="java.util.*" %>

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
}%>

<%request.setCharacterEncoding("GBK");

String name=request.getParameter("uid");
//String pwd=request.getParameter("pwd");
out.println("username:"+name+"<br>");
//out.println("password:"+pwd+"<br>");


String str=request.getParameter("message");
StringBuffer message=new StringBuffer(str);
message=Trans(message);
out.println("���������Ϣ��:<br>");
out.println(message);
 %><br />
 <a href="contents.jsp">������һҳ</a>
 <a href="logout.jsp">ע��</a>