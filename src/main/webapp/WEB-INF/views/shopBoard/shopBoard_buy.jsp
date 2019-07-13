<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style2.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
input[type="text"] {
	box-shadow: 4px 4px 5px #gray inset;
	border-radius: 5px;
}

a {
	cursor: pointer;
}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false"
	onselectstart="return false">
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>

	<div class="container mt-5">
		<div class="row  pb-3 border-bottom">
			<div class="col-12 text-right">
				<a href="#" class="btn akame-btn">���� ������ </a>
			</div>
		</div>

		<div class="row border-bottom border-top py-2 bg-gray">
			<div class="col-6">
				<h3>�ֹ�����</h3>
			</div>
			<div class="col-6 " style="text-align: right">
				<h3>��ٱ��� �ֹ�/���� �ֹ��Ϸ�</h3>
			</div>
		</div>

		<div class="row py-3">
			<div class="col-6 font-weight-bold text-bottom">
				<span class="">�ֹ���ǰ Ȯ��</span>
			</div>
			<div class="col-6 text-bottom" style="text-align: right">
				<p>*��ǰ���� �� �ɼǺ����� ��ǰ�� �Ǵ� ��ٱ��Ͽ��� �����մϴ�.</p>
			</div>

		</div>
		<div class="row border-bottom border-top bg-gray text-center py-2">
			<div class="col-5">��ǰ/�ɼ�����</div>

			<div class="col-1">����(��)</div>
			<div class="col-1">��ǰ�ݾ�</div>
			<div class="col-1">����</div>
			<div class="col-2">���� ����</div>
			<div class="col-2">��ۺ�/�Ǹ���</div>
		</div>
		<div class="row border-bottom border-top text-center py-4">
			<div class="col-5 " style="margin-top: 1.4em">
				<div class="row">
					<div class="col-3">${dto.shop_imagepath1 }</div>
					<div class="col-9" style="text-overflow: ellipsis;">
						<span>${dto.shop_title }</span>
					</div>

				</div>
			</div>

			<div class="col-1" style="margin-top: 1.4em">${quantity }</div>
			<div class="col-1" style="margin-top: 1.4em">${price }(��)</div>
			<div class="col-1" style="margin-top: 1.4em">${dto.shop_location }</div>
			<div class="col-2" style="margin-top: 1.4em">${dto.shop_expiration }</div>
			<div class="col-2">
				������ <br> <strong>(2,500��)</strong> <br> <small>${dto.shop_id }
					${dto.shop_brand }</small>
			</div>
		</div>
		<div class="row pt-5 pb-1">
			<div class="col-12 ">
				<h3>�ֹ��� ���� �Է�</h3>
			</div>
		</div>
		<div class="row border rounded">
			<div class="col-3 py-2 font-weight-bold">�ֹ��� �̸�</div>
			<div class="col-9 py-2">
				<input type="text" name="order_name" id="order_name">
			</div>
			<div class="col-3 py-2 font-weight-bold">�޴���ȭ</div>
			<div class="col-9 py-2">
				<input type="text" name="phone1" id="phone1" style="width: 8em">
				- <input type="text" name="phone2" id="phone2" style="width: 8em">
				- <input type="text" name="phone3" id="phone3" style="width: 8em">
			</div>
			<div class="col-3 py-2 font-weight-bold">�̸���</div>
			<div class="col-9 py-2">
				<input type="text" name="email1" id="email1"> @ <input
					type="text" name="email2" id="email2">
			</div>

		</div>
		<div class="row">
			<div class="col-12 pt-2">
				<p>
					<small>11�����ߴ� ����Ǹ��߰��ڷμ� ����Ǹ��� ����ڰ� �ƴϸ�, �����Ǹ��ڰ� ����� ��ǰ���� ��
						�ŷ��� ���� 11�����ߴ� ��ü�� å���� ���� �ʽ��ϴ�.</small>
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-12 pt-2 font-weight-bold">
				<h3>����� ���� �Է�</h3>
			</div>
		</div>

		<div class="row border rounded">
			<div class="col-3 font-weight-bold py-2" style="line-height: 2em">���������</div>
			<div class="col-9 py-2">
				<span>���� ����� <input type="radio" name="origin_radio"
					id="origin"></span> <span>�ű� ����� <input type="radio"
					name="origin_radio" id="new">
				</span>
			</div>
			<div class="col-3 font-weight-bold py-2">�����ô� ��</div>
			<div class="col-9 py-2">
				<input type="text" style="width: 8em" id="geter_name">
			</div>
			<div class="col-3 font-weight-bold py-2">���������</div>
			<div class="col-9 py-2">
				<input type="text" id="sample6_postcode" placeholder="�����ȣ">
				<input type="button" onclick="sample6_execDaumPostcode()"
					value="�����ȣ ã��" style="margin-left: 0.5em"><br> <br>
				<input type="text" id="sample6_address" placeholder="�ּ�"
					style="width: 20em"><br> <br> <input type="text"
					id="sample6_detailAddress" placeholder="���ּ�" style="width: 25em">
				<input type="text" id="sample6_extraAddress" placeholder="�����׸�">

			</div>
			<div class="col-3 font-weight-bold py-2">�޴���ȭ</div>
			<div class="col-9 py-2">
				<input type="text" name="phone1" style="width: 8em" id="phone1"
					value=""> - <input type="text" name="phone2"
					style="width: 8em" id="phone2"> - <input type="text"
					name="phone3" style="width: 8em" id="phone3">
			</div>
			<div class="col-3 font-weight-bold py-2">��۽ÿ䱸����</div>
			<div class="col-9">
				<input type="text" style="width: 35em">
				<p style="color: blue;">
					<small>*Ư���� ������� �����ϰ��� �� ��� �Ǹ��ڿ� �����Ͽ� ������� Ȯ�����ֽñ� �ٶ��ϴ�.</small>
				</p>

			</div>
		</div>
		<div class="row py-2">
			<div class="col-12">
				<p>
					<small>���ڻ�ŷ� �Һ��ں�ȣ ������ ���� ���� ���� ���� �ȳ�: �� �Ǹ��ڴ� 11�����߰� �����
						���� ���� ���� ���񽺸� �ڵ����� �������Դϴ�. (������ݿ�ġ�� ��Ϲ�ȣ 02-006-000022) </small>
				</p>

			</div>
		</div>

		<div class="row py-5 border-bottom">
			<div class="col-12 text-center">
				<a class="btn akame-btn mr-3" id="buy_aTag">�� �� �� �� </a> <a href="#"
					class="btn akame-btn ml-3">�� �� �� ��</a>

			</div>
		</div>
	</div>



	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		// 	����� radio reset 
		var reset = function() {
			$("#geter_name").val("");
			$("#sample6_postcode").val("");
			$("#sample6_address").val("");
			$("#sample6_detailAddress").val("");
			$("#phone1").val("");
			$("#phone2").val("");
			$("#phone3").val("");
		}
		var phone = '${id.member_phone}';
		console.log(phone);
		var origin = function() {

			$("#geter_name").val("${id.member_name}");
			$("#sample6_postcode").val("${id.member_postcode}");
			$("#sample6_address").val("${id.member_address1}");
			$("#sample6_detailAddress").val("${id.member_address2}");
			$("#phone1").val(phone.substr(0, 2));
			$("#phone2").val(phone.substr(2, 4));
			$("#phone3").val(phone.substr(4, 4));
		}
		// ���� �ּ� API	
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

							// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
							// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
							var addr = ''; // �ּ� ����
							var extraAddr = ''; // �����׸� ����

							//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
							if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
								addr = data.roadAddress;
							} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
								addr = data.jibunAddress;
							}

							// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
							if (data.userSelectedType === 'R') {
								// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
								// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
								if (data.bname !== ''
										&& /[��|��|��]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
							document.getElementById("sample6_detailAddress").value = "";//���ּ� �Է��ϰ� �߰��ϸ� �����ǰ���
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
		//������Ʈ API

		$("#buy_aTag").on("click", function() {
			var IMP = window.IMP; // ��������
			IMP.init('imp00502224'); // 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���

			IMP.request_pay({
				pg : 'kakao', // version 1.1.0���� ����.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '${dto.shop_title}', //�ֹ��� �̸�
				amount : '${dto.shop_price}', //�ֹ��ݾ�  �����ܿ��� ���� �Ǹűݾ��̶� ���ؾ��� ��ũ��Ʈ ���ݰ���
				buyer_email : $("#email1").val()+"@"+$("#email2").val(), //������ �̸��� 
				buyer_name : $("#order_name").val(), //�� ������ �̸�
				buyer_tel : $("#phone1").val()+$("#phone2").val()+$("#phone3").val(), //������ ��ȣ
				buyer_addr : $("#sample6_address").val()+" "+$("#sample6_detailAddress").val(), //���� ������ּ�?
				buyer_postcode : $("#sample6_postcode").val(), //������ �����ּ�
				m_redirect_url : '/board/shopBoard_import'//�̰� mapping��?
			}, function(rsp) {
				if (rsp.success) {
					console.log(resp);
					var msg = '������ �Ϸ�Ǿ����ϴ�.';
					msg += '����ID : ' + rsp.imp_uid;
					msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
					msg += '���� �ݾ� : ' + rsp.paid_amount;
					msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
				} else {
					var msg = '������ �����Ͽ����ϴ�.';
					msg += '�������� : ' + rsp.error_msg;
				}
				alert(msg);
			});
		})

		// �ű� ����� radio
		$("#new").on("click", function() {
			reset();
		})
		// ���� ����� radio
		$("#origin").on("click", function() {

			origin();
		})
	</script>
</body>
</html>