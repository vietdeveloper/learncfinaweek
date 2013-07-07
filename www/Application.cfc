component {
    this.name = 'learncfinaweek';
    this.datasource = 'learncfinaweek';
    applicationTimeout = CreateTimeSpan(10, 0, 0, 0);
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0,0, 30, 0);
    this.ormEnabled = true;
    this.ormSettings = {logsql = true, dbcreate="update", cfclocation="com/entity"};
    this.invokeImplicitAccessor = true;
    this.sessioncookie.httponly = true;
    this.sessioncookie.timeout = "10";
    this.sessioncookie.disableupdate = true;
    
    function onApplicationStart() {
        application.myName = "Viet";
        application.myPosition = "A Software Developer";
        application.utilities = CreateObject('cfc.utilities');
        return true;
    }
    
    function onError(any Exception, string EventName) {
        include 'sorry.cfm';
        var errorEmail = new mail();
        errorEmail.setTo('me@example.com');
        errorEmail.setFrom('system@example.com');
        errorEmail.setSubject('An Error has Occurred');
        errorEmail.setBody('
            Message: #arguments.exception.message# <br/>
            Details: #arguments.exception.detail# <br/>
            Type: #arguments.exception.type# <br/>
        ');
        errorEmail.setType('html');
        errorEmail.send();
    }
    
    function onRequestStart(string targetPage) {
        if (structKeyExists(url, 'reload')) {
            onApplicationStart();
            ORMReload();
        }
    }
}