<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style2.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>

	<div class="container mt-3">
		<div class="row  pb-3 border-bottom">
			<div class="col-12" style="text-align: right">
				<a href="#" class="btn akame-btn">���� ������ </a>
			</div>
		</div>

		<div class="row border-bottom border-top py-2">
			<div class="col-6">
				<h3>�ֹ�����</h3>
			</div>
			<div class="col-6 " style="text-align: right">
				<h3>��ٱ��� �ֹ�/���� �ֹ��Ϸ�</h3>
			</div>
		</div>

		<div class="row py-3">
			<div class="col-6 font-weight-bold">�ֹ���ǰ Ȯ��</div>
			<div class="col-6" style="text-align: right">
				<p>*��ǰ���� �� �ɼǺ����� ��ǰ�� �Ǵ� ��ٱ��Ͽ��� �����մϴ�.</p>
			</div>

		</div>
		<div class="row border-bottom border-top bg-gray text-center">
			<div class="col-3">��ǰ/�ɼ�����</div>
			<div class="col-1">����(��)</div>
			<div class="col-1">��ǰ�ݾ�</div>
			<div class="col-1">����</div>
			<div class="col-4">�������</div>
			<div class="col-2">��ۺ�/�Ǹ���</div>
		</div>
		<div class="row border-bottom border-top  text-center py-4">
			<div class="col-3 ">
				<div class="row">
					<div class="col-4">�̹���</div>
					<div class="col-8">����</div>

				</div>
			</div>
			<div class="col-1">1</div>
			<div class="col-1">24,440(��)</div>
			<div class="col-1">����</div>
			<div class="col-4">2019.07.11~2019.07~</div>
			<div class="col-2">
				������ <br> <strong>(2,500��)</strong> <br> <small>�Ǹ���
					�귣��</small>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
</body>
</html>