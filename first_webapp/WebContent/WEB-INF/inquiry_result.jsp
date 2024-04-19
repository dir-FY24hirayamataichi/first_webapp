<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>お問い合わせ結果</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${errors != null}">
                <h1>入力内容にエラーがあります</h1>
                <ul>
                    <c:forEach var="error" items="${errors}">
                        <li><c:out value="${error}"></c:out></li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
		        <h1>お問い合わせを受け付けました</h1>
		        <table border="1">
		            <tbody>
		                <tr>
			                <th>氏名</th>
			                <td><c:out value="${username}"></c:out></td>
		                </tr>
		                <tr>
		                    <th>メールアドレス</th>
		                    <td><c:out value="${usermail}"></c:out></td>
		                </tr>
		                <tr>
		                    <th>お問い合わせ内容</th>
		                    <td>
		                        <pre><c:out value="${content}"></c:out></pre>
		                    </td>
		                </tr>
		            </tbody>
		        </table>
	        </c:otherwise>
        </c:choose>
    </body>
</html>