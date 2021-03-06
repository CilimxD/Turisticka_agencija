<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="i" value="1" scope="page" />
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="123" user="dule" 
                   url="jdbc:mysql://localhost:3306/turisticka_agencija?autoReconnect=true&useSSL=false"
                   scope="application" var="db" />

<div><c:import url="pages/header.jsp" /></div>
<div class='container' style="margin-top: 20px;">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <sql:query dataSource="${db}" var="slider"> 
                SELECT drzava.drz_id,mesta.mes_id,specjalne_ponude.spec_opis,specjalne_ponude.spec_jpg,drzava.drz_naziv,mesta.mes_lokacija
                FROM specjalne_ponude
                INNER JOIN mesta ON specjalne_ponude.mes_id = mesta.mes_id
                INNER JOIN drzava ON mesta.drz_id = drzava.drz_id;
            </sql:query>
            <c:forEach items="${slider.rows}" var="items" >
                <c:set value="${items.drz_id}" var="drzavaId" />
                <c:set value="${items.mes_id}" var="mestaId" />
                <c:set value="${items.drz_naziv}" var="drzava" />
                <c:set value="${items.spec_opis}" var="specPonude" />
                <c:set value="${items.spec_jpg}" var="jpg" />

                <!--Sad pravimo slajder  -->

                <div class="item" id="${fn:toLowerCase(drzava)}">
                    <img src="img/${jpg}" alt="Slika ${drzava}">
                    <div class="carousel-caption">
                        <h1>${specPonude}</h1>
                        <p>Ako zelite da saznate vise o ovoj ponudi kliknite <a href="pages/arazmani.jsp?idDrzave=${drzavaId}&idMesta=${mestaId}">
                                <button class = "btn btn-primary">OVDE</button></a></p>        
                    </div>
                </div>
            </c:forEach>              

        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="container" style="margin-top: 30px;"> 
    <div class="col-sm-9">
        <!--leva strana-->
        <sql:query dataSource="${db}" var="result"> 
            SELECT * from drzava;
        </sql:query>
        <c:forEach items="${result.rows}" var="niz">
            <c:set value="${niz.drz_id}" var="drzId"/>
            <c:set value="${niz.drz_naziv}" var="drzNaz" />

            <div class="row">
                <h1 style="text-align: center;">${drzNaz} najbolje ponude</h1>
                <sql:query dataSource="${db}" var="mes"> 
                    SELECT * from mesta where drz_id = ${drzId}
                </sql:query>
                <c:forEach items="${mes.rows}" var="mesta1" varStatus="loop1">
                    <c:if test="${loop1.first}">
                        <c:set var="min" value="${mesta1.mes_id}" />
                    </c:if>     
                    <c:forEach items="${mes.rows}" var="mesta2" varStatus="loop2">  
                        <c:if test="${loop2.last}" >
                            <c:set value="${mesta2.mes_id}" var="max"/>
                        </c:if>
                    </c:forEach>      
                </c:forEach>

                <%
                    java.util.ArrayList list = new java.util.ArrayList();
                    Object maxID = pageContext.getAttribute("max");
                    Object minID = pageContext.getAttribute("min");

                    int maxidMesta = Integer.parseInt(String.valueOf(maxID));
                    int minidMesta = Integer.parseInt(String.valueOf(minID));
                    int x = (int) (java.lang.Math.random() * ((maxidMesta - minidMesta) + 1) + minidMesta);
                    list.add(x);
                    int y = 0;
                    int z = 0;
                    while (y == 0 || y == x) {
                        y = (int) (java.lang.Math.random() * ((maxidMesta - minidMesta) + 1) + minidMesta);
                        if (y != x) {
                            list.add(y);
                        }
                    }
                    while (z == 0 || z == x || z == y) {
                        z = (int) (java.lang.Math.random() * ((maxidMesta - minidMesta) + 1) + minidMesta);
                        if (z != y && z != x) {
                            list.add(z);
                        }
                    }

                    pageContext.setAttribute("broj", list);

                %>

                <c:forEach items="${broj}" var="randomBroj">
                    <sql:query dataSource="${db}" var="ponuda"> 
                        SELECT mesta.mes_id,mesta.mes_kraopis,mesta.mes_lokacija,mesta.mes_slika,drzava.drz_id FROM mesta
                        INNER JOIN drzava ON drzava.drz_id = mesta.drz_id
                        WHERE mesta.mes_id="${randomBroj}";
                    </sql:query>        
                    <c:forEach items="${ponuda.rows}" var="ponudeDole">
                        <c:set value="${ponudeDole.mes_kraopis}" var="kratakOpis" />
                        <c:set value="${ponudeDole.mes_lokacija}" var="imeMesta" />
                        <c:set value="${ponudeDole.mes_slika}" var="jpg" />
                        <c:set value="${ponudeDole.drz_id}" var="idDrzava" />
                        <c:set value="${ponudeDole.mes_id}" var="idMesta" />
                        <div class="col-sm-4 col-xs-12" >
                            <div class= "ins" >
                                <img src = "img/${jpg}.jpg" width = "100%" height="200px" class="slika">
                                <div class="text">
                                    <h4>${imeMesta}</h4>
                                    <p>${kratakOpis}</p>
                                    <p><a href="pages/arazmani.jsp?idDrzave=${idDrzava}&idMesta=${idMesta}" 
                                          class="btn btn-primary" role="button">Arazmani za ${imeMesta}</a></p>
                                </div>
                            </div>
                        </div>                           
                    </c:forEach> 
                </c:forEach>
            </div>
        </c:forEach>
        <!--kraj leva strana-->
    </div>   
    <div class="col-sm-3">
        <!-- desna strana -->
        <div class="meni_desni">
            <p class="meni_desni_text">Ponude:</p>
            <sql:query dataSource="${db}" var="meniDesno"> 
                SELECT drzava.drz_id,drzava.drz_naziv FROM drzava
            </sql:query>
            <c:forEach items="${meniDesno.rows}" var="drzave">
                <c:set value="${drzave.drz_id}" var="drzavaId"/>
                <c:set value="${drzave.drz_naziv}" var="drzava"/>
                <div class="row" style="padding-top: 8px;">
                    <div class="col-xs-8" style="padding-right: 0px;">
                        <a href="pages/mesta.jsp?drzavaID=${drzavaId}" type="button" class="btn btn-warning btn-lg btn-block buttonLeft">${drzava}</a>
                    </div>
                    <div class="col-xs-4" style="padding-left: 0px;">
                        <a type="button" class="btn btn-warning btn-lg btn-block buttonRight" data-toggle="collapse"
                           href="#collapse${i}"> <span class="caret"></span></a>       
                    </div>
                </div>
                <div id="collapse${i}" class="collapse">
                    <ul class="list-group">
                        <sql:query dataSource="${db}" var="meniDe"> 
                            SELECT mesta.mes_id,mesta.mes_lokacija,drzava.drz_id,drzava.drz_naziv FROM mesta
                            INNER JOIN drzava ON mesta.drz_id=drzava.drz_id WHERE mesta.drz_id=${drzavaId}
                        </sql:query>
                        <c:forEach items="${meniDe.rows}" var="mesta">
                            <c:set value="${mesta.mes_id}" var="mestaId" />
                            <c:set value="${mesta.mes_lokacija}" var="mesta" />
                            <a class="list-group-item list-group-item-info" href="pages/arazmani.jsp?idDrzave=${drzavaId}&idMesta=${mestaId}">${mesta}</a>
                        </c:forEach>    
                    </ul>              
                </div>
                <c:set var="i" value="${i + 1}" scope="page"/>    
            </c:forEach>
            <!--kraj desne strane-->
        </div>
    </div>
</div>
<div class="raw foot"><c:import url="pages/footer.jsp"/></div>


