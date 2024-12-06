<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="style.css">
    
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;">Farmer Registration</h3>
    <div class="form-container">
        <form method="post" action="insertfarmer">
            <table>
               <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="fgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="fgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="fgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" required/></td>
                </tr>
                <tr>
                    <td><label for="fcategory">Select Category</label></td>
                    <td>
                        <select id="fcategory" name="fcategory" required>
                            <option value="">---Select---</option>
                            <option value="ORGANIC">Organic</option>
                            <option value="CROPS">Crops</option>
                            <option value="LIVESTOCK">LiveStock</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="fincome">Enter Income</label></td>
                    <td><input type="number" id="fincome" name="fincome" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation" required/></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                 <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact</label></td>
                    <td><input type="number" id="fcontact" name="fcontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>