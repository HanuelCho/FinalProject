<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="./img/core-img/favicon.ico">
<link rel="stylesheet" href="../css/style2.css">
<style>
.float{
float:left;
}
#findAdd{
padding:5px;
width:50px;
height:50px;
}
#myinfo{
width:200px;
height:200px;
}
.no{
padding:0px;
margin:0px;
}
</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>
	
	
<div class="container">
    <div class="row my-2">
        <div class="col-lg-8 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#profile" data-toggle="tab" class="nav-link active">���� ����</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#messages" data-toggle="tab" class="nav-link">������</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link">���� ����</a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane active" id="profile">
                    <div class="row">
                <div><img src="${id.member_imgpath }"  class="mx-auto img-circle" id=myinfo alt="avatar"></div>
                        <div class="col-lg-6 col-md-6">
                        <div class="float col-lg-12 col-mf-12">
                             <div class=" form-group row"  >
                            <label class="col-lg-3 col-form-label form-control-label">���̵�</label>
                            <div class=" col-lg-9">
                               <div class=" form-control"  type="text" >${id.member_id } </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�̸�</label>
                            <div class="col-lg-9">
                                <div class="form-control" type="text"> ${id.member_name } </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">����</label>
                            <div class="col-lg-9">
                                <div class="form-control" type="text">${id.member_birth}</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">����</label>
                            <div class="col-lg-9">
                                <div class="form-control" type="text">${id.member_gender }</div>
                            </div>
                        </div>
                        </div>
                        </div>
                        <div class="col-md-12 mt-5">
                            <h5 class="mt-2"><span class="fa fa-clock-o ion-clock float-right"></span>�ֱ� ���� Ȱ��</h5>
                            <table class="table table-sm table-hover table-striped">
                                <tbody>                                    
                                    <tr>
                                        <td>
                                            <strong>�赿��</strong>���� �Ǹ� Ȱ�� <strong>`����Ƣ��`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>�赿��</strong>���� �Ǹ� Ȱ�� <strong>`�����ֽ�`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>�赿��</strong>���� ���� Ȱ�� <strong>`������`</strong>
                                        </td>
                                    </tr>
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <div class="tab-pane" id="messages">
                    <div class="alert alert-info alert-dismissable">
                        <a class="panel-close close" data-dismiss="alert">��</a> �ֱ� ���� ���� ����Դϴ�
                    </div>
                    <table class="table table-hover table-striped">
                        <tbody>                                    
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">3 hrs ago</span> Here is your a link to the latest summary report from the..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">Yesterday</span> There has been a request on your account since that was..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/10</span> Porttitor vitae ultrices quis, dapibus id dolor. Morbi venenatis lacinia rhoncus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Vestibulum tincidunt ullamcorper eros eget luctus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Maxamillion ais the fix for tibulum tincidunt ullamcorper eros. 
                                </td>
                            </tr>
                        </tbody> 
                    </table>
                </div>
                <div class="tab-pane" id="edit">
                       <div id="preview"class="col-lg-4 order-lg-1 text-center">
                       <form id=mypage_Img action="/member/uploadImg" method="post" enctype="multipart/form-data">
       				 <img src="${id.member_imgpath }"  class="mx-auto img-circle" alt="avatar">
						<input type=file id="file" name="file">
						
                      <input type="button" id="change"class="btn btn-primary " value="���� ����">
                       <input type="submit" id="uploadImg"class="btn btn-primary " value="���� ���ε�">
                    
						</form>
      				  </div>
        <br>
        		<div>
                    <form id="edit_mypage" action="/member/edit_mypage" method="post">
                        <div class="form-group row"  >
                            <label class="col-lg-3 col-form-label form-control-label">���̵�</label>
                            <div class="col-lg-9">
                                <input class="form-control" name="member_id" type="text" value="${id.member_id }" readonly>
                                
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�̸�</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${id.member_name }"  readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">����</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${id.member_birth}"  readonly >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">����</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${id.member_gender }"  readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�����ȣ
<!--                             <button type="button" onclick="sample4_execDaumPostcode()" -->
<!--                            class="btn btn-primary p-1"data-aria-haspopup="true"aria-expanded="false" id="findAdd">����</button>       -->
                           <img src="/img/core-img/find_addr.png"onclick="sample4_execDaumPostcode()" 
                           class=  "mx-auto img-circle"  data-aria-haspopup="true"aria-expanded="false" id="findAdd" >                     
                            </label>
                            <div class="col-lg-9">
                                <input class="form-control" id="postcode"name="member_postcode" type="text" value="${id.member_postcode}" readonly>
                            </div>
                        </div>
                          <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">���θ� �ּ� </label>
                            <div class="col-lg-9">
                                <input class="form-control" id="add1"name="member_address1" type="text" value="${id.member_address1}" readonly>
                            </div>
                        </div>
                          <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">���ּ�  </label>
                            <div class="col-lg-9">
                                <input class="form-control" id="add2"name="member_address2" type="text" value="${id.member_address2}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�ڵ��� ��ȣ</label>
                            <div class="col-lg-9">
                                <input class="form-control" id="phone" name="member_phone" type="text" value="${id.member_phone}"
                                placeholder=" '-' �����ϰ� �Է�" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�ڱ� �Ұ�</label>
                            <div class="col-lg-9">
                                <input class="form-control"id="intro" name="member_intro" type="text" value="${id.member_intro}" >
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">��й�ȣ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" name="member_pw" id="pw1">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">��й�ȣ Ȯ��</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password"  id="pw2">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
<!--                                 <input type="reset" class="btn btn-secondary" value="�ʱ�ȭ"> -->
                                <input type="button" id="edit_info" class="btn btn-primary" value="���� ����">
                                <input type="button" id="delId" class="btn btn-primary" value="ȸ�� Ż��">
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
</div>

