<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head></head>
<title>选课系统——管理员</title>
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
	//查询所有课程
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/courseAction_findAllCourse',
			type : 'POST',
			dataType : 'json',
			data : {},
			success : function(data) {
				$("#allCourse").empty();
				for (var i = 0; i < data.length; i++) {
					var c = data[i];
					var ca ="'" + c.courseNo + "'";
					var prerequisite = [];
					if(c.prerequisite.length!=0){
						prerequisite = c.prerequisite[0].courseNo;
					}
					var html = '<tr><td>'
						+ c.courseNo
						+ '</td><td>'
						+ c.courseName
						+ '</td><td>'
						+ c.credits
						+ '</td><td>'
						+ prerequisite
						+ '</td><td><a href="javascript:void(0);"  onclick="addSection('+ ca +')">addToSection</a>'
						+ '</td><td><a href="javascript:void(0);"  onclick="delectCourse('+ ca +')">delect</a></td></tr>';
						$("#allCourse").append(html);
				}	
			}
		});
	})
	//查询所有可选课程
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/sectionAction_findAllSection',
			type : 'POST',
			dataType : 'json',
			data : {},
			success : function(data) {
				$("#allSection").empty();
				for (var i = 0; i < data.length; i++) {
					var s = data[i];
					var html = '<tr><td>'
						+ s.sectionNo
						+ '</td><td>'
						+ s.dayOfWeek
						+ '</td><td>'
						+ s.timeOfDay
						+ '</td><td>'
						+ s.room
						+ '</td><td>'
						+ s.seatingCapacity
						+ '</td><td>'
						+ s.professor
						+ '</td><td>'
						+ s.course
						+ '</td><td><a href="#">删除</a></td></tr>';
						$("#allSection").append(html);
				}	
			}
		});
	})
	//添加课程
	function addCourse(){
		$.ajax({
			url:'${pageContext.request.contextPath}/courseAction_addCourse',
			type:'POST',
			dataType : 'json',
			data:{courseNo:$("#courseNo").val(),courseName:$("#courseName").val(),credits:$("#credits").val(),prerequisite:$("#prerequisite").val()},
			success:function(data){
				if(data.status=="ok"){
					alert("添加成功！");
					window.location.reload();
				}
			}
		});
	}
	//删除课程
	function delectCourse(val){   
		$.ajax({
			url:'${pageContext.request.contextPath}/courseAction_deleteCourse',
			type:'POST',
			dataType : 'json',
			data:{courseNo:val},
			success:function(data){
				if(data.status=="ok"){
					alert("删除成功！");
					window.location.reload();
				}
			}
		}) 
	}
	//添加Section
	function addSection(val){
		window.location.href='${pageContext.request.contextPath}/addSection?' + val + '';
	}
</script>
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
					<li><a href="addSection" class="hvr-bounce-to-top">添加可选修课程</a></li>
					<li><a href="professor" class="hvr-bounce-to-top">教师页面</a></li>
					<li><a href="addSection" class="hvr-bounce-to-top">更新教师信息</a></li>
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
				<h1>电商选课系统——管理员界面</h1>
			</div>
			<div class="container">
		<table class="table table-bordered">
		<tr>
			<td><h2>添加课程</h2></td>
		</tr>
		<tr>
			<td>
				<div class="container">
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="form-group col-md-4">
							<label>课程编号:</label> 
							<input class="form-control" type="text" id="courseNo" />
							<label>课程名称:</label> 
							<input class="form-control" type="text" id="courseName" /> 
							<label>学分:</label>
							<input class="form-control" type="text" id="credits" /> 
							<label>必修课程:</label> 
							<input class="form-control" type="text" id="prerequisite" /><br />
							<button onclick="addCourse()" class="btn btn-default btn-lg btn-block">确定添加</button>
						</div>
						<div class="col-md-4">
						</div>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td><h2>所有课程</h2></td>
		</tr>
		<tr>
			<td>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td>课程编号</td>
							<td>课程名称</td>
							<td>学分</td>
							<td>必修课程</td>
							<td>加入计划</td>
							<td>删除课程</td>
						</tr>
					</thead>
					<tbody id="allCourse">

					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td><h2>现有课程计划</h2></td>
		</tr>
		<tr>
			<td>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td>序号</td>
							<td>上课日期</td>
							<td>上课时间</td>
							<td>上课地点</td>
							<td>剩余容量</td>
							<td>任课教师</td>
							<td>课程名称</td>
							<td>是否删除</td>
						</tr>
					</thead>
					<tbody id="allSection">
						
					</tbody>
				</table>
			</td>
		</tr>
	</table>
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