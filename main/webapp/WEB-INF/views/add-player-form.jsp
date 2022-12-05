<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: PKKostov18
  Date: 11/30/2022
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Add player</title>

    <style>
        .error {
            color: red;
            font-style: italic;
        }
    </style>

</head>

<body>

<h2>Player Form</h2>
<hr>

<form:form action="processPlayerForm" modelAttribute="athlete">
    <br><br>
    First Name:<form:input path="firstName"/>
    <br><br>
    Last Name *:<form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>

    Country: <form:select path="country">

    <form:option value="AUT" label="Austria"/>
    <form:option value="FRA" label="France"/>
    <form:option value="SRB" label="Serbia"/>
    <form:option value="SUI" label="Switzerland"/>
    <form:option value="USA" label="United States of America"/>
</form:select>

    Handedness:
    Left-Handed <form:radiobutton path="handedness" value="Left-Handed"/>
    Right-Handed <form:radiobutton path="handedness" value="Right-Handed"/>
    Ambidextrous <form:radiobutton path="handedness" value="Ambidextrous"/>


    Grand Slams Titles Won:
    Australian Open <form:checkbox path="grandSlams" value="Australian Open"/>
    French Open <form:checkbox path="grandSlams" value="French Open"/>
    Wimbledon <form:checkbox path="grandSlams" value="Wimbledon"/>
    US Open <form:checkbox path="grandSlams" value="US Open"/>

    Current Rank *: <form:input path="rank"/>
    <form:errors path="rank" cssClass="error"/>

    Last Won (dd-mm-yyyy):<form:input path="lastWon"/>
    <form:errors path="lastWon" cssClass="error"/>

    Prize Money (USD): <form:input path="prizeMoney" placeholder="$#,###,###"/>
    <form:errors path="prizrMoney" cssClass="error"/>

    <br><br>
    <input type="submit" value="Add Player"/>

</form:form>



</body>
</html>
