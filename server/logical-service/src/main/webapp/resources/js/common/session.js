/**
 * Session Definer to retain user information after login
 */
var session = {
		
	_serviceUrl: null,
	_userId: null,
	_username: null,
	_firstName: null,
	_lastName: null,
	_createTime: null,
	
	init: function(opt) {
		this._serviceUrl = opt.serviceUrl;
		this._userId = opt.userId;
		this._username = opt.username;
		this._firstName = opt.firstName;
		this._lastName = opt.lastName;
		this._createTime = new Date();
	},
	
	release: function() {
		this._serviceUrl = null;
		this._userId = null;
		this._username = null;
		this._firstName = null;
		this._lastName = null;
		this._createTime = null;
	},
	
	isLogin: function() {
		return this._createTime != null;
	},
	
	getServiceUrl: function() {
		return this._serviceUrl;
	},
	
	getAbsUrl: function(url) {
		return url.indexOf("/") == 0 ? this._serviceUrl + url : url;
	}
	
};