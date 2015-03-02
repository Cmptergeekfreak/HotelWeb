<%-- 
Document   : Index
Created on : Feb 12, 2015, 7:48:13 PM
Author     : Owner
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>


<!DOCTYPE html>
<head>
    <title>Hotel Lab</title>
    <link href="CSS files/example.css" rel="stylesheet" type="text/css"/>
    <link href="CSS files/hotelWeb.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
    <div class="container-fluid">
            <div class="row">
                <div class="col-md-1"></div>
               <h1>Hotel Database</h1>
                    Hotel Database
                    <hr>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-4 h2 text-center" id="title">
                    Edit/Delete Records
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-3">
                    <table class="table table-bordered table-hover bg-info table-striped">
                        <tr>
                            <th>Hotel ID</th>
                            <th>Hotel Name</th>
                            <th>City</th>
                        </tr>
                        <tbody class="" onmouseover="" style="cursor: pointer;">
                            <c:forEach var="hotel" items="${hotels}" >
                            <form id="${hotel.hotelId}" class="idForm" method="POST" action="hotel">
                                <input type="hidden" name="hotelId" id="hotelId" value="${hotel.hotelId}">
                            </form>
                            <tr onclick="clicked(${hotel.hotelId});">
                                <td>${hotel.hotelId}</td>
                                <td>${hotel.hotelName}</td>
                                <td>${hotel.city}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-md-8">&nbsp;</div>
                        <div class="col-md-1">
                            <input class="btn btn-info text-right" type="submit" name="newEntry" id="newEntry" value="New Entry" onclick="newEntry();">
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-6" id="editFormDiv">
                    <form id="editForm" name="editForm" action="hotel" method="POST">
                        <div class="form-group row ">
                            <div class="col-md-3 text-right">
                                <label for="name">Hotel Name</label>
                            </div>
                            <div class="col-md-4">
                                <input type="hidden" name="hotelId" id="hiddenId" value="${hotelId}">
                                <input class="form-control" type="text" name="name" id="name" value="${name}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="address">Hotel Address</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="address" id="address" value="${address}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="city">City</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="city" id="city" value="${city}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="state">State</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="state" id="state" value="${state}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="postalCode">Postal Code</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="postalCode" id="postalCode" value="${postalCode}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="notes">Notes</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="notes" id="notes" value="${notes}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-2">
                                <input class="btn btn-info" type="submit" name="submit" id="save" value="Save">
                            </div>
                            <div class="col-md-1">
                                <input class="btn btn-info" type="submit" name="submit" id="delete" value="Delete" onmouseover="delete();">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6" id="newFormDiv">
                    <form id="newForm" name="newForm" action="hotel" method="POST">
                        <div class="form-group row ">
                            <div class="col-md-3 text-right">
                                <label for="name">Hotel Name</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="name" id="name" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="address">Hotel Address</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="address" id="address" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="city">City</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="city" id="city" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="state">State</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="state" id="state" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="postalCode">Postal Code</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="postalCode" id="postalCode" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label for="notes">Notes</label>
                            </div>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="notes" id="notes">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3"></div>
                            <div class="col-md-1">
                                <input class="btn btn-info" type="submit" name="submit" id="addHotel" value="Add Hotel">
                            </div>
                            <div class="col-md-1">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                <button type="reset"  value="CLEAR" class="btn btn-primary" id="clearBtn">Clear Form</button> 
            </div>



            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

            <script src="javascripts/Web.js" type="text/javascript"></script>

            </body>
            
            
            <script>
                                    window.onload = function () {
                                        $('#editFormDiv').attr("style", "display: ${tableVisible}");
                                        $('#title').attr("style", "display: ${tableVisible}");
                                        $('#newFormDiv').hide();
                                    };
                                    function clicked(id) {
                                        $('#' + id).submit();
                                    }
                                    function newEntry() {
                                        $('#editFormDiv').hide();
                                        $('#newFormDiv').show();
                                        $('#title').show().html('Add new record <hr>');
                                    }
    </script>
            
            </html>
