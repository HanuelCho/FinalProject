<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>Insert title here</title>


<!-- //�ּ� script -->
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- // ������ ��Ŀ ���� �ʿ��Ѱ�----------------------------------------------------- -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  


<!-- //------------------------------------------------------------------------------ -->
<link rel="icon" href="/img/core-img/favicon.ico">
<link rel="stylesheet" href="/css/style2.css">

<style>
.title{
 text-align: left;
 margin-left:26%;
}

#addinput{
	float:left;
	padding-right:10px;
}
</style>

</head>
<body>

<section class="akame-contact-area bg-gray section-padding-80">
        <div class="container">
            <div class="row">
                <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center">
                        <img alt="" src="/img/core-img/fakelogo.png" style="width: 30%">
                      
                    </div>
                </div>
                
                
                <div class="col-12">
                    <div class="section-heading text-center">
                        <h2>ȸ������</h2>
                      
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Form -->
                    <form id=form action="/member/joinProc" method=post class="akame-contact-form border-0 p-0">
                    
                        <div class="row" >
                            <div class="col-lg-12 text-center">
                          	  <div class=title>���̵�</div>
                                <input type="text" style="width: 50%;margin: auto;" id=id name="member_id" class="form-control mb-30" placeholder="id">
                            </div>
                            <div class="col-lg-12 text-center" >
                                <div class=title>��й�ȣ</div>
                    
                                <input type="password" style="width: 50%; margin: auto;" id=pw name="member_pw" class="form-control mb-30" placeholder="password">
                            </div>
                            <div class="col-lg-12 text-center" >
                                <div class=title>��й�ȣ Ȯ��</div>
                    
                                <input type="password" id=pwCheck style="width: 50%; margin: auto;"  class="form-control mb-30" placeholder="passwordCheck">
                            </div>
                           
                           <div class="col-lg-12 text-center" >
                                <div class=title>�̸�</div>
                    
                                <input type="text" id=name style="width: 50%; margin: auto;" name="member_name" class="form-control mb-30" placeholder="name">
                            </div>
                           
                           <div class="col-lg-12 text-center" >
                                <div class=title>�������</div>
                    
                                <input type="text" id="birth" style="width: 50%; margin: auto;" name="member_birth" class="form-control mb-30" placeholder="birth">
                            </div>
                           
                           
                                <div class=title id=addinput>�ּ� �Է�</div><input id=addbtn type="button" class="mb-12 mb-2" value="�����ȣ ã��" id="search">
                                <div class="col-lg-12 text-center" >
                    			 <div class="col-lg-12">
                    			 <input type="text" id="postcode" style="width: 51.2%; margin: auto;" name="member_postcode" class="form-control mb-30" placeholder=""><br>
                    			 <input type="text" id="address1" style="width: 51.2%; margin: auto;" name="member_address1" class="form-control mb-30" placeholder=""><br>
                    			 <input type="text" id="address2" style="width: 51.2%; margin: auto;" name="member_address2" class="form-control mb-30" placeholder="">
                        <br>
                        
                    </div>
                            </div>
                            
                            <div class="col-lg-12 text-center" >
                                <div class=title>����</div>
                    			<input type="radio" id="man" name=member_gender value="M" checked="checked" >����
            <input type="radio" id="woman" name=member_gender value="W">����
                                
                            </div><br>
                           
                           <div class="col-lg-12 text-center" >
                                <div class=title>��ȭ��ȣ</div>
                    
                                <input type="text" name=member_phone id=phone style="width: 50%; margin: auto;"  class="form-control mb-30" placeholder="phone">
                            </div>
                           
                           
                            <div class="col-12 text-center">
                            <br><br>
                                <button type="button" class="btn akame-btn btn-3 mt-15 active" id=send>�����ϱ�</button>
                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>


<!-- <form id=form action="/member/joinProc" method=post> -->

<!-- 	<tr> -->
<!--         <th>����</th> -->
<!--         <td> -->
<!--         <input type="text" name=member_birth id="birth" size="8" maxlength="8" /> -->
<!--         </td> -->

