<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>First Title</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
        <link href="/pub/css/global.css" rel="stylesheet" />

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
      <div class="container-fluid">
         <a class="navbar-brand" href="/index">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/index">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/signup">Signup</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login">login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/bootstrap">BootStrap Ex</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/fileupload"> File Upload</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Employee
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/employee/search">Search</a></li>
                <li><a class="dropdown-item" href="/employee/create">Create</a></li>
              </ul>
            </li>
            <sec:authorize access="isAuthenticated()">
              <li class="nav-item">
                <a class="nav-link" href="/login/logout">Logout</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href=""><sec:authentication property="principal.username" /></a>
              </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
              <li class="nav-item">
                <a class="nav-link" href="/login/loginPage">Login</a>
              </li>
            </sec:authorize>
            <sec:authorize access="hasAnyAuthority('ADMIN')">
              <li class="nav-item">
                <a class="nav-link" href="#">Admin</a>
              </li>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </nav>