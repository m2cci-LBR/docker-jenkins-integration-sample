<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/includes/includes.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
		<%@ include file="/WEB-INF/views/menu-top/topMenu.jsp"%>
		<%@ include file="/WEB-INF/views/menu-left/leftMenu.jsp"%>
		<!-- /.navbar-static-side -->
	</nav>

	<!-- Page Content -->
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<fmt:message key="common.client"></fmt:message>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href='<c:url value="/client/nouveau"></c:url>'><i
									class="fa fa-plus">&nbsp;</i>
								<fmt:message key="common.ajouter"></fmt:message></a></li>
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-download">&nbsp;</i>
								<fmt:message key="common.exporter"></fmt:message></a></li>
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-upload">&nbsp;</i>
								<fmt:message key="common.importer"></fmt:message></a></li>
						</ol>

					</nav>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<fmt:message key="client.liste"></fmt:message>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th><fmt:message key="common.photo"></fmt:message></th>
										<th><fmt:message key="common.nom"></fmt:message></th>
										<th><fmt:message key="common.prenom"></fmt:message></th>
										<th><fmt:message key="common.adresse"></fmt:message></th>
										<th><fmt:message key="common.mail"></fmt:message></th>
										<th><fmt:message key="common.action"></fmt:message></th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${clients }" var="client">
										<tr class="odd gradeX">
											<td><img alt="" src="${client.getPhoto() }" width="50px"
												height="50px"></td>
											<td>${client.getNom() }</td>
											<td>${client.getPrenom() }</td>
											<td class="center">${client.getAdresse() }</td>
											<td class="center">${client.getMail() }</td>
											<td><c:url
													value="/client/modifier/${client.getIdClient() }"
													var="urlModif"></c:url> <a href="${urlModif }"><i
													class="fa fa-edit">&nbsp;</i></a> &nbsp;&nbsp; <a href="javascript:void(0)" data-toggle="modal" data-target="#modalClient${client.getIdClient() }"><i
													class="fa fa-trash">&nbsp;</i></a> &nbsp;&nbsp;
												<div class="modal fade" id="modalClient${client.getIdClient() }" tabindex="-1"
													role="dialog" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
																<h4 class="modal-title" id="myModalLabel"><fmt:message key="common.confirm.suppression"></fmt:message></h4>
															</div>
															<div class="modal-body"><fmt:message key="client.confirm.suppression.msg"></fmt:message></div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal"><fmt:message key="common.annuler"></fmt:message></button>
																	<c:url value="/client/supprimer/${client.getIdClient() }" var="urlSuppression"></c:url>
																<a  href="${ urlSuppression}" type="button" class="btn btn-danger" ><i
													class="fa fa-trash">&nbsp;</i> <fmt:message key="common.confirmer"></fmt:message></a>
															</div>
														</div>
														<!-- /.modal-content -->
													</div>
													<!-- /.modal-dialog -->
												</div></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>
	<!-- DataTables JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>


</body>

</html>
