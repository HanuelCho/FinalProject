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
<style>
#img1 {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>

	<!-- /header -->
	<section class="akame-about-area section-padding-80-0">


	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-2">asdasd</div>
			<div class="col-lg-8">
				<div class="container">
					<div class="row">
						<c:forEach var="i" items="${boardList }">
							<div
								class="col-12 col-sm-6 col-lg-3 akame-portfolio-item haircuts mb-5 wow fadeInUp"
								data-wow-delay="500ms">
								<div class="akame-portfolio-single-item" style="height: 250px">
									<img src="${i.shop_imagepath1 }" id="img1" alt="">

									<!-- Overlay Content -->
									<div
										class="overlay-content d-flex align-items-center justify-content-center">
										<div class="overlay-text text-center">
											<h4 class="pb-3">${i.shop_contents }</h4>
											<p class="pt-3">${ i.shop_price}</p>
										</div>
									</div>

									<!-- Thumbnail Zoom -->
									<a href="${i.shop_imagepath1 }" class="thumbnail-zoom"><i
										class="icon_search"></i></a>

								</div>
								<div class="team-member-info border">
									<a href="/shopboard/ShopBoardViewProc?seq=${i.shop_seq }"><h5>${i.shop_title }</h5></a>
									<p>${i.shop_contents }</p>
								</div>
							</div>
						</c:forEach>


					</div>
					<div class="row" id="extendList"></div>
				</div>
			</div>
			<div class="col-lg-2">asdasd</div>
		</div>
	</div>

	</section>

	<script>
	
      var count = 2;
      $(window).scroll(
            function() {
               // ���ϴ��� ��츦 üũ�ϱ� ���� ���ϴ� ��ġ���� ����
               // ȭ�� ������ü�� ���̿���, ���� â ���̸� �� ���� ���ϴ� ��
            
            console.log($(document).height() + " : " + Number($(window).scrollTop())  + " : " + Number($(window).height()));

                 if($(document).height() <= $(window).scrollTop() + $(window).height()+100 ){
                  // ���ϴ����� �������� ���
                  
               
                  
                  $.ajax({
                     url : "/shopboard/shopBoardScroll",
                     type : "post",
                     data : {
                        page : count
                     }
                  }).done(function(resp) {
                     count++
                     var result = JSON.parse(resp);
                     console.log(result);
                     
                     for(var i = 0 ; i < result.length; i ++){
                     $("#extendList").append(`<div class='col-12 col-sm-6 col-lg-3 akame-portfolio-item haircuts mb-30 wow fadeInUp'
                              data-wow-delay='500ms'>
                              <div class='akame-portfolio-single-item' style="height: 250px">
                                 <img id='img1' src=`+ result[i].shop_imagepath1+` >

                                 <!-- Overlay Content -->
                                 <div
                                    class='overlay-content d-flex align-items-center justify-content-center'>
                                    <div class='overlay-text text-center'>
                                       <h4>Hairstyle</h4>
                                       <p>Consectetur adipisicing elit sed doe</p>
                                    </div>
                                 </div>

                                 <!-- Thumbnail Zoom -->
                                 <a href=`+ result[i].shop_imagepath1+` class='thumbnail-zoom'><i
                                    class='icon_search'></i></a>

                              </div>
                              <div class='team-member-info border'>
                              <a href='/shopboard/ShopBoardViewProc?seq=`+result[i].shop_seq+`' <h5> `+result[i].shop_title+` </h5></a>
                                 <p>`+ result[i].shop_contents+` </p>
                              </div>
                           </div>`);
                     };
                     })
                  
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