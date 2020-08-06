<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
.virtual-box {
	margin-bottom: 20px;
}

.article-content{
    min-height: 400px;
    border: 1px solid lightgray;
    padding: 20px;
}

.last-update{
    padding-top: 10px;
    font-weight: 500;
    font-size: 25px; 
}

.btn-group a{
    padding-top: 15px;
    font-size: 20px; 
}

</style>

</head>
<body>

<jsp:include page="../include/header.jsp"/>

    <div class="virtual-box"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading text-white" style="background: #F8F8FF;">
                        <div class="row">
                            <div class="col-md-6">
                                <h2 style="padding-left: 10px;"><!-- 글 제목 --></h2>
                            </div>
                            <div class="col-md-offset-3 col-md-3">
                                <div style="padding-top: 10px; font-size: 1.5em"><!-- 작성자 란 -->작성자:</div>
                                <div>
                                	조회수: 
                                	
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="article-content">
                            <p><!-- 글 상세 내용 --></p>
                        </div>

                        <hr>

                        <div class="row">
                            <div class="col-md-offset-1 col-md-5">
                                <p class="last-update">
                                	<!-- 글 작성 시간 --> 
                                </p>
                            </div>
                            <div class="btn-group col-md-offset-2 col-md-3">
                                <a class="btn btn-info" href=>목록 보기</a>
                                
                                
                                
                                <a class="btn btn-primary" href=>새 글 쓰기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
	</div>
<!-- end content row -->

<jsp:include page="../include/footer.jsp"/>

</body>
</html>