<!-- 	<tr> -->
       
	
	
	<script>
		
		//���⼭ ���� ���Թ�ư �������� ����
		$("#send").on("click",function(){
			
		if($("#id").val() == ""){
		   alert("���̵� �Է��ϼ���");
			$("#id").focus();
		   }else if($("#pw").val()== ""){
			alert("��й�ȣ�� �Է��ϼ���");
			$("#pw").focus();
		}else if($("#pwCheck").val() == ""){
			alert("��й�ȣȮ���� �Է��ϼ���");
			$("#pwCheck").focus();
		}else if($("#pw").val() != $("#pwCheck").val()){
			 $("#pw").val("");
                $("#pwCheck").val("");
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
                $("#pw").focus();

		}else if($("#name").val() == ""){
			alert("�̸��� �Է��ϼ���");
			$("#name").focus();
		}else if($("#birth").val() =="" ){
			alert("��������� �Է��ϼ���");
		}else if($("#add").val() == ""){
			alert("�ּҸ� �Է��ϼ���");
		}else if($("#phone").val() == ""){
			alert("��ȣ�� �Է��ϼ���");
		}else if ($("#man").is(':checked') == false && $("#woman").is(':checked') == false) {
                alert("���ڶǴ� ���ڸ�  �� �����ϼ���!");
            }else{
            	$("#form").submit();
            }

		

		
 		
		
		})
		// ��������� ���Թ�ư�� ��������
		
		
		
		
		
		
		
		
		
		$("#pwCheck").on("focus",function(){
			if($("#pw").val().length==0){
				alert("��й�ȣ ���� �Է��ϼ���");
				$("#pw").focus();
			} 
		})
		$("#pwCheck").on("focusOut",function(){
			if($("#pw").val() == $("#pwCheck").val()){
				alert("��й�ȣ�� ��ġ�մϴ�");
			}
		})
	
		
		
		
		//��������Ŀ -----------------------------------------------------------
		 $("#birth").datepicker({
		  showOn: "both", // ��ư�� �ؽ�Ʈ �ʵ� ��� Ķ������ �����ش�.
		  buttonImage: "/application/db/jquery/images/calendar.gif", // ��ư �̹���
		  buttonImageOnly: true, // ��ư�� �ִ� �̹����� ǥ���Ѵ�.
		  changeMonth: true, // ���� �ٲܼ� �ִ� ����Ʈ �ڽ��� ǥ���Ѵ�.
		  changeYear: true, // ���� �ٲ� �� �ִ� ����Ʈ �ڽ��� ǥ���Ѵ�.
		  minDate: '-100y', // ���糯¥�κ��� 100���������� ���� ǥ���Ѵ�.
		  nextText: '���� ��', // next �������� ����.
		  prevText: '���� ��', // prev �������� ����.
		  numberOfMonths: [1,1], // �ѹ��� �󸶳� ���� ���� ǥ���Ұ��ΰ�. [2,3] �� ���, 2(��) x 3(��) = 6���� ���� ǥ���Ѵ�.
		  //stepMonths: 3, // next, prev ��ư�� Ŭ�������� �󸶳� ���� ���� �̵��Ͽ� ǥ���ϴ°�. 
		  yearRange: 'c-100:c+10', // �⵵ ���� ����Ʈ�ڽ��� ���� �⵵���� ����, ���ķ� ���� ������ ǥ���Ұ��ΰ�.
		  showButtonPanel: true, // Ķ���� �ϴܿ� ��ư �г��� ǥ���Ѵ�. 
		  currentText: '���� ��¥' , // ���� ��¥�� �̵��ϴ� ��ư �г�
		  closeText: '�ݱ�',  // �ݱ� ��ư �г�
		  dateFormat: "yymmdd", // �ؽ�Ʈ �ʵ忡 �ԷµǴ� ��¥ ����.
		  showAnim: "slide", //�ִϸ��̼��� �����Ѵ�.
		  showMonthAfterYear: true , // ��, ����� ����Ʈ �ڽ��� ��,�� ������ �ٲ��ش�. 
		  dayNamesMin: ['��', 'ȭ', '��', '��', '��', '��', '��'], // ������ �ѱ� ����.
		  monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] // ���� �ѱ� ����.
		                    
		 });
		
		//----------------------------------------------------------------------------
		
		
		//��������Ŀ �̹��� �����
		$("img.ui-datepicker-trigger").remove();
		
		
		
		
		 document.getElementById("search").onclick = searchAddress;
                
                function searchAddress() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
                            // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                            // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                            var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                            var extraRoadAddr = ''; // ���� �׸� ����
                            // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                            // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                            if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                                extraRoadAddr += data.bname;
                            }
                            // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                            if(extraRoadAddr !== ''){
                                extraRoadAddr = ' (' + extraRoadAddr + ')';
                            }
                            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                            document.getElementById('postcode').value = data.zonecode;
                            document.getElementById("Address1").value = roadAddr;
                        }
                    }).open();
                }
		
		
		
		
	</script>
	
	
	
</body>
</html>