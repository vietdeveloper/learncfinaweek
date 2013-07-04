<cfscript>
    myPortfolio = [];
    arrayAppend(myPortfolio, {title='Classic ASP', website='http://vietla.blogspot.com/2013/07/using-github-for-windows-with-bitbucket.html', image='portfolio1.png', description='This is the first web site I built in 1999.'});
    arrayAppend(myPortfolio, {title='ASP.NET', website='http://vietla.blogspot.com/2013/05/error-when-add-storemanagercontroller.html', image='portfolio2.png', description='I built a second web site using ASP.NET around 2001'});
    arrayAppend(myPortfolio, {title='PHP.NET', website='http://vietla.blogspot.com/2013/05/my-experience-with-android-studio.html', image='portfolio3.png', description='A third web site is in PHP in 2010.'});
    arrayAppend(myPortfolio, {title='My Blog', website='http://vietla.blogspot.com', image='portfolio4.png', description='My personal blog'});
    arrayAppend(myPortfolio, {title='My Web', website='http://vietla.net', image='portfolio5.png', description='My personal web'});
</cfscript>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Clean Slide Responsive Vcard Template" />
	<meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<title>This is my WebSite</title>
	
	<!-- Loading Google Web fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
	
	<!-- CSS Files -->
	<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"  id="color" />
	<link href="assets/css/typography.css" rel="stylesheet" type="text/css"  id="customFont"/>
	<link href="assets/css/arial_content.css" rel="stylesheet" type="text/css"  id="contentfont"/>
	
	<!-- include jQuery library -->
	<script type="text/javascript" src="assets/js/jquery-1.7.min.js"></script>

	<script src="assets/js/raphael.js" type="text/javascript"></script>
	<script src="assets/js/init.js" type="text/javascript"></script>
</head>
	
<body>

	<!-- wrapper -->
	<div class="clr" id="top-head">&nbsp;</div>
	<div id="container">
		<!--header -->
		<div id="header" >
			<div class="logo-bg" >
				<!--logo -->
				<div class="logo">
					<img src="assets/images/logo.png" alt="Logo" width="202" height="52" border="0"  id="logo" />
				</div>
				
				<!--head right -->
				<div class="right">
				
					<!--// Navigation //-->
					<div class="menu_nav">
						<div id="nav-wrap">
							<ul class="arrowunderline" id="nav">
								<li class="home"><a href="index.cfm">Home</a></li>
								<li class="about"><a href="about.cfm">About</a></li>
								<li class="resume"><a href="resume.cfm">Resume</a></li>
								<li class="blog"><a href="blog.cfm">Blog</a></li>
								<li class="portfolio" id="selected"><a href="portfolio.cfm">Portfolio</a></li>
								<li class="contact"><a href="contact.cfm">Contact</a></li>	
							</ul>
						</div>
					</div>
					<!--// Navigation End //-->
				</div>
				<!--// -head right end //-->
			</div>
			<!--// logo bg end //-->
		</div>
		<!--header end -->
		
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
                                <cfoutput>
                                    <cfloop array="#myportfolio#" index="portfolio">
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
                                    </cfloop>   
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
		
				<div class="clr"></div>
			</div><!--card pattern end -->
			<div class="clr "></div>
		</div>		  <!--content end -->	
		<div class="bottom-shade"></div>
	</div>  <!--Container / wrapper end -->	
</body>
</html>
