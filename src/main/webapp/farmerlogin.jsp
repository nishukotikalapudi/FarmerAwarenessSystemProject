<html>
<head>
    <title>Farmer Login</title>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
 
    <h3 style="text-align: center;">Farmer Login</h3>
    <div class="form-container">
        <form method="post" action="checkfarmerlogin">
            <table>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                 <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>