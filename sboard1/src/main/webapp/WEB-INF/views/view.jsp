<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${suser eq null}">
	<%-- 로그인 안했으면 로그인 페이지로 리다이렉트 시킴 --%>
	<c:redirect url="/user/login?result=0"></c:redirect>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글보기</title>
    <link rel="stylesheet" href="/sboard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="board" class="view">
            <h3>글보기</h3>
            <table>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="제목입니다." readonly/>${article.title}</td>
                </tr>
                <tr>
                    <td>첨부파일</td>
                    <td>
                        <a href="#">2020년 상반기 매출자료.xls</a>
                        <span>7회 다운로드</span>
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="content" readonly>${article.content}</textarea>
                    </td>
                </tr>
            </table>
            <div>
                <a href="#" class="btnDelete">삭제</a>
                <a href="/sboard1/modify" class="btnModify">수정</a>
                <a href="/sboard1/list" class="btnList">목록</a>
            </div>  
            
            <!-- 댓글리스트 -->
            <section class="commentList">
                <h3>댓글목록</h3>
                <article class="comment">
                    <span>
                        <span>길동이</span>
                        <span>20-05-13</span>
                    </span>
                    <textarea name="comment" readonly>댓글 샘플입니다.</textarea>
                    <div>
                        <a href="#">삭제</a>
                        <a href="#">수정</a>
                    </div>
                </article>
                <p class="empty">
                    등록된 댓글이 없습니다.
                </p>
            </section>

            <!-- 댓글입력폼 -->
            <section class="commentForm">
                <h3>댓글쓰기</h3>
                <form action="#">
                    <textarea name="comment"></textarea>
                    <div>
                        <a href="#" class="btnCancel">취소</a>
                        <input type="submit" class="btnWrite" value="작성완료"/>
                    </div>
                </form>
            </section>

        </section>
    </div>    
</body>
</html>