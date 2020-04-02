<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    List<Sawon> list=new ArrayList<Sawon>();// <%=
    list.add(new Sawon(1,"홍길동","영업부"));
    list.add(new Sawon(2,"심청이","기획부"));
    list.add(new Sawon(3,"춘향이","총무부"));
    list.add(new Sawon(4,"박문수","개발부"));
    list.add(new Sawon(5,"김두한","자재부"));
    
    request.setAttribute("list", list);// ${}
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>자바 코딩</h2>
  <table border=1>
    <tr>
      <th>사번</th>
      <th>이름</th>
      <th>부서</th>
    </tr>
    <%
       for(Sawon s:list)
       {
    %>
           <tr>
             <td><%=s.getSabun() %></td>
             <td><%=s.getName() %></td>
             <td><%=s.getDept() %></td>
           </tr>
    <%
       }
    %>
  </table>
  <h2>JSTL코딩</h2>
  <table border=1>
    <tr>
      <th>사번</th>
      <th>이름</th>
      <th>부서</th>
    </tr>
    <%--
           {name} => getXxx() 호출 
     --%>
    <c:forEach var="s" items="${list }">
      <tr>
        <td>${s.sabun }</td><%-- s.sabun (s.getSabun()) --%>
        <td>${s.name}</td><%-- s.name (s.getName()) --%>
        <td>${s.dept }</td><%-- s.name (s.getDept()) --%>
      </tr>
    </c:forEach>
   </table>
</body>
</html>











