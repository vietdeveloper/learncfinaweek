<cfset session.adminID = '' />
<cfset session.emailaddress = '' />
<cfset SessionInvalidate() />
<cflocation url="login.cfm" addToken="false" />