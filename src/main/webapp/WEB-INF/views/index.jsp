<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Condiments List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    <style>

        .vertical-center {
            min-height: 100%; /* Fallback for browsers do NOT support vh unit */
            min-height: 100vh; /* These two lines are counted as one :-) */
            display: flex;
            align-items: center;
        }

        #Form {
            background-color: gray;
        }
    </style>
</head>
<body>

<div class="card">
    <div class="card-title">
        <p class="text-center">Simple Calculator</p>
    </div>
    <div class="card-body">
        <div class="container text-center">
            <div class="row mx-auto">
                <form id="Form" action="/index" method="POST">
                    <div class="col col-md-3 mx-auto">
                        <input id="left-operand" type="text" class="form-control" name="leftOperand">
                    </div>
                    <div class="col col-md-3 mx-auto">
                        <select class="form-select" aria-label="Default select example"
                                onchange="document.getElementById('Form').submit()" name="operator">
                            <option selected>Open this select menu</option>
                            <option value="+">+</option>
                            <option value="-">-</option>
                            <option value="*">x</option>
                            <option value="/">/</option>
                        </select>
                    </div>
                    <div class="col col-md-3 mx-auto">
                        <input id="right-operand" type="text" class="form-control" name="rightOperand">
                    </div>
                </form>
            </div>
            <div class="row">

                <div class="col col-md-12">
                    ${result}
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
