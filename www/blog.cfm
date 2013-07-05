<cfquery name="myPosts" datasource="learncfinaweek">
	SELECT title, summary, dateposted, category.name, post.id  
	FROM post 
	JOIN postcategoryjn ON postcategoryjn.postid=post.id 
	JOIN category ON category.id=postcategoryjn.categoryid 
	ORDER BY dateposted DESC;
</cfquery>
<cfinclude template="includes/header.cfm" />
		
		<!-- Content Start -->
    
		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
				<!-- blog -->
				<div id="blog">
					<div class="clr">
						<div class="top-bg1">
							<div class="top-left">
								<div><h1>Blog</h1></div>
							</div> 
						</div>
						<div class="clr">
							<div class="pat-bottomleft">&nbsp;</div>
							<div class="pat-bottomright">&nbsp;</div>
						</div>
					</div>
					<div class="blog-top">	
						<div class="clr">
							<div class="left">
								<!-- Blog Posts -->
								<cfoutput query="myPosts" group="id">
									<!-- Start Blog Post -->
									<h5>
										<span>#dateformat(myPosts.dateposted, "mm/dd/yy")# </span>
									</h5>
									<h2>
										<a href="blogpost.cfm?id=">#myPosts.title#</a>
									</h2>
									<p>#myPosts.summary#</p>
									<p class="summary">
										<strong>Categories:</strong> 
										<cfoutput>
											#name# 
										</cfoutput>
										<!--- 
										ColdFusion <strong>Comments:</strong> 12
										--->
									</p>
									<!-- End Blog Post -->
								</cfoutput>
							</div>
							<div class="right" >
								<h2>Categories</h2>
								<!-- Blog Categories -->
								<div id="categories" align="center">
									<ul>
										<li><a href="#">ColdFusion</a></li>
										<li><a href="#">Development</a></li>
										<li><a href="#">HTML5</a></li>
										<li><a href="#">Javascript</a></li>
										<li><a href="#">jQuery</a></li>
										<li><a href="#">Misc</a></li>
										<li><a href="#">Video Games</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clr"></div>
				</div> <!--blog end -->
<cfinclude template="includes/footer.cfm" />