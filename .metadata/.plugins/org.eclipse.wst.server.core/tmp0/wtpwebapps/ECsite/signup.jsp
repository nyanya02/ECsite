<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">

<title>新規登録</title>

<!-- <link rel="stylesheet" href="/css/style.css"> -->

<style>

#header{
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:60px;
    background-color: black;
}

#header #logo{
    float: left;
    width:200px;
    padding-left: 10px;
    color: white;
    font-size: 25px;
    line-height: 60px;
}

#header ul{
    float: right;
    line-height: 30px;
}

#header ul li{
    float: left;
    list-style: none;
    padding-right: 20px;
    color: white;
    font-size: 18px;
}

#logo a{
    text-decoration: none;
    color: white;
}
#logo a:hover{
    color: #E6E6E6;
}

#header li a{
    text-decoration: none;
    color: white;
}
#header li a:hover{
    color: #E6E6E6;
}

#main{
    float: clear;
    position: absolute;
    top: 30px;
    margin-top:50px;
    width: 100%;
}

#footer{
    clear:both;
    width: 100%;
    height: 60px;
    position: absolute;
    bottom: 0;
    left: 0;
    color: white;
    background-color: black;
    text-align: center;
    line-height: 60px;
}


</style>

</head>
<body>

		<div id="header">
            <div id="logo"><a href='<s:url action="GoHomeAction"/>'>ECサイト</a></div>
            <ul>
                <li><a href='<s:url action="GoSignInAction"/>'>ログイン画面へ</a></li>
                <li><a href='<s:url action="GoSignUpAction"/>'>新規登録画面へ</a></li>
            </ul>
        </div>

        <div id="main">
        	<table>
        		<s:form action="CreateUserAction">

					<tr>
						<td><label>ログインID</label></td>
						<td><input type="text" name="loginUserId" value=""></td>
					</tr>
					<tr>
						<td><label>パスワード</label></td>
						<td><input type="text" name="loginPassword" value=""></td>
					</tr>
					<tr>
						<td><label>ユーザー名</label></td>
						<td><input type="text" name="userName" value=""></td>
					</tr>

            		<s:submit value="新規登録"/>

            	</s:form>

        	</table>

        </div>

        <div id="footer">
            copyright(c) ECサイト2018
        </div>

</body>
</html>