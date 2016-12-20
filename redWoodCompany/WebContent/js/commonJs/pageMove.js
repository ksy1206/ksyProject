function PageMove(){
	
	var _this = this;
	
	_this.main = function() {
		location.href = "/cmd/main.do";
	};
	
	_this.about = function() {
		location.href = "/cmd/about.do";
	};
	
	_this.service = function() {
		location.href = "/cmd/service.do";
	};
	
	_this.contact = function() {
		location.href = "/cmd/contact.do";
	};
	
	_this.portfolio_1_col = function() {
		location.href = "/cmd/portfolio-1-col.do?type=cg";
	};
	
	_this.portfolio_3_col = function() {
		location.href = "/cmd/portfolio-1-col.do?type=construction";
	};
	
	_this.portfolio_2_col = function() {
		location.href = "/cmd/portfolio-2-col.do";
	};
	
	_this.portfolioItem = function() {
		location.href = "/cmd/portfolioItem.do";
	};
};

var pageMove = new PageMove();