<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="icon" href="/img/core-img/favicon.ico">
<link rel="stylesheet" href="/css/style2.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>

	<!-- /header -->
	<section class="akame-about-area section-padding-80-0">
	<div class="container">
		<div class="row">
			<c:forEach var="i" items="${boardList }">
				<div class="col-lg-3">
					<div class="single-team-member mb-80 wow fadeInUp"
						data-wow-delay="200ms">
						<div class="team-member-img">
							<img src="${i.shop_imagepath }" alt="">
							<!-- Social Info -->
							<div
								class="team-social-info d-flex align-items-center justify-content-center">
								<div class="social-link">
									<button class="btn btn-outline-warning">��ǰ����</button>

								</div>
							</div>
						</div>
						<div class="team-member-info">
							<h5>${i.shop_title }</h5>
							<p>${i.shop_contents }</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</section>

	<script>
		$(window).scroll(
				function() {
					// ���ϴ��� ��츦 üũ�ϱ� ���� ���ϴ� ��ġ���� ����
					// ȭ�� ������ü�� ���̿���, ���� â ���̸� �� ���� ���ϴ� ��
					var chkBtm = parseInt($(document).height())
							- parseInt($(window).height());

					if (chkBtm == $(window).scrollTop()) {
						// ���ϴ����� �������� ���
						console.log('�ٴ��Դϴ�!');
					} else if ($(window).scrollTop() == 0) {
						// �ֻ������ �������� ���
						console.log('������Դϴ�!');
					}
				});
	</script>
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	<!-- /footer -->
</body>
</html>