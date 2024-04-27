<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Cadastro de Usuário</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style/create-style.css">
</head>
<body>

<form action="/create-user" id="user-form" method="post">
    <h2>Cadastro de Usuário</h2>
    <label for="user-name">Nome</label>
    <input id="user-name" name="user-name" style="text-align: center;" type="text" value="${param.user-name}">

    <label for="email">Email</label>
    <input id="email" name="email" style="text-align: center;" type="text" value="${param.email}">

    <label for="password">Senha</label>
    <input id="password" name="password" style="text-align: center;" type="text" value="${param.password}">

    <label for="type" id="user-type-label" style="color: #fff;">Tipo de Usuario</label>
    <div class="select-wrapper">
        <select id="type" name="type" onchange="changeFormStyle()" value="${param.type}">
            <option value="ADM"><i class="fas fa-user-shield"></i> Administrador</option>
            <option value="PROFESSOR"><i class="fas fa-chalkboard-teacher"></i> Professor</option>
            <option value="STUDENT"><i class="fas fa-user-graduate"></i> Aluno</option>
        </select>
        <div class="select-arrow"><i class="fas fa-chevron-down"></i></div>
    </div>

    <input type="submit" value="Cadastrar">
</form>
<script src="scripts/validade-create.js"></script>
</body>
</html>