<script>
$("#file").hide();
$("#change").on("click",function(){
    $("#file").click();//�������� ��ư ������ file��ư Ŭ����

});

$("#file").on("change",function(){
	file=$("#file").prop("files")[0];
	ImgURL=window.URL.createObjectURL(file);
	$("#preview img").attr('src',ImgURL);
	$("#preview").show();
})

$("#edit_info").on("click",function(){//�������� ��ư Ŭ����
	
	var regnum = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	
	
	
	if ($("#postcode").val() == "") {
		alert("�ּҸ� �Է��ϼ���");
	}else if ($("#phone").val() == "") {
		alert("�ڵ��� ��ȣ�� �Է��ϼ���");
		$("#phone").focus();
	}else if(!regnum.test($("#phone").val())){
		alert("�ڵ��� ��ȣ�� ���Ŀ� ���� �ʽ��ϴ�");
		$("#phone").focus();
  	}else if($("#pw1").val()==""){
		alert("��й�ȣ�� �Է����ּ���");
		$("#pw1").focus();
  	}else if($("#pw2").val()==""){
  		alert("��й�ȣ Ȯ���� �Է����ּ���");
		$("#pw2").focus();
  	}
  	else if($("#pw1").val()!=$("#pw2").val()){
		alert("��й�ȣ�� ���ƾ� �մϴ�");
		$("#pw2").focus();
	}else if($("#add2").val()==""){
			var result =confirm("���ּҰ� �����ϴ�.\n�����Ͻðڽ��ϱ�?");
			if(result) $("#edit_mypage").submit();
			else return;
	}
	
});
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>  
<script>  <!--�ּҵ��-->
                              //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
                              function sample4_execDaumPostcode() {
                                 new daum.Postcode(
                                       {
                                          oncomplete : function(
                                                data) {
                                             // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                                             // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                                             // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                                             var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                                             var extraRoadAddr = ''; // ���� �׸� ����

                                             // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                                             // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                                             if (data.bname !== ''
                                                   && /[��|��|��]$/g
                                                         .test(data.bname)) {
                                                extraRoadAddr += data.bname;
                                             }
                                             // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                                             if (data.buildingName !== ''
                                                   && data.apartment === 'Y') {
                                                extraRoadAddr += (extraRoadAddr !== '' ? ', '
                                                      + data.buildingName
                                                      : data.buildingName);
                                             }
                                             // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                                             if (extraRoadAddr !== '') {
                                                extraRoadAddr = ' ('
                                                      + extraRoadAddr
                                                      + ')';
                                             }

                                             // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                                             document
                                                   .getElementById('postcode').value = data.zonecode;
                                             document
                                                   .getElementById("add1").value = roadAddr;
//                                              document
//                                                    .getElementById("add2").value = data.jibunAddress;
                                             document
                                             .getElementById("add2").value ="";//���θ� �ޱ�

                                          }
                                       }).open();
                              }
                           </script>

	
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>  
</body>
</html>