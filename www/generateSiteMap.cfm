<cfxml variable="xmlSitemap">
    <?xml version="1.0" encoding="UTF-8"?>
    <urlset xmlns="http://www.google.com/schemas/sitemap/0.90">
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/</loc>
            <priority>0.5</priority>
        </url>
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/</loc>
            <priority>0.5</priority>
        </url>
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/resume.cfm</loc>
            <priority>0.5</priority>
        </url>
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/portfolio.cfm</loc>
            <priority>0.5</priority>
        </url>
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/contact.cfm</loc>
            <priority>0.5</priority>
        </url>
        <url>
            <loc>http://localhost:8500/learncfinaweek/www/blog.cfm</loc>
            <priority>0.5</priority>
        </url>
    </urlset>
</cfxml>
<cffile action="write" file="#expandPath('./sitemap.xml')#" output="#toString(xmlSiteMap)#" />
<p>File created.</p>