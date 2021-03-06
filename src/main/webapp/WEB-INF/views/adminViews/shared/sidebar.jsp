
<!-- 
				ASIDE 
				Keep it outside of #wrapper (responsive purpose)
			-->
<aside id="aside">
	<!--
					Always open:
					<li class="active alays-open">

					LABELS:
						<span class="label label-danger pull-right">1</span>
						<span class="label label-default pull-right">1</span>
						<span class="label label-warning pull-right">1</span>
						<span class="label label-success pull-right">1</span>
						<span class="label label-info pull-right">1</span>
				-->
	<nav id="sideNav">
		<!-- MAIN MENU -->
		<ul class="nav nav-list">
			<li id="home">
				<!-- dashboard --> <a class="dashboard" href="${contextRoot}/manage/home">
					<i class="main-icon fa fa-dashboard"></i> <span>Home</span>
			</a>
			</li>
			<li id="about">
				<!-- About us --> <a href="${contextRoot}/manage/about">
					<i class="main-icon fa fa-info-circle"></i> <span>About Us</span>
			</a>
			</li>
			
			<li id="client">
				<a href="#">
					<i class="fa fa-menu-arrow pull-right"></i>
					<i class="main-icon fa fa-square"></i> <span>Clients</span>
				</a>
				<ul>
					<c:forEach items="${clients}" var="client">
						<li>
							<a href="${contextRoot}/manage/client/${client.id}">
								${client.nameEn}
							</a>
						</li>
					</c:forEach>
					<li><a href="${contextRoot}/manage/client">Add New</a></li>
				</ul>
			</li>


			<li id="product">
				<a href="#">
					<i class="fa fa-menu-arrow pull-right"></i>
					<i class="main-icon fa fa-television"></i> <span>Products</span>
				</a>
				<ul>
				
					<c:forEach items="${productCategoriesMap}" var="entry">
						<li>
						<a href="#">
							<i class="fa fa-menu-arrow pull-right"></i>
							${entry.key.nameEn}
						</a>
							<ul>
								<c:forEach items="${entry.value}" var="product">
									<li><a href="${contextRoot}/manage/product/${product.id}">
										${product.nameEn}
									</a></li>
								</c:forEach>
							
								<li><a href="${contextRoot}/manage/product/cat/${entry.key.id}">Add New</a></li>
								
							</ul>
						</li>
					</c:forEach>
		
				</ul>
			</li>
			
			
			<li id="service">
				<a href="#">
					<i class="fa fa-menu-arrow pull-right"></i>
					<i class="main-icon fa fa-cube"></i> <span>Services</span>
				</a>
				<ul>
				
					<c:forEach items="${serviceCategoriesMap}" var="entry">
						<li>
						<a href="#">
							<i class="fa fa-menu-arrow pull-right"></i>
							${entry.key.nameEn}
						</a>
							<ul>
								<c:forEach items="${entry.value}" var="service">
									<li><a href="${contextRoot}/manage/service/${service.id}">
										${service.nameEn}
									</a></li>
								</c:forEach>
							
								<li><a href="${contextRoot}/manage/service/cat/${entry.key.id}">Add New</a></li>
								
							</ul>
						</li>
					</c:forEach>
		
				</ul>
			</li>
			<li id="productCategory">
				<a href="#">
					<i class="fa fa-menu-arrow pull-right"></i>
					<i class="main-icon fa fa-database"></i> <span>Product Categories</span>
				</a>
				<ul>
					<c:forEach items="${productCategoriesMap}" var="entry">
						<li>
							<a href="${contextRoot}/manage/productCategory/${entry.key.id}">
								${entry.key.nameEn}
							</a>
						</li>
					</c:forEach>
					<li><a href="${contextRoot}/manage/productCategory">Add New</a></li>
				</ul>
			</li>
			
			<li id="serviceCategory">
				<a href="#">
					<i class="fa fa-menu-arrow pull-right"></i>
					<i class="main-icon fa fa-database"></i> <span>Service Categories</span>
				</a>
				<ul>
					<c:forEach items="${serviceCategoriesMap}" var="entry">
						<li>
							<a href="${contextRoot}/manage/serviceCategory/${entry.key.id}">
								${entry.key.nameEn}
							</a>
						</li>
					</c:forEach>
					<li><a href="${contextRoot}/manage/serviceCategory">Add New</a></li>
				</ul>
			</li>
			
		</ul>

	</nav>

	<span id="asidebg">
		<!-- aside fixed background -->
	</span>
</aside>
<!-- /ASIDE -->
