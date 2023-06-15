// ==UserScript==
// @name         Redirect old to new jira
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  automatically redirect from the old jira to the new url
// @author       You
// @match        https://issue.ebgroup.elektrobit.com/browse/*
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    if(location.hostname === 'issue.ebgroup.elektrobit.com'){
        let [jira_id] = location.pathname.split('/').slice(-1);
        let jira_url = 'https://jira.elektrobit.com/browse/';
        window.location.href = jira_url + jira_id
    }
})();