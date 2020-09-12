<%@ include file="/WEB-INF/views/includes/includes.jsp"%>
<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Recherche...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<c:url value="/home/" var="home"></c:url>
			<li><a href="${home}"><i class="fa fa-dashboard fa-fw"></i>
					<fmt:message key="common.dashboard"></fmt:message></a></li>
					<c:url value="/article/" var="article"></c:url>
			<li><a href="${article}"><i class="fa fa-dashboard fa-fw"></i>
					<fmt:message key="common.article"></fmt:message></a></li>		
			<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
					<fmt:message key="common.client"></fmt:message><span class="fa arrow"></span></a>
					<c:url value="/client/" var="client"></c:url>
				<ul class="nav nav-second-level">
					<li><a href="${client}"><fmt:message key="common.client"></fmt:message></a></li>
					<c:url value="/commandeClient/" var="cdeClient"></c:url>
					<li><a href="${cdeClient}"><fmt:message key="common.client.commande"></fmt:message></a></li>
				</ul> <!-- /.nav-second-level --></li>
				
				<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
					<fmt:message key="common.fournisseur"></fmt:message><span class="fa arrow"></span></a>
					<c:url value="/fournisseur/" var="fournisseur"></c:url>
				<ul class="nav nav-second-level">
					<li><a href="${fournisseur}"><fmt:message key="common.fournisseur"></fmt:message></a></li>
					<c:url value="/commandeFournisseur/" var="cdeFournisseur"></c:url>
					<li><a href="${cdeFournisseur}"><fmt:message key="common.fournisseur.commande"></fmt:message></a></li>
				</ul> <!-- /.nav-second-level --></li>
		<c:url value="/stock/" var="stock"></c:url>
			<li><a href="${stock}"><i class="fa fa-table fa-fw"></i>
					<fmt:message key="common.stock"></fmt:message></a></li>
					<c:url value="/vente/" var="vente"></c:url>
			<li><a href="${vente}"><i class="fa fa-edit fa-fw"></i>
					<fmt:message key="common.vente"></fmt:message></a></li>
			<li><a href="#"><i class="fa fa-wrench fa-fw"></i>
					<fmt:message key="common.parametrage"></fmt:message><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
				<c:url value="/utilisateur/" var="user"></c:url>
					<li><a href="${user}"><fmt:message key="common.parametrage.utilisateur"></fmt:message></a></li>
					<c:url value="/category/" var="category"></c:url>
					<li><a href="${category}"><fmt:message key="common.parametrage.category"></fmt:message></a></li>
				</ul> <!-- /.nav-second-level --></li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>