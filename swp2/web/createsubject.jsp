<%-- 
    Document   : createsubject
    Created on : 30-09-2021, 19:31:10
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Create Subject</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <c:if test="${not empty sessionScope.USER}">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
                <div class="container px-4 px-lg-5">
                    <a class="navbar-brand" href="" style="font-style: italic;">Welcome,${sessionScope.USER}</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        Menu
                        <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ms-auto py-4 py-lg-0">
                            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="admin.jsp">Home</a></li>          
                            <li class="nav-item dropdown">
                                <a class="x px-lg-3 py-3 py-lg-4 dropbtn" href="">View List</a>
                                <ul class="navbar-nav ms-auto py-4 py-lg-0 dropdown-content">
                                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 y" href="studentlist.jsp">View list Student</a></li>
                                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 y" href="mentorlist.jsp">View list Mentor</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="x px-lg-3 py-3 py-lg-4 dropbtn" href="">Create</a>
                                <ul class="navbar-nav ms-auto py-4 py-lg-0 dropdown-content">
                                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 y" href="creatementor.jsp">Create Mentor</a></li>
                                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 y" href="createtag.jsp">Create Tag</a></li>
                                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 y" href="createsubject.jsp">Create Subject</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="login.jsp">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page Header-->
            <header class="masthead" style="background-image: url('https://image.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148907303.jpg')">
                <div class="container position-relative px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <div class="page-heading">
                                <h1 style="font-style: italic;font-size: 3.5rem">Create new Subject</h1>

                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Main Content-->
            <main class="mb-4" style="background-color: #d9e4f5;
                  background-image: linear-gradient(315deg, #d9e4f5 0%, #f5e3e6 74%);height: 50.8vh">
                <div class="container px-4 px-lg-5">
                    <form action="MainController" method="POST">
                        <c:set var="errors" value="${requestScope.CREATEERROR}"/>
                        <div style="border: solid;margin-top: 4vh;border-radius: 10px">
                            <div class="row gx-4 gx-lg-5 justify-content-center">
                                <div class="col-md-10 col-lg-8 col-xl-7">

                                    <div class="my-5">
                                        <!-- * * * * * * * * * * * * * * *-->
                                        <!-- * * SB Forms Contact Form * *-->
                                        <!-- * * * * * * * * * * * * * * *-->
                                        <!-- This form is pre-integrated with SB Forms.-->
                                        <!-- To make this form functional, sign up at-->
                                        <!-- https://startbootstrap.com/solution/contact-forms-->
                                        <!-- to get an API token!-->
                                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                                            <div class="form-floating">
                                                <input class="form-control" style="background-color: #d9e4f5;
                                                       background-image: linear-gradient(315deg, #d9e4f5 0%, #f5e3e6 74%);" name="txtSubjectID"  type="text" placeholder="SubjectID" >
                                                <label for="SubjecID" style="color: darkblue">Subject ID</label>
                                                <td>
                                                    <c:if test="${not empty errors.idLengthError}">
                                                        <font color="red">${errors.idLengthError}</font><br/>
                                                    </c:if>
                                                </td> 
                                            </div>
                                            <div class="form-floating">
                                                <input class="form-control" style="background-color: #d9e4f5;
                                                       background-image: linear-gradient(315deg, #d9e4f5 0%, #f5e3e6 74%);" name="txtSubjectName" type="text" placeholder="SubjectName"  />
                                                <label for="SubjectName" style="color: darkblue">Subject Name</label>    
                                                <td>
                                                    <c:if test="${not empty errors.fullnameLengthError}">
                                                        <font color="red">${errors.fullnameLengthError}</font><br/>
                                                    </c:if>
                                                </td> 
                                            </div>

                                            <br />
                                            <br />
                                            <br />
                                            <!-- Submit success message-->
                                            <!---->
                                            <!-- This is what your users will see when the form-->
                                            <!-- has successfully submitted-->

                                            <!-- Submit error message-->
                                            <!---->
                                            <!-- This is what your users will see when there is-->
                                            <!-- an error submitting the form-->

                                            <!-- Submit Button-->
                                            <div style="text-align: center">
                                                <button  class="btn btn-primary text-uppercase"  type="submit" name="btnAction" value="Create Subject" style="background-color: black;width: 500px;border-radius: 25px">Create</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </main>
            <!-- Footer-->
            <footer class="border-top" style="background-color: #d9e4f5;
                    background-image: linear-gradient(315deg, #d9e4f5 0%, #f5e3e6 74%);">
                <div class="container px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <ul class="list-inline text-center" style="font-size: large">
                                <li class="list-inline-item">
                                    <a href="https://twitter.com/oNguynDuy4">
                                        <span class="fa-stack fa-lg">
                                            <i class="fas fa-circle fa-stack-2x"></i>
                                            <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="https://www.facebook.com/bui.tung.195/">
                                        <span class="fa-stack fa-lg">
                                            <i class="fas fa-circle fa-stack-2x"></i>
                                            <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="https://github.com/tungbeo1964">
                                        <span class="fa-stack fa-lg">
                                            <i class="fas fa-circle fa-stack-2x"></i>
                                            <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                            <div class="small text-center text-muted fst-italic">Contact detail</div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="js/scripts.js"></script>
            <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
            <!-- * *                               SB Forms JS                               * *-->
            <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
            <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
            <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        </c:if>
        <c:if test="${empty sessionScope.USER}">
            <h1>
                <font color="red">
                Session is timeout!
                </font>
            </h1>
            <a href="login.jsp">Click here to back Login Page!!!</a>
        </c:if>
    </body>
</html>
