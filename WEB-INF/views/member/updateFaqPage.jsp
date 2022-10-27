<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>FAQ 수정 페이지</title>
</head>
<body>
	<div class="col container-fluid" style="width: 960px;">
		<jsp:include page="../common/header.jsp"></jsp:include>
		
		<!-- 구분 이미지 -->
		<img src="../resources/img/sub_topimg.gif">
		
		<!-- 내용 -->
		<div class="row mt-2">
			<!-- 사이드 네비바 -->
			<jsp:include page="../common/localNav.jsp"></jsp:include>
				
				<!-- 본문 -->
				<div class="col m-3">
					<div class="row mb-3">
						<div class="col">
							<div class="row text-end">
								<div class="col" style="font-size: 12px;">
									<span> 홈 > 공지사항 > </span><span style="color: #72a8fe; font-weight: bold">FAQ</span>
								</div>
							</div>
							<!-- 상세보기 내용 -->
							<div class="row m-3" style="font-size: 12px;">
								<div class="col  border-top border-2 border-secondary">
									<form action="./updateFaqProcess" method="post">
										<table class="table">
											<colgroup>
												<col width="17%">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">질문</th>
													<td class="d-grid">
														<input type="text" name="faq_ask_content" placeholder="질문" value="${data.tb_004.faq_ask_content }">
													</td>
												</tr>
												<tr>
													<th scope="row" class="totalth text-center" colspan="4">답변</th>
												</tr>
												<tr>
													<td colspan="4">
														<textarea rows="12" name="faq_ask_comment" style="width: 100%; border: none; overflow: auto; font-size: 75%/1.4em; color: #747474"">${data.tb_004.faq_ask_comment}</textarea>
	
													</td>
												</tr>
											</tbody>
										</table>
										<div class="row mt-3 justify-content-end">
											<div class="col-2 d-grid">
												<input type="hidden" name="faq_proper_num" value="${data.tb_004.faq_proper_num}"> 
												<input class="btn btn-primary" type="submit" value="수정하기">
											</div>
										</div>
									</form>
								</div>		
								<form action="./faqPage" method="post">
									<input class="btn btn-primary" type="submit" value="목록으로">
								</form>
							</div>
						</div>
					</div>

				</div>
				<jsp:include page="../common/footer.jsp"></jsp:include>
		</div>
	</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>