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

<title>商品購入確認</title>

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

#imgbox{
	width:100px;
	height:100px;
	position:relative;
	background-color:#F3F781;
}
#imgbox:hover{
	background-color:#F5F6CE;
}

#imgbox a{
	position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    text-align: center;
    line-height: 100px;
    text-decoration: none;
    color:black;
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
            <div id="logo"><a href='<s:url action="GoMyPageAction"/>'>ECサイト</a></div>
            <ul>
            	<li><a href='<s:url action="GoHistoryPageAction"/>'>購入履歴</a></li>
                <li><a href='<s:url action="SignOutAction"/>'>ログアウト</a></li>
            </ul>
        </div>


        <div id="main">
        	<s:form action="BuyItemCompleteAction">
				<table>
					<tr>
        				<td>商品名</td>
        				<td><s:property value="session.buyItem_name"/></td>
        			</tr>
        			<tr>
        				<td>値段</td>
        				<td><s:property value="session.buyItem_price"/>円</td>
        			</tr>
        			<tr>
        				<td>購入個数</td>
        				<td><s:property value="session.stock"/>個</td>
        			</tr>
        			<tr>
        				<td>支払い方法</td>
        				<td><s:property value="session.pay"/></td>
        			</tr>
					<tr>
						<td><s:submit value="完了"/></td>
					</tr>

				</table>

        	</s:form>
        </div>

        <div id="footer">
            copyright(c) ECサイト2018
        </div>

</body>
</html>