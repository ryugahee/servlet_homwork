<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.hw.homework.DTO.WriterDTO" %>

<% WriterDTO writerDTO1 = (WriterDTO)request.getAttribute("writerDTO1"); %>

<html>
<head>
    <mata name="viewport" content="width=device-width, initial-scale=1"></mata>
    <title>글 상세</title>
</head>
<body>
<h1 text>글 상세</h1>
<hr>
<form class="write-form" action="/updateBoard.do" method="post">
    <input type="hidden" name="writerIndex" value="<%=writerDTO1.getWriterIndex()%>">
    <table style="text-align: center; border: 1px solid #dddddd">
        <thead>
        <tr>
            <td>작성자</td>
            <td text-align="left"><input type="text" name="writer" value="<%=writerDTO1.getWriter()%>"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td text-align="left"><input type="textarea" name="content" value="<%=writerDTO1.getContent()%>"></td>
        </tr>
        </thead>
        <tr>
            <td colspan="2" text-align="center">
                <input type="submit" value="수정">
            </td>
        </tr>
    </table>
    <a href="board.do">글목록</a>
    <a href="boardDelete.do?writerIndex=<%=writerDTO1.getWriterIndex()%>">글삭제</a>
</form>
</body>
</html>

