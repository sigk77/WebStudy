<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
    try 
    {
    	request.setCharacterEncoding("UTF-8");
    }catch(Exception ex){}

	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	// hidden
	String no=request.getParameter("no");
	String strPage=request.getParameter("page");
	
	BoardVO vo=new BoardVO();
	vo.setNo(Integer.parseInt(no));
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	
	//DAO연결
	BoardDAO dao=new BoardDAO();
	boolean bCheck=dao.boardUpdate(vo);
	//이동 
	if(bCheck==true)
	{
	   response.sendRedirect("detail.jsp?no="+no+"&page="+strPage);
	}
	else
	{
%>
        <script type="text/javascript">
          alert("비밀번호가 틀립니다!");
          history.back();
        </script>
<%
	}
    
%>









