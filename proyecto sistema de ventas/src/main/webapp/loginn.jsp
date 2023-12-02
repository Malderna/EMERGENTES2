
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content>
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.91.2">
        <title>Plantilla de Signin · Bootstrap 5 en Español v5.1</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
            html,body{
                height:100%
            }
            body{
                display:flex;
                align-items:center;
                padding-top:40px;
                padding-bottom:40px;
                background-color:#f5f5f5
            }
            .form-signin{
                width:100%;
                max-width:330px;
                padding:15px;
                margin:auto
            }
            .form-signin .checkbox{
                font-weight:400
            }
            .form-signin .form-floating:focus-within{
                z-index:2
            }
            .form-signin input[type=email]{
                margin-bottom:-1px;
                border-bottom-right-radius:0;
                border-bottom-left-radius:0
            }
            .form-signin input[type=password]{
                margin-bottom:10px;
                border-top-left-radius:0;
                border-top-right-radius:0
            }
        </style>

        <link href="signin.css" rel="stylesheet">
    </head>
    <body class="text-center">
        <main class="form-signin">
            <form action="LoginnControlador" method="post">
                <img class="mb-4" src="img/escudo.png" alt width="72" height="57">
                <h1 class="h3 mb-3 fw-normal">Login</h1>
                <div class="form-floating">
                    <input type="email" name="correo" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Correo electrónico</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Contraseña">
                    <label for="floatingPassword">Password</label>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Recuérdame
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2017–2023</p>
            </form>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>

