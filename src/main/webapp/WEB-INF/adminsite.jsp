<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pagetemplate>
    <jsp:attribute name="header">
         Produkter
    </jsp:attribute>

    <jsp:attribute name="footer">
        Produkter
    </jsp:attribute>

    <jsp:body>


        <h3>Produkter</h3>

<%--        <c:forEach var="item" items="${sessionScope.productsList}">--%>
<%--            <br>Type: ${item.name} Pris: ${item.price} Katagori: ${item.idcatagory}--%>
<%--        </c:forEach>--%>


        <h3>Her skal være en liste over alle ordrer(nu: kun 1 bruger) + done/undone kanpper (se video 3)</h3>


        <h3>Bestilling:</h3>

        //I STEDET FOR BR
        <p style="margin-top: 20px"></p>
        <p class="mt-4"></p>


        <br><a href="index.jsp">Tilbage til forside</a>


        <table class="table table-striped">
            <tr>
                <th>Katagori:</th>
                <td>
                    <c:forEach var="item" items="${sessionScope.productsList}">
                    <br> ID: ${item.id_products}
                    </c:forEach>


                <th>Type:</th>
                <td>
                    <c:forEach var="item" items="${sessionScope.productsList}">
                        <br>Navn: ${item.name}
                    </c:forEach>
                </td>

                <th>Pris</th>
                <td>
                    <c:forEach var="item" items="${sessionScope.productsList}">
                        <br>Pris: ${item.price}
                    </c:forEach>
                </td>
            </tr>
        </table>
        </table>
    </jsp:body>

</t:pagetemplate>