<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>选课系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!--start-smoth-scrolling-->
<script type="text/javascript">
	var str=location.href;
	var cc = str.substr(str.indexOf("?")+1);
	function addSection(){
		$.ajax({
			url:'${pageContext.request.contextPath}/sectionAction_addSection',
			type:'POST',
			dataType : 'json',
			data:{courseNo:cc,sectionNo:$("#sectionNo").val(),dayOfWeek:$("#dayOfWeek").val(),timeOfDay:$("#timeOfDay").val(),room:$("#room").val(),seatingCapacity:$("#seatingCapacity").val(),professorSsn:$("#professor").val(),semester:$("#semester").val()},
			success:function(data){
				if(data.status=="ok"){
					alert("添加成功！");
					window.location.href='${pageContext.request.contextPath}/admin';
				}
			}
		});
	}
</script>
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="" /></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="login" class="hvr-bounce-to-top">系统主页 <span class="sr-only">(current)</span></a></li>
					<li><a href="student" class="hvr-bounce-to-top">学生页面</a></li>
					<li><a href="admin" class="hvr-bounce-to-top">管理员页面</a></li>
					<li><a href="professor" class="hvr-bounce-to-top">教师页面</a></li>
					<li><a href="addSection" class="hvr-bounce-to-top">课程页面</a></li>
				</ul>
				<div class="clearfix"></div>
			</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
	</div>
	<!--end-header-->
	<!--start-contact-->
	<div class="map">
		<div class="container">
			<div class="map-top heading">
				<h1>电商选课系统</h1>
			</div>
			    <div class="container">
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="form-group col-md-4">
				<h1>添加可供电商学生选修的课程</h1>
				<label>课程编号:</label> 
				<input class="form-control" type="text" id="sectionNo" />
				<label>上课日期:</label> 
				<input class="form-control" type="text" id="dayOfWeek" /> 
				<label>上课时间:</label>
				<input class="form-control" type="text" id="timeOfDay" />
				<label>上课地点:</label>
				<input class="form-control" type="text" id="room" />
				<label>剩余容量:</label>
				<input class="form-control" type="text" id="seatingCapacity" />
				<label>任课教师:</label>
				<input class="form-control" type="text" id="professor" /> 
				<label>所在学期:</label> 
				<input class="form-control" type="text" id="semester" /><br />
				<button onclick="addSection()" class="btn btn-default btn-lg btn-block">确定添加</button>
			</div>
			<div class="col-md-4">
			</div>
		</div>
	</div>
		</div>
	</div>
	<!--end-contact-->
	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top heading">
				<h2>CONTACT</h2>
				<p>中国矿业大学管理学院电商14级</p>
			</div>
			<div class="contact-bottom"> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-contact-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="clearfix"></div>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-->
</body>
</html>