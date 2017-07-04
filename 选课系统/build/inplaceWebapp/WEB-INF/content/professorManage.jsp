<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Contact</title>
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
	//查询所有教师
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/personAction_findAllProfessor',
			type : 'POST',
			dataType : 'json',
			data : {},
			success : function(data) {
				$("#allProfessor").empty();
				for (var i = 0; i < data.length; i++) {
					var p = data[i];
					var ps ="'" + p.ssn + "'";
					var html = '<tr><td>'
						+ p.ssn
						+ '</td><td>'
						+ p.name
						+ '</td><td>'
						+ p.title
						+ '</td><td>'
						+ p.department
						+ '</td><td><a href="javascript:void(0);"  onclick="updateProfessor('+ ps +')">updateProfessor</a>'
						+ '</td><td><a href="javascript:void(0);"  onclick="delectProfessor('+ ps +')">delect</a></td></tr>';
						$("#allProfessor").append(html);
				}	
			}
		});
	})
	//添加教师
	function addProfessor(){
		$.ajax({
			url:'${pageContext.request.contextPath}/personAction_addProfessor',
			type:'POST',
			dataType : 'json',
			data:{ssn:$("#ssn").val(),name:$("#name").val(),title:$("#title").val(),department:$("#department").val()},
			success:function(data){
				if(data.status=="ok"){
					alert("添加成功！");
					window.location.reload();
				}
			}
		});
	}
	//删除教师
	function delectProfessor(val){   
		$.ajax({
			url:'${pageContext.request.contextPath}/personAction_deleteProfessor',
			type:'POST',
			dataType : 'json',
			data:{ssn:val},
			success:function(data){
				if(data.status=="ok"){
					alert("删除成功！");
					window.location.reload();
				}
			}
		}) 
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
				<h1>电商选课系统——教师界面</h1>
			</div>
			<div class="container">
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="form-group col-md-4">
				<h1>更新本人信息</h1>
				<label>教师账号:</label> 
				<input class="form-control" type="text" id="ssn" />
				<label>教师姓名:</label> 
				<input class="form-control" type="text" id="name" /> 
				<label>教师职称:</label>
				<input class="form-control" type="text" id="title" />
				<label>学院:</label>
				<input class="form-control" type="text" id="department" /><br />
				<button onclick="addProfessor()" class="btn btn-default btn-lg btn-block">确认添加</button>
			</div>
			<div class="col-md-4">
			</div>
		</div>
		<h2>所有教师信息</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<td>教师账号</td>
					<td>教师姓名</td>
					<td>教师职称</td>
					<td>学院</td>
					<td></td>
					<td></td>
				</tr>
			</thead>
			<tbody id="allProfessor">
			
			</tbody>
			
		</table>
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