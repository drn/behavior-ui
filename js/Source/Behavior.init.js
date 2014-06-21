/*
---

name: Behavior.init

description: Generic startup file for pages that use behavior and delegator for their js invocation.

requires:
 - Behavior/Behavior
 - Behavior/Delegator
 - Core/DomReady

provides: [Behavior.init]

...
*/

window.addEvent('domready', function(){
	var behavior = new Behavior({
	  verbose: window.location.search.indexOf('verbose=true') >= 0 ||
	           window.location.search.indexOf('debug=true'),
	  breakOnErrors: window.location.search.indexOf('breakOnErrors=true') >= 0 ||
	           window.location.search.indexOf('debug=true'),
	});
	var delegator = new Delegator({
	  getBehavior: function(){ return behavior; }
	}).attach(document.body);
	behavior.setDelegator(delegator).apply(document.body);
});
