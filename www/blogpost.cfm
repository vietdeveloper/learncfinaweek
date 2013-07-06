<cfparam name=form.token default="" />
<cfparam name=form.submitted default="0" />
<cfset blogPost = EntityLoad('BlogPost', url.id, true) />
<cfif form.submitted>
    <cfif IsSimpleValue(form.author)>
        <cfset form.author = canonicalize(form.author, true, true) />        
    </cfif>
    <cfif IsSimpleValue(form.comment)>
        <cfset form.comment = canonicalize(form.comment, true, true) />
    </cfif>
    <cfif !IsSimpleValue(form.author) || !IsSimpleValue(form.comment) || !CSRFVerifyToken(form.token)>
        <cfthrow message="Validation Error">
    </cfif>
    <cfset comment = EntityNew('blogComment') />
    <cfset comment.author = form.author />
    <cfset comment.comment = form.comment />
    <cfset comment.createdDateTime = now() />
    <cfset blogPost.addComment(comment) />
    <cfset EntitySave(blogPost) />
</cfif>
<cfimport taglib="customTags/" prefix="layout" />
<layout:page section="Blog">
		
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
                            <cfoutput>
							<div class="left">
								<!-- Blog Title -->
								<h2 class="big">
									#blogPost.title#
								</h2>
								<!-- Date Published -->
								<p>
									<strong>Date Posted</strong>: #dateformat(blogPost.dateposted, 'mm/dd/yyyy')#
								</p>
								<!-- Blog Body -->
                                #blogPost.body#
								<!-- Blog Export -->
								<p>
									<a href="exportToPDF.cfm?id=#blogPost.id#" target="_new"><img src="assets/images/export_pdf.png" border="0"/></a>
								</p>
								<!-- Blog Comments Section -->
								<h3>
									Comments (#arrayLen(blogPost.getComments())#)
								</h3>
								<div class="clr hline">&nbsp;</div>
		
								<div class="clr comments">
									<ul>
										<!-- Start Comment -->
                                        <cfloop array=#blogPost.getComments()# index=comment>
										<li>
											<p>
												<strong>Posted On:</strong> #dateFormat(comment.createdDateTime, 'mm/dd/yyyy')# at #timeformat(comment.createdDateTime, 'short')# By #encodeForHtml(comment.author)#
											</p>
											<p>
												#encodeForHtml(comment.comment)#
											</p>
											<div class="clr hline">&nbsp;</div>
										</li>
                                        </cfloop>
										<!-- End Comment -->										
									</ul>
								</div>
								<h3>
									Post Comment
								</h3>
								<div class="clr hline">&nbsp;</div>
		
								<div class="clr postComment">
									<form action="blogpost.cfm?id=#blogPost.id#" method="post" id="form">
										<div>
											<label>Name <span class="font-11">(required)</span></label>
											<input name="author" type="text" class="required" />
										</div>
										<div class="textarea">
											<label>Comment <span class="font-11">(required)</span></label>				
											<textarea name="comment" rows="6" cols="60" class="required"></textarea>		
										</div>
										<div>
											<input id="submitBtn" value="Submit"  name="submit" type="submit" class="submitBtn" />
										</div>
                                        <input type="hidden" name="token" value="#CSRFGenerateToken()#" />
										<input type="hidden" name="submitted" value="1" />
									</form>
								</div>	
							</div>
                            </cfoutput>
							<div class="right" >
								<h2>Categories</h2>
								<!-- Blog Specific Categories -->
								<div id="categories" align="center">
									<ul>
										<li><a href="#">ColdFusion</a></li>
										<li><a href="#">Development</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clr"></div>
				</div> <!--blog end -->

<cfinclude template="includes/footer.cfm" />