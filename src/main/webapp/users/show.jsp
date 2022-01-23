<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">

                    <tr>
                        <th>Id</th>
                        <th> ${users.id}</th>

                    </tr>
                    <tr>
                        <th>Nazwa użytkownika</th>
                        <th> ${users.userName}</th>

                    </tr>
                    <tr>
                        <th>Email</th>
                        <th> ${users.email}</th>

                    </tr>

                </table>
<%--                <c:forEach items="${users}" var="user">--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${user.id == 'id'}">--%>

<%--                            <tr>--%>
<%--                                <td>"${user.id}"></td>--%>
<%--                                <td>${user.email}</td>--%>
<%--                                <td>${user.userName}</td>--%>
<%--                            </tr>--%>
<%--                        </c:when>--%>
<%--                    </c:choose>--%>

<%--                </c:forEach>--%>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/footer.jsp" %>