<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 글작성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/adminNoticeWrite.css" />
</head>
<body>
	<main>
		<!-- 공지사항 글작성-->
		<section class="first-section">
			<div class="section-top-category-name">
				<div class="section-top-category-name-text1">커뮤니티</div>
				<div class="section-top-category-name-text2">공지사항 - 글작성</div>
			</div>
		</section>
		<!-- 제목 & 내용 -->
		<form action="" accept-charset="UTF-8" method="post">
			<section class="titleContentSection border-radius bgGray">
				<div class="titleContent">
					<div class="title">
						<p>제목</p>
						<div class="title-out-box">
							<textarea class="title-in-box-text" name="title"
								placeholder="제목을 입력하세요(50자 이내)"></textarea>
						</div>
					</div>
					<div class="content">
						<p>내용</p>
						<div class="content-box-out">
							<textarea class="content-area border-radius" name="content"
								placeholder="내용을 입력하세요(3000자 이내)"></textarea>
						</div>
					</div>
				</div>
			</section>
			<!-- 뒤로가기 & 작성완료 -->
			<section>
				<div class="pagebackComplete border-radius">
					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/admin/adminNotice/adminNoticeList/adminNoticeList.jsp'"
						class="pageback button-size border-radius bgRed colorWhite"
						name="pageback">뒤로가기</button>

					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/community/notice/noticeViewDetail/noticeViewDetail.jsp'"
						class="complete button-size border-radius bgGreen colorWhite "
						name="complete">작성완료</button>
				</div>
			</section>
		</form>
	</main>
</body>
</html>
