<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色设置</title>
</head>
<body>




	<!DOCTYPE html>

<html lang="zh-cn">
<head>

<meta name="keywords"
	content="盈+，盈，社区金融，O2O社区金融，社区金融O2O，O2O，互联网+社区金融，O2O连锁，社区门店，首家社区金融，社区金融服务，综合金融，互联网金融，体验中心，普惠金融，金融创新，社区化，普惠化，全渠道化，互联网线上平台，O2O交易，全国首家，盈十，金融衍生品，固收类理财，私募基金，股权基金，股指期货，玩转股指，商品期货，国际期货，外盘，A50，沪深300，中证500，上证50" />
<meta name="description" content="盈+——全国首家互联网金融交流体验中心，与您共盈，给财富做加法。" />
<link href="/winplus/resources/web/images/icon.ico" type="image/x-icon"
	rel="shortcut icon">

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="renderer" content="webkit">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/winplus/resources/sys/ying/iconfont.css">
    <link rel="stylesheet"
	href="/winplus/resources/sys/style/bootstrap.css">
    <link rel="stylesheet" href="/winplus/resources/sys/style/style.css">
    <script type="text/javascript"
	src="/winplus/resources/sys/js/jquery.js"></script>
	<title>后台首页</title>
</head>
<body>

                     <div class="box-right-main">
                        <h2>
			<span class="glyphicon glyphicon-play" style="margin-right:5px"></span>角色管理</h2>

                      <div class="tablelist">
                        <table class="table tabletop">
                        <tr>
                         <td class="pull-right"
						style="padding-right:30px"><button type="button"
							class="btn btn-primary btn-sm add">新增</button></td>
                        </tr>     
                        </table>
                     <table class="table table-bordered tablebox">
                       <tr class="text-center" bgcolor="#f7f7f7">
                         <td>序号</td>
				         <td>角色名</td>
				         <td>角色描述</td>
				         <td>创建时间</td>
				          <td>菜单配置</td>
				      </tr>
					      <tr class="text-center">
					         <td>1</td>
					         <td>系统管理员</td>
					         <td>系统超级管理员</td>
					         <td>2015/08/14 15:12:28</td>
							 <td><a href="/winplus/sys/permisssion?roleId=1" value="1"
						class="btn btn-primary btn-sm">菜单配置</a></td>
					      </tr>
					      <tr class="text-center">
					         <td>2</td>
					         <td>普通管理员</td>
					         <td>普通管理员</td>
					         <td>2015/10/26 14:12:23</td>
							 <td><a href="/winplus/sys/permisssion?roleId=2" value="2"
						class="btn btn-primary btn-sm">菜单配置</a></td>
					      </tr>
					</table>
	
	
	<div class="llpage">
		<div class="in">
			<nav>
                <span class="count">第&nbsp;<b>1</b>&nbsp;页，&nbsp;共&nbsp;<b>1</b>&nbsp;页</span>
				<ul class="pagination">

						<li><a class="prev_page">上页</a></li>


							<li><a class="now">1</a></li>


						<li><a class="next_page" rel="next">下页</a></li>
				</ul>
			</nav>
		</div>
	</div>
         </div>

         <!-- 内容结束 -->

	</div>
<!-- 容器结束 -->
</body>
<script type="text/javascript">
	$(function() {
		$(".add").click(function() {
			window.location.href = "/winplus/sys/addRolePage";
		});

		$(".delRole").click(function() {
			var roleid = $(this).attr("roleid");
			$.post("/winplus/sys/delRole/" + roleid, function(result) {
				alert(result.msg);
				if (result.code == 0) {
					location.reload();
					;
				}
				;
			}, 'json');
		});
	});
</script>
</html>



</body>
</html>