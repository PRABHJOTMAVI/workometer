<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">                
        <title>Update Employee</title>
        <style>
            th, td {
                padding: 4px;
            }
        </style> 
    </head>
    <body>
        <jsp:include page="navAdmin.jsp" />

        <header class="jumbotron">
            <div class="container">
                <h1>UPDATE EMPLOYEE</h1>
            </div>
        </header>
        <div class="container">        

            <h3>${message}</h3>
        <form:form action="${contextPath}/PM/admin/employeeUpdate" method="POST" modelAttribute="employee">

            <table>
                <tr>
                    <td>ID</td>
                    <td><form:input path="employeeId" readonly="${isReadble}" ></form:input></td>
                    <td><form:errors path="employeeId"/></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><form:input path="employeeName"></form:input></td>
                    <td><form:errors path="employeeName"/></td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td>

                        <form:select path="role">
                            <form:option value="A" >ADMIN</form:option>
                            <form:option value="L" >LEADER</form:option>
                            <form:option value="M" >MEMBER</form:option>               
                        </form:select>

                    </td>
                    <td><form:errors path="role"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><form:input path="ePassword"></form:input>
                        </td>
                        <td><form:errors path="ePassword"/>
                    </td>
                </tr>
                <tr>
                    <td>Enable</td>
                    <td>
                        <form:select path="enabled">
                            <form:option value="Y" >YES</form:option>
                            <form:option value="N" >NO</form:option>
                        </form:select>
                    </td>
                    <td><form:errors path="enabled"/></td>
                </tr>
            </table>

            <input type="submit" class="btn btn-dark"  class="btn btn-dark"  value="Update">
        </form:form>
            </br>
            <form id="logout" action="<c:url value="/logout" />" method="post">
                <input type="hidden"                        
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
                <input type="submit" class="btn btn-dark"  class="btn btn-dark"  value="Log out" />
            </form>    
        </div>

        <jsp:include page="footer.jsp" />             
    </body>
</html>