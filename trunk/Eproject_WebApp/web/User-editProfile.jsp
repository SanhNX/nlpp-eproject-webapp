<%-- 
    Document   : index
    Created on : Jun 6, 2011, 11:02:14 PM
    Author     : XuanSanh_IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />
        <script type="text/javascript" src="jsDatePick.min.1.3.js"></script>
        <script type="text/javascript">
            window.onload = function(){
                new JsDatePick({
                    useMode:2,
                    target:"inputField",
                    isStripped:false,
                    selectedDate:{
                        year:2009,
                        month:4,
                        day:16
                    },
                    yearsRange: new Array(1971,2100),
                    limitToToday:true
                });
            };
        </script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/html5.js"></script>
        <script type="text/javascript" src="js/date.js"></script>
        <script type="text/javascript" src="js/jquery-1.6.1.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#contacts-form1").validate({
                    rules:{
                        txtPass:{
                            required:true,
                            rangelength:[6,25]
                        },
                        txtRePass:{
                            equalTo:"#txtPass"
                        },
                        txtOldPass:{
                            required:true
                        }
                    }   //end rules
                });  //end validate
                $("#contacts-form").validate({
                    rules:{
                        txtPass:{
                            required:true,
                            rangelength:[6,25]
                        },
                        txtRePass:{
                            equalTo:"#txtPass"
                        },
                        txtOldPass:{
                            required:true
                        },
                        txtBirthday:{
                            required:true
                        },
                        txtFullname:{
                            required:true
                        },
                        txtAddress:{
                            required:true
                        },
                        txtPhone:{
                            required:true,
                            phoneVN:true
                        }
                    }   //end rules
                });  //end validate
            }); //end function
        </script>
        <title>National Level Paper Presentation</title>
    </head>
    <body id="page1">
        <div class="wrap">
            <!-- header -->
            <header>
                <div class="container">
                    <img src="images/logo_96.png" width="270" height="270"/>
                    <nav>
                        <ul>
                            <li class="current"><a href="index.jsp" class="m1">Home Page</a></li>
                            <li><a href="User-register.jsp" class="m3">Register</a></li>
                            <li><a href="about-us.jsp" class="m2">Feedback Us</a></li>
                            <li><a href="contact-us.jsp" class="m4">FAQ</a></li>
                            <li class="last"><a href="admin.jsp" class="m5">Administrator</a></li>
                        </ul>
                    </nav>
                    <form action="" id="search-form">
                        <fieldset>
                            <div class="rowElem">
                                <input type="text" value="Search Title Event" onFocus="if(this.value=='Search Title Event'){this.value=''}" onBlur="if(this.value==''){this.value='Search Title Event'}" >
                                <a href="#" onClick="document.getElementById('search-form').submit()">Search</a></div>
                        </fieldset>
                    </form>
                </div>
            </header>
            <div class="container">
                <!-- aside -->
                <aside>
                    <h3>Categories</h3>
                    <ul class="categories">
                        <li><span><a href="index.jsp">Home Page</a></span></li>
                        <li><span><a href="#">Event Information</a></span></li>
                        <li><span><a href="#">Enroll Event</a></span></li>
                        <li><span><a href="#">Presenter Information</a></span></li>
                        <li><span><a href="#">About US</a></span></li>
                    </ul>
                    <%
                        HttpSession s = request.getSession();
                        String ses = (String) s.getAttribute("user");
                        if (ses != null) {
                    %>
                    <form action="" id="newsletter-form1">
                        <fieldset>
                            <div class="rowElem">
                                <h2>Login Site</h2>
                                <a style="color:#FFF">Username</a>
                                <input type="text" value="">
                                <a style="color:#FFF">Password</a>
                                <input type="password" value="">
                                <div class="clear"><a href="register.jsp" class="fleft">Register User</a><a href="#" class="fright">Submit</a></div>
                            </div>
                        </fieldset>
                    </form>
                    <%
                        }else{
                    %>
                        <form action="" method="POST" id="newsletter-form2">
                            <fieldset>
                                <div class="rowElem">
                                    <h2>You Are Sign In</h2>
                                    <a style="color: white; font-size: 20px; ">Welcome </a><a href="#" style="font-weight:lighter;font-style: italic;color: brown;font-size: 15px; ">sanh232003</a>
                                    <br/><br/>
                                    <div><a href="#" class="fleft">My Profile</a><a href="#" class="fright">Logout</a></div>
                                </div>
                            </fieldset>
                        </form>
                    <%
                        }
                    %>
                    <h2>Fresh <span>News</span></h2>
                    <ul class="news">
                        <li><strong>June 30, 2010</strong>
                            <h4><a href="#">Sed ut perspiciatis unde</a></h4>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque. </li>
                        <li><strong>June 14, 2010</strong>
                            <h4><a href="#">Neque porro quisquam est</a></h4>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit consequuntur magni. </li>

                        <br/>

                    </ul>
                </aside>
                <!-- content -->
                <section id="content">
                    <div id="banner">
                        <h2><span>Traning Programmer<span>Since 1992</span></span></h2>
                    </div>
                    <div class="inside1">
                        <h2><img src="images/icon_cube.png" width="64" height="95">Update Profile <span>Form</span></h2>
                        <form id="contacts-form" action="" method="POST">
                            <table cellpadding="110" cellspacing="15">
                                <tr class="field">
                                    <td>Birthday &nbsp;</td>
                                    <td><input type="text" value="" name="txtBirthday" id="inputField" size="30" readonly="true"/></td>
                                </tr>
                                <tr class="field">
                                    <td>Full Name &nbsp;</td>
                                    <td><input type="text" name="txtFullname" value="" size="30"/></td>
                                </tr>
                                <tr class="field">
                                    <td>Gender &nbsp;</td>
                                    <td>
                                        <input type="radio" name="rbtType" value="Male" checked="true"> Male
                                        <input type="radio" name="rbtType" value="FeMale"> FeMale
                                    </td>
                                </tr>
                                <tr class="field">
                                    <td>Address &nbsp;</td>
                                    <td><input type="text" name="txtAddress" value="" size="30"/></td>
                                </tr>
                                <tr class="field">
                                    <td>Phone Number &nbsp;</td>
                                    <td><input type="text" name="txtPhone" value="" size="30"/></td>
                                </tr>
                                <tr class="field">
                                    <td></td>
                                    <td><input align="left" type="reset" value="Reset Form"> &nbsp;|&nbsp; <input align="right" type="submit" value="Update Now"></td>
                                </tr>
                            </table>
                        </form>
                        <h2><img src="images/icon_cube.png" width="64" height="95">Change Password <span>Form</span></h2>
                        <form id="contacts-form1" action="" method="POST">
                            <table>
                                <tr class="field">
                                    <td>New Password &nbsp;</td>
                                    <td><input type="password" name="txtPass" value="" size="30"  id="txtPass"/></td>
                                </tr>
                                <tr class="field">
                                    <td>Re-Password &nbsp;</td>
                                    <td><input type="password" name="txtRePass" value="" size="30"/></td>
                                </tr>
                                <tr class="field">
                                    <td>Old Password &nbsp;</td>
                                    <td><input type="password" name="txtOldPass" value="" size="30"/></td>
                                </tr>
                                <tr class="field">
                                    <td></td>
                                    <td><input align="left" type="reset" value="Reset Form"> &nbsp;|&nbsp; <input align="right" type="submit" value="Change Pass"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
    <footer>
        <div class="container">
            <div class="inside">
                <div class="wrapper">
                    <div class="fleft">24/7 User Support <span>(+84).938.086.255</span></div>
                    <div class="aligncenter"><a href="#" class="new_window">NLPP University</a> designed by Group 2 - FAT3<br>
                        <a href="#" class="new_window">CSS</a> provided by Team Leader</div>
                </div>
            </div>
        </div>
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
