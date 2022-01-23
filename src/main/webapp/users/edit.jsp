<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/users/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                <input type="hidden" name="id" value="${users.id}"/>
                <div class="form-group">
                    <label for="userName">Nazwa</label>
                    <input value="${users.getUserName()}" name="userName" type="text" class="form-control" id="userName" placeholder="Nazwa użytkownika">

                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input value="${users.getEmail()}" name="email" type="email" class="form-control" id="email" placeholder="Email użytkownika">

                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input name="password" type="password" class="form-control" id="password" placeholder="Hasło użytkownika">
                </div>

                <button type="submit" class="btn btn-primary">Edytuj</button>
            </form>

        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>