<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n = rand.nextInt(4)+1;
System.out.println(n);

%>


<html>
    <head>
        <style>p.indent{ padding-left: 1.8em }</style>
        <meta name="layout" content="main" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        
        <g:each in="${questoes}" var="questao" status="i">

            
            
            <g:if test="${questao.id == n}">
               <p class="indent">
               <br/>${questao.enunciado}<br/><br/>
              <input type="radio" name="alternativa" value="alt1" checked>1.${questao.alt1}<br>
              <input type="radio" name="alternativa" value="alt2" checked>2.${questao.alt2}<br>
              <input type="radio" name="alternativa" value="alt3" checked>3.${questao.alt3}<br>
              <input type="radio" name="alternativa" value="alt4" checked>4.${questao.alt4}<br>
              <input type="radio" name="alternativa" value="alt5" checked>5.${questao.alt5}<br>
              
        
               
             </p>
            <br/>
            <br/>
            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"  role="button" aria-haspopup="true" aria-expanded="false">Resposta<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">${questao.resposta}</a></li>
                    </ul>    
            </li>
            <center> <li><g:link controller="questionario">Proxima</g:link></li></h3>  </center>
       
            <center><li><g:link controller="logout">Logout</g:link></li></center>
            
            </g:if>       
       </g:each>
    </body>
</html>
