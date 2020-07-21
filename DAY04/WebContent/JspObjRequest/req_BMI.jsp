<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
    bmi지수 계산 공식=[체중(kg)/신장(m)*신장(m)]
    -bmi지수가 23을 초과한다면 "당신은 과체중입니다"를 출력
    -18.5 미만이라면 "당신은 저체중입니다"를 출력
    -나머지는 "당신은 정상체중입니다"를 출력하세요
    
    *문자열 내부에 들어있는 데이터를 기본 데이터 타입으로 변환하는 방법
   	 표준(wrapper)클래스에 들어있는 parse+기본 타입이름()메서드를 활용
    request.getParameter()리턴 타입이 String이기때문
    BMI 지수를 계산하려면 실수나 정수로 변환해 주셔야 합니다
    Inteer.parseInt(), Double.parseDouble(문자열)
    
    신장: cm		체중: kg	두 값 모두 소수점 포함 값으로 빋겠습니다
    
    http://localhost:8181/DAY03/JspObjRequest/req_BMI.jsp?cm=172.4&kg=68.5
--%>
<%!
	String str;
	double bmi;

	void BMI(double h, double k) {
		bmi = h / (k/100 * k/100);
		bmi=Math.round(bmi*100)/1000;
		if (bmi > 23)
			str = "당신은 과체중입니다";
		else if (bmi < 18.5)
			str = "당신은 저체중입니다";
		else
			str = "당신은 정상체중입니다";
		}
%>


<%
	String Scm = request.getParameter("cm");
	String Skg = request.getParameter("kg");

	double cm = Double.parseDouble(Scm);
	double kg = Double.parseDouble(Skg);
	BMI(cm, kg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
<h2>체질량 지수(BMI)계산</h2>
<hr>
	신장:<%=Scm%>cm<br>
	체중:<%=Skg%>cm<br>
	BMI지수:<strong><%=bmi%></strong><br>
	<%=str%>

</body>
</html>