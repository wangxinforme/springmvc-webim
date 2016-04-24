<%@ page language="java" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="${ctx }">

<title>WebIM Chat</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="author" content="hoojo">
<meta http-equiv="email" content="hoojo_@126.com">
<meta http-equiv="blog" content="http://blog.csdn.net/IBM_hoojo">
<meta http-equiv="blog" content="http://hoojo.cnblogs.com">
<link rel="stylesheet" type="text/css" href="${ctx }/css/chat-2.0.css" />
<script type="text/javascript">
  window.contextPath = "${ctx}";
  //   window["serverDomin"] = "ppt03-20141024i";
  window["serverDomin"] = "180.168.1.59";
</script>
<%-- <script type="text/javascript" src="${ctx }/jslib/jquery-1.7.min.js"></script> --%>
<script type="text/javascript" src="${ctx }/jslib/jsjac.js"></script>
<!-- script type="text/javascript" src="${ctx }/debugger/Debugger.js"></script-->
<script type="text/javascript" src="${ctx }/jslib/send.message.editor-1.0.js"></script>
<script type="text/javascript" src="${ctx }/jslib/jquery.easydrag.js"></script>
<script type="text/javascript" src="${ctx }/jslib/remote.jsjac.chat-2.0.js"></script>
<script type="text/javascript" src="${ctx }/jslib/local.chat-2.0.js"></script>
<script type="text/javascript">
  $(function() {

    $("#login").click(function() {
      var userName = $(":text[name='userName']").val();
      var receiver = $("*[name='to']").val();
      // 建立一个聊天窗口应用，并设置发送者和消息接收者
      $.WebIM({
        sender: userName,
        receiver: receiver
      });
      // 登陆到openfire服务器
      remote.jsjac.chat.login(document.userForm);
      $("label").text(userName);
      $("form").hide();
      $("#newConn").show();
    });

    $("#logout").click(function() {
      // 退出openfire登陆，断开链接
      remote.jsjac.chat.logout();
      $("form").show();
      $("#newConn").hide();
      $("#chat").hide(800);
    });

    $("#newSession").click(function() {
      var receiver = $("#sendTo").val();
      // 建立一个新聊天窗口，并设置消息接收者（发送给谁？）
      $.WebIM.newWebIM({
        receiver: receiver
      });
    });
  });
</script>
</head>

<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="navbar-wrapper">
		<div class="container">
			<form class="form-horizontal" name="userForm">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">账号</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="userName" name="userName" value="wangxin" placeholder="请输入账号" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password" value="123456" placeholder="请输入密码" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox" name="register"> 注册
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">发送至</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="to" name="to" value="vincent" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="button" class="btn btn-default" id="login">登录</button>
					</div>
				</div>
		</div>
	</div>

	<!-- 登陆表单 -->
	<!-- 		<form name="userForm" style="background-color: #fcfcfc; width: 100%;"> -->
	<!-- 			userName：<input type="text" name="userName" value="wangxin" /> password：<input type="password" name="password" value="123456" /> register: <input type="checkbox" name="register" /> sendTo： <input type="text" id="to" name="to" value="vincent" -->
	<!-- 				width="10" /> <input type="button" value="Login" id="login" /> -->
	<!-- 		</form> -->
	<!-- 新窗口聊天 -->
	<div id="newConn" style="display: none; background-color: #fcfcfc; width: 100%;">
		User：<label></label> sendTo： <input type="text" id="sendTo" value="vincent" width="10" /> <input type="button" value="new Chat" id="newSession" /> <input type="button" value="Logout" id="logout" />
	</div>
	<!-- 日志信息 -->
	<div id="error" style="display:; background-color: red;"></div>
	<div id="info" style="display:; background-color: #999999;"></div>
	<!-- 聊天来消息提示 -->
	<div class="chat-message">
		<img src="images/write_icon.png" class="no-msg" /> <img src="images/write_icon.gif" class="have-msg" style="display: none;" />
	</div>
</body>
</html>