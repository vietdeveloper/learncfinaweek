<cfscript>
	myQry = new Query();
	myQry.SetSQL("SELECT title, website, image, summary AS description FROM portfolio ORDER BY id");
	portfolio = myQry.execute().getResult();
</cfscript>
<cfimport taglib="customTags/" prefix="layout" />
<layout:page section="portfolio">
		
		<!-- Content Start -->
    
		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
			<!-- portfolio -->
				<div id="portfolio">
					<div class="clr">
						<div class="top-bg1">
							<div class="top-left">
								<div>
									<h1>Portfolio</h1>
								</div>
							</div> 
						</div>
						<div class="clr">
							<div class="pat-bottomleft">&nbsp;</div>
							<div class="pat-bottomright">&nbsp;</div>
						</div>
					</div>
					<div class="clr">
						<h6>
							<span> I build great sites <br /></span>Hello, thanks for visiting this section. Here’s a collection of some of my work.
						</h6>
					</div>
					<div class="clr hline">&nbsp;</div>
					<div class="clr">
						<div>
							<ul id="portfolio-list">
								<!-- Start Portfolio -->
                                <cfoutput query="portfolio">
								    <li>
									    <div class="left">
										    <a href="#portfolio.website#" title="#portfolio.title#" class="viewDetail ">
											    <img src="assets/images/portfolio/#portfolio.image#"   alt=" " border="0" />
											    <h5>#portfolio.title#</h5>
										    </a>
									    </div>
									    <div class="right">
										    <p>
                                                #portfolio.description#
										    </p>
									    </div>
								    </li>
                                </cfoutput> 
								<!-- End Portfolio -->
							</ul>
						</div>
						<!-- demowrap end-->       
					</div>
					<!-- clr end -->
					<div class="clr"></div>
				</div>
				<!-- portfolio end -->
<cfinclude template="includes/footer.cfm" />