<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--
		# Declaration (선언자)
		 - jsp파일에서 사용할 멤버변수나 메서드 등을 선언할 때 사용하는 구역입니다.
		 -
	-->
    <%!
    	public int i;	// 클래스 변수처럼 동작된다. int의 기본값 0이 자동 초기화 된다.
    
    	public int add(int n1, int n2){
    		return n1 + n2;
    	}
    	
    %>
    
    <%
    /*	int j; //public int j (x)
    	j++; // 초기화 되지 않아 j++ 불가.
    */

    	
		int j = 0;	// 지역변수로 인식.
		i++;
		j++;
		
	/* 	public void hello(){			// 오류. 메서드는 클래스 블록에서만 가능
			System.out.println("안녕");
		} */

	
		int result = add(4, 7);		// 메서드 호출은 클래스 블록에서는 불가.
		double d = Math.random();

    %>
    
    <!-- 위 내용은 java에서 작성시...
    public final class declaration_jsp extends ~~~ {
    	public int i;
    	public int add(int n1, int n2){
    		return n1+n2;
    	}
    	
    	~~~
    	
    	public void _jspService(~~~~~){
    		~~~
    		~~
    		
    		int j = 0;
    		i++;
    		j++;
    		
    		~~
    	}
    }
	와 비슷하다. %와 %!의 차이점.-->
    	  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file = "directive02_header.jsp" %>
	
	i의 값은: <%=i %> <br>
	j의 값은: <%=j %> <br>
	result의 값: <%=result %> <br>
	d의 값: <%=d %> <br>
	
	<%@ include file = "directive02_footer.jsp" %>


</body>
</html>