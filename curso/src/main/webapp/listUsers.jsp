<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style/listUsers.css">
    <link rel="stylesheet" href="style/menu.css">
</head>
<body>
<header class="header">
    <div class="logo-container">
        <img src="Images/logo.png" alt="Logo" class="logo">
    </div>
     <div class="profile-tab" onclick="toggleProfile()">
            <img src="Images/perfil.png" alt="Perfil" class="profile-icon">
     </div>

</header>

<div>
    <h1>Users</h1>
    <table border="1">
        <tr>
            <th>Email</th>
            <th>Name</th>
            <th>Type</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.userEmail}</td>
                <td>${user.userName}</td>
                <td>${user.userType}</td>
                <td>
                    <form action="/delete" method="post">
                        <input type="hidden" id="userEmail" name="userEmail" value="${user.userEmail}">
                        <button class="action-button" type="submit">Delete</button>
                    </form>
                    <span> | </span>
                    <a class="action-link" href="createUser.jsp?email=${user.userEmail}&user-name=${user.userName}&type=${user.userType}&password=${user.userPass}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<footer class="footer">
    <!-- Conteúdo do rodapé, se houver -->
</footer>

<div class="profile-sidebar" id="profileSidebar">
    <div class="profile-header">
        <h2>Meu Perfil</h2>
        <button class="close-btn" onclick="toggleProfile()">Fechar</button>
    </div>
    <div class="profile-body">
        <c:if test="${User != null}">
            <p>Nome: ${User.userName}</p>
            <p>Email: ${User.userEmail}</p>
        </c:if>
    </div>
</div>

<script>
    function toggleProfile() {
        var sidebar = document.getElementById("profileSidebar");
        if (sidebar.style.right === "-300px") {
            sidebar.style.right = "0";
        } else {
            sidebar.style.right = "-300px";
        }
    }
</script>
</body>
</html>
