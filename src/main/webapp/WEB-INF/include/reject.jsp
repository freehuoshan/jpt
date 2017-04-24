<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/common/uri.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>六度智囊 (www.6vidu.com)</title>
	<meta name="author" content="Qing Li">
	<meta name="description" content="六度智囊 智囊 咨询 战略 行业">
	<meta name="keywords" content="六度智囊 智囊 咨询 战略 行业">

	<link rel="shortcut icon" href="<%=res%>/images/icons/favicon.ico">
	<link rel="apple-touch-icon" href="<%=res%>/images/icons/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=res%>/images/icons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=res%>/images/icons/apple-touch-icon-114x114.png">

	<link rel="stylesheet" type="text/css" href="<%=res%>/css/style.css" />
	<link rel="stylesheet" type="text/css" href="<%=res%>/css/animate.css" />
	<script src="<%=res%>/js/modernizr.custom.js"></script>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="condition-header">
			<a href="http://www.6vidu.com"><img class="logo" style="left:20px;" src="<%=res%>/images/icons/logo.svg"></a>
		</div>	
		<section class="invitation">
			<p>感谢您的反馈，期待您下次参与六度智囊（Six Degrees Intelligence）咨询邀请，点击<a href="<%=basePath%>/condition">链接</a>查看详细条款条约。</p>
		</section>
		<div class="footer-fixed">
		<footer>
			<div class="footer-inner">
				<div class="footer-top">
					<h3>咨询</h3>
					<h3>加入我们</h3>
					<h3>新闻</h3>
					<h3>法律</h3>
				</div>	
				<div class="footer-bottom">
					<img id="logo-space" style="visibility:hidden" src="<%=res%>/images/icons/logo-footer.svg">
					<img class="logo-footer" src="<%=res%>/images/icons/logo-footer.svg">
					<h5>公司邮箱</h5>
					<a href="mailto:info@6vidu.com">info@6vidu.com</a>
					<div class="social-media"><i class="fa fa-weixin" aria-hidden="true"></i><a href="https://www.linkedin.com/company/13285687/" target="_blank" style="padding:0;border"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></div>
				</div>
			</div>
			<img class="qr-code" src="<%=res%>/images/photos/qrcode.jpg">
		</footer>
		</div>
	</div>
	<script src="<%=res%>/js/jquery-2.1.3.min.js"></script>
	<script src="<%=res%>/js/TweenMax.min.js"></script>
	<script type="text/javascript" src="<%=res%>/js/jquery.malihu.PageScroll2id.js"></script>
	<script src="<%=res%>/js/script.js"></script>
	<script src="<%=res%>/js/wow.js"></script>
	<script src="<%=res%>/js/classie.js"></script>
	<script>
		$('.fa-weixin').click(function(){
		    $('.qr-code').fadeIn();
		});
		$('.qr-code').click(function(){
		    $(this).fadeOut();
		});		
	</script>
	<script src="http://webapi.amap.com/maps?v=1.3&amp;key=142c7c3ec454887de4a3d950c1d182c4&callback=init"></script>
	<script>
	    function init(){
	        var map = new AMap.Map('map', {
	            center: [120.081734,30.287632],
	            zoom: 50
	        });
	        map.plugin(["AMap.ToolBar"], function() {
	            map.addControl(new AMap.ToolBar());
	        });
	    }
	</script>
	<script type="text/javascript">
	(function($) {
$(document).ready(function() {
    "use strict";
    

        // Hide Fixed Slider
        $(window).on("scroll touchmove", function () {
        $('.slider .slider-inner').toggleClass('hide', $(document).scrollTop() > 1500);
        });

        });
    
        
        // Wow animations
        wow = new WOW(
        {
            animateClass: 'animated',
            offset:       50
        }
        );
        wow.init();
        
        
    })(jQuery);
	</script>
</body>
</html>
