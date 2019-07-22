<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="icon" href="./img/core-img/favicon.ico">
<link rel="stylesheet" href="../css/style2.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
.skip {
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	width: 100%;
	overflow: hidden;
}

.sell_btn {
	background: #FCBB00;
	color: #fff;
	border: 1px solid black;
	border-radius: 5px;
	box-shadow: 5px 5px 5px #eee;
	width: 5em;
	height: 3em;
	cursor: pointer;
}

.sell_btn:hover {
	color: white;
	border: black;
	border-radius: 5px;
	box-shadow: 5px 5px 5px #eee;
}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false"	onselectstart="return false">
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>
	<div class="container">
		<div class="row border-bottom  mt-5 pb-1 border-warning">
			<div class="col-12">
				<h4>판매 내역 확인</h4>
			</div>
		</div>
		<div
			class="row border-top border-bottom border-warning text-center py-1">
			<div class="col-2">이미지</div>
			<div class="col-4">제목</div>
			<div class="col-1">총 수량</div>
			<div class="col-2">총 금액</div>
			<div class="col-2">유통기한</div>
			<div class="col-1">요청</div>
		</div>


		<c:forEach var="i" items="${sellList }">
<%-- <input type="hidden" value="${i.shop_seq}" id=seqq name=seqq> --%>
			<div class="row text-center border-bottom border-warning py-3">

				<div class="col-2 ">
					<a href="/shopboard/ShopBoardViewProc?seq=${i.shop_seq}"><img
						src="${i.shop_imagepath1 }" class="listimg"> </a>
				</div>
				<div class="col-4 skip" style="margin-top: 2.3em">
					<a href="/shopboard/ShopBoardViewProc?seq=${i.shop_seq}"><strong
						style="font-size: 1.2em">${i.shop_title }</strong> </a>
				</div>
				<div class="col-1 " style="margin-top: 2.3em">
					<strong>${i.shop_quantity }</strong> (개)
				</div>
				<div class="col-2 " style="margin-top: 2.3em">
					<strong><fmt:formatNumber value="${i.shop_price }"
							pattern="#,###" /> </strong>원
				</div>
				<div class="col-2 " style="margin-top: 2.3em; color: red">${i.shop_expiration }</div>

				<div class="col-1" style="padding: 0">

					<input type=button class="sell_btn del_list" value="삭제 요청"
						style="margin-bottom: 0.3em"> <input type=button
						class="del_list2" value="요청중" style="margin-bottom: 0.3em">
					<a id="sell_statusBtn" style="margin-top: 0.3em"><input
						class="sell_btn" type="button" value="판매 현황"></a>
				</div>

			</div>

		</c:forEach>
	</div>


	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	<script>
		$(".del_list2").hide();

		$(".del_list").on("click", function() {
			if (confirm("삭제 요청을 하나요?") == true) {
				$(".del_list").hide();
				$(".del_list2").show();
			}
		})
		$(".del_list2").on("click", function() {
			if (confirm("삭제 요청을 취소 하나요?") == true) {

				$(".del_list2").hide();
				$(".del_list").show();

			}
		})
		$("#sell_statusBtn").on("click", function() {
// 			$("input[name=seqq]").val($("#seqq").val());
			location.href="/member/sellStatus";
		})
		// 		$("#sell_statusBtn").on("click",function(){
		// 			var popupX = (document.body.offsetWidth / 2) - (800 / 2);
		// 			//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		// 			var popupY= (document.body.offsetHeight / 2) - (500 / 2);
		// 			//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

		// 			window.open('/member/sellStatus', '', 'status=no, height=500, width=800, left='+ popupX + ', top='+ popupY);
		// 		})
	</script>
</body>
</html>