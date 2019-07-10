<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="./img/core-img/favicon.ico">
<link rel="stylesheet" href="../css/style2.css">
</head>
<body>
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
                    <div class="col-lg-12"><p>�� ��</p></div>
                    <div class="row">
                        <div class="col-md-6">
                            
                            <p>
                                Indie music, skiing and hiking. I love the great outdoors.
                            </p>
                        </div>
                        <div class="col-md-12 mt-5">
                            <h5 class="mt-2"><span class="fa fa-clock-o ion-clock float-right"></span> Recent Activity</h5>
                            <table class="table table-sm table-hover table-striped">
                                <tbody>                                    
                                    <tr>
                                        <td>
                                            <strong>Abby</strong> joined ACME Project Team in <strong>`Collaboration`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Gary</strong> deleted My Board1 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Kensington</strong> deleted MyBoard3 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>John</strong> deleted My Board1 in <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Skell</strong> deleted his post Look at Why this is.. in <strong>`Discussions`</strong>
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
<!--                        <form id=mypage_Img action="/member/uploadImg" method="post" enctype="multipart/form-data"> -->
<%--        				 <img src="${id.member_imgpath }"  class="mx-auto img-circle" alt="avatar"> --%>
 <!--             <label class="custom-file"> --> -->
 <!--                 <input type="file" id="file" class="custom-file-input"> --> 
<<!--                 <span class="custom-file-control">Choose file</span> --> 
<!-- 						<input type=file id="file" name="file"> -->
<!--                       <input type="button" id="change"class="btn btn-primary " value="���� ����"> -->
<!--                        <input type="submit" id="uploadImg"class="btn btn-primary " value="���� ���ε�"> -->
                       
<!-- <!--             </label> --> -->
<!-- </form> -->
        </div>
        <br>
                    <form id="edit_mypage" action="/member/edit_mypage" method="post">
                        <div class="form-group row"  >
                            <label class="col-lg-3 col-form-label form-control-label">���̵�</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${id.member_id }" readonly>
                                
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
                            <label class="col-lg-3 col-form-label form-control-label">�ּ�</label>
                            <div class="col-lg-9">
                                <input class="form-control" name="member_add" type="text" value="${id.member_add}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�ڵ��� ��ȣ</label>
                            <div class="col-lg-9">
                                <input class="form-control" name="member_phone" type="text" value="${id.member_phone}" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">�ڱ� �Ұ�</label>
                            <div class="col-lg-9">
                                <input class="form-control" name="member_intro" type="text" value="" >
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
                                <input type="submit" id="edit_info" class="btn btn-primary" value="���� ����">
                                <input type="button" id="delId" class="btn btn-primary" value="ȸ�� Ż��">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
<!--         <div class="col-lg-4 order-lg-1 text-center"> -->
<!--             <img src="//placehold.it/150" class="mx-auto img-fluid img-circle d-block" alt="avatar"> -->
<!--             <label class="custom-file"> -->
<!--                 <input type="file" id="file" class="custom-file-input"> -->
<!--                <span class="custom-file-control">Choose file</span> -->
<!--                       <input type="button"  class="btn btn-primary custom-file-control" value="���� ����"> -->
<!--             </label> -->
<!--         </div> -->
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

// $("#edit_info").on("click",function(){//�������� ��ư Ŭ����
// 	if($("#pw1").val()==""||$("#pw2").val()==""){
// 		alert("��й�ȣ�� �Է����ּ���");
// 		return;
// 	}
// 	else if($("#pw1").val()!=$("#pw2").val()){
// 		alert("��й�ȣ ���� ���ƾ� �մϴ�");
// 		return;
// 	}else{	
// 		$("#edit_mypage").submit();
		
// 	}
// })

</script>
	
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>  
</body>
</html>