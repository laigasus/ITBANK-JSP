<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String name = "홍길동";
    	String address ="서울특별시";
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.print("이름: " + name + "<br>");	
		out.print("주소: " + address + "<br>");	
	%>
	
	
	<!-- out.print()보다 간편하게 출력할 수 있는 출력 키워드를 제공한다. -->
	<hr>
	이름: <%=name %> <br>
	주소: <%=address %> <br>	
	난수값: <%=Math.random() %>
	
	
	<%-- for(int dan=2; dan<=9; dan++){
		if(dan%2 != 0){
			out.print("<h2>구구단 " + dan + "단 </h2> <hr>");
			for(int hang=1; hang<=9; hang++){
				out.print(dan + " x " + hang + " = " + (dan*hang) + "<br>");
			}
		}
	}
	--%>
	
	<% for(int dan=2; dan<=9; dan++){
			if(dan % 2 != 0){ %>
				<h2>구구단 <%=dan %>단</h2>
				<% for(int hang=1; hang<=9; hang++){ %>
					<%=dan %> x <%=hang %> = <%=dan*hang %> <br>
				<% }
			}
		}%>
	

</body>
</html>