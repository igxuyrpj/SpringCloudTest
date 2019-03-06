<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传视频结果</title>


</head>
<body>
	<div class="panel panel-default">
		<div class="panel-body" align="center">
			<div class="panel-heading">
				<h1 class="sub-header h3">上传结果</h1>
			</div>
			<!-- ${pageContext.request.contextPath },${pageContext } kkkkkkkk<div class="row-fluid">${result}</div>-->


			<hr>
			<div class="row-fluid">
				<div class="col-lg-12">
					<div class="table-responsive">


						<table border="1" cellpadding="15" align="center">
							<thead>
								<tr>
									<th>城市</th>
									<th>图片</th>
									<th>类型</th>
									<th>可用时间</th>
									<th>预算(￥)</th>
									<th>容纳人数</th>
									<th>状态</th>
									<th>上传日期</th>
									<th  width="120px;">备注</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${entity.city}</td>
									<td><c:if test="${entity.pic!=null}">
											<img src="/image/${entity.pic}" width="50" height="40" />
										</c:if></td>
									<td>${entity.type}</td>
									<td>${entity.time}</td>
									<td>${entity.money}</td>
									<td>${entity.num}</td>
									<td>${entity.state}</td>
									<td>${entity.date}</td>

									<td width="60px;">${entity.info}</td>
									<td><a
										href="${pageContext.request.contextPath }/meeting/admin">点击返回</a>
									</td>
								</tr>


							</tbody>
						</table>


					</div>
				</div>
			</div>
			<div id="a1" align="center"></div>
		</div>
	</div>
</body>
</html>