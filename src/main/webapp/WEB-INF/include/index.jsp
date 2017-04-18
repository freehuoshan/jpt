<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/common/uri.jsp"%>
<!DOCTYPE html>
<html class="no-js lt-ie9" lang="en">
<head>
	<meta charset="utf-8">
	<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
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
	<div class="body-container">
	<div class="container">
		<div class="navigation">
			<div class="navigation-inner">
				<a href="http://www.6vidu.com"><img class="logo" src="<%=res%>/images/icons/logo.svg"></a>
				<nav>
					<a class="active" href="#aboutus">关于我们</a>
					<a href="#team">核心团队</a>
					<a href="#service">我们的服务</a>
					<a href="#culture">我们的文化</a>
					<a href="#contact">联系我们</a>
				</nav>
			</div><!-- navigation-inner -->
		</div><!-- navigation -->
		<div class="mobile-nav">
			<a href="http://www.6vidu.com"><img class="logo" style="left:20px;" src="<%=res%>/images/icons/logo.svg"></a>
			<img class="open-nav" src="<%=res%>/images/icons/open.svg">
			<img class="close-nav" src="<%=res%>/images/icons/close.svg">
		</div>
		<div class="overlay-nav">
			<ul>
				<li>
					<a href="#aboutus-nav"><h2>ABOUT US</h2><h3>关于我们</h3></a>
				</li>
				<li>
					<a href="#team-nav"><h2>TEAM</h2><h3>核心团队</h3></a>
				</li>
				<li>
					<a href="#service-nav"><h2>SERVICE</h2><h3>我们的服务</h3></a>
				</li>
				<li>
					<a href="#culture-nav"><h2>CULTURE</h2><h3>我们的文化</h3></a>
				</li>
				<li>
					<a href="#contact-nav"><h2>CONTACT</h2><h3>联系我们</h3></a>
				</li>
			</ul>
		</div>
		<div class="header">
			<div class="header-info">
				<div class="header-info-animation">
					<svg class="header-animation" viewBox="0 0 704 101" style="enable-background:new 0 0 704 101;" xml:space="preserve">
					<style type="text/css">
					.st0{fill:#FFFFFF;}
					.st1{fill:none;stroke:#FFFFFF;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					</style>
					<g>
						<g>
							<circle id="dot-1" class="st0" cx="11.5" cy="9.7" r="5.4"/>
							<circle id="dot-2" class="st0" cx="165.6" cy="91.3" r="5.4"/>
							<circle id="dot-3" class="st0" cx="254.4" cy="40.9" r="5.4"/>
							<circle id="dot-4" class="st0" cx="370.2" cy="11.1" r="5.4"/>
							<circle id="dot-5" class="st0" cx="493.7" cy="56.9" r="5.4"/>
							<circle id="dot-6" class="st0" cx="550.1" cy="19.4" r="5.4"/>
							<circle id="dot-7" class="st0" cx="692.5" cy="78.4" r="5.4"/>
						</g>
						<g>
							<polyline id="line-1" class="st1" points="11.5,9.7 165.6,91.3 254.5,40.9 370.2,11.1 493.7,56.9 550.2,19.4 		"/>
							<polyline id="line-2" class="st1" points="11.5,9.7 165.6,91.3 254.5,40.9 370.2,11.1 493.7,56.9 693,78.4 		"/>
						</g>
					</g>
					</svg>
				</div>
				<div class="header-info-text">
					<h1>六度分离</h1>
					<h1>“世界上每2个人之间只隔着6个人的距离”</h1>
					<h3>资讯源于分享，六度为您搭建信息的桥梁，帮助您每一次的投资与决策。</h3>
				</div>
				<div class="header-info-buttons">
					<button class="become-expert">成为专家</button>
					<button class="become-client">成为客户</button>
					<button class="recommend-expert">推荐专家</button>
					<button class="recommend-client">推荐客户</button>
				</div>
			</div>
		</div>
		<div class="popup-overlay-1">
			<div class="popup-become-expert">
				<div class="popup-title">
					<h1>成为专家</h1>
					<img class="close-form" src="<%=res%>/images/icons/close.svg">
				</div>	
				<form method="post" action="<%=basePath%>/index/postData1" enctype="multipart/form-data">
				 	<div class="infos">
				 		<div class="infos_label">姓名:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="username" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">行业:</div>	
				 		<div class="infos_input">
				 			<select class="iselect" name="industry">
				 				<option>工业</option>
				 				<option>地产</option>
				 				<option>金融</option>
				 				<option>法务</option>
				 				<option>银行</option>
				 				<option>教育</option>
				 				<option>互联网</option>
				 				<option>生命科学</option>
				 				<option>股权私募</option>
				 				<option>媒体</option>
				 				<option>电子通信</option>
				 				<option>保险</option>
				 				<option>零食</option>
				 				<option>个体经营</option>
				 				<option>服务</option>
				 				<option>医疗</option>
				 				<option>政府</option>
				 				<option>个人</option>
				 			</select>
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">电话:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="phone" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">公司（可选填）:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="company" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">电子邮箱（可选填）:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="email" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label clearfix">
				 			<span class="fleft">上传附件（个人简介）</span>
				 			<div class="blue f32 relative ifileswrap tc">
				 				<input type="file" name="file" class="ifiles absolute" value="">
				 			</div>
				 		</div>	
				 		<div class="ifilesname clearfix">
				 			<span class="fleft ifiles_text"></span>
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<input type="submit" value="提交" class="okbtn" />
				 	</div>
				</form>
			</div>
		</div>
		<div class="popup-overlay-2">
			<div class="popup-become-client">
				<div class="popup-title">
					<h1>成为客户</h1>
					<img class="close-form" src="<%=res%>/images/icons/close.svg">
				</div>	
				<form method="post" action="<%=basePath%>/index/postData2">
				 	<div class="infos">
				 		<div class="infos_label">姓名:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="username" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">行业:</div>	
				 		<div class="infos_input">
				 			<select class="iselect" name="industry">
				 				<option>工业</option>
				 				<option>地产</option>
				 				<option>金融</option>
				 				<option>法务</option>
				 				<option>银行</option>
				 				<option>教育</option>
				 				<option>互联网</option>
				 				<option>生命科学</option>
				 				<option>股权私募</option>
				 				<option>媒体</option>
				 				<option>电子通信</option>
				 				<option>保险</option>
				 				<option>零食</option>
				 				<option>个体经营</option>
				 				<option>服务</option>
				 				<option>医疗</option>
				 				<option>政府</option>
				 				<option>个人</option>
				 			</select>
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">电话:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="phone" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">公司（可选填）:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="company" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<div class="infos_label">电子邮箱（可选填）:</div>	
				 		<div class="infos_input">
				 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="email" />
				 		</div>	
				 	</div>
				 	<div class="infos">
				 		<input type="submit" value="提交" class="okbtn" />
				 	</div>
				</form>
			</div>
		</div>
		<div class="popup-overlay-3">
			<div class="popup-recommend-client">
				<div class="popup-title">
					<h1>推荐专家</h1>
					<img class="close-form" src="<%=res%>/images/icons/close.svg">
				</div>	
				<form method="post" action="<%=basePath%>/index/postData3">
					<div class="form-left">
						<h1>我是</h1>
					 	<div class="infos">
					 		<div class="infos_label">姓名:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="username" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">行业:</div>	
					 		<div class="infos_input">
					 			<select class="iselect" name="industry">
					 				<option>工业</option>
					 				<option>地产</option>
					 				<option>金融</option>
					 				<option>法务</option>
					 				<option>银行</option>
					 				<option>教育</option>
					 				<option>互联网</option>
					 				<option>生命科学</option>
					 				<option>股权私募</option>
					 				<option>媒体</option>
					 				<option>电子通信</option>
					 				<option>保险</option>
					 				<option>零食</option>
					 				<option>个体经营</option>
					 				<option>服务</option>
					 				<option>医疗</option>
					 				<option>政府</option>
					 				<option>个人</option>
					 			</select>
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电话:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="phone" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">公司（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="company" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电子邮箱（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="email" />
					 		</div>	
					 	</div>
					</div>
					<div class="form-right">
						<h1>我要推荐</h1>
					 	<div class="infos">
					 		<div class="infos_label">姓名:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="tjusername" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">行业:</div>	
					 		<div class="infos_input">
					 			<select class="iselect" name="tjindustry">
					 				<option>工业</option>
					 				<option>地产</option>
					 				<option>金融</option>
					 				<option>法务</option>
					 				<option>银行</option>
					 				<option>教育</option>
					 				<option>互联网</option>
					 				<option>生命科学</option>
					 				<option>股权私募</option>
					 				<option>媒体</option>
					 				<option>电子通信</option>
					 				<option>保险</option>
					 				<option>零食</option>
					 				<option>个体经营</option>
					 				<option>服务</option>
					 				<option>医疗</option>
					 				<option>政府</option>
					 				<option>个人</option>
					 			</select>
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电话:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="tjphone" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">公司（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="tjcompany" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电子邮箱（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="tjemail" />
					 		</div>	
					 	</div>
					</div>
				 	<div class="infos">
				 		<input type="submit" value="提交" class="okbtn" />
				 	</div>
				</form>
			</div>
		</div>
		<div class="popup-overlay-4">
			<div class="popup-recommend-client">
				<div class="popup-title">
					<h1>推荐客户</h1>
					<img class="close-form" src="<%=res%>/images/icons/close.svg">
				</div>	
				<form method="post" action="<%=basePath%>/index/postData4">
					<div class="form-left">
						<h1>我是</h1>
					 	<div class="infos">
					 		<div class="infos_label">姓名:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="username" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">行业:</div>	
					 		<div class="infos_input">
					 			<select class="iselect" name="industry">
					 				<option>工业</option>
					 				<option>地产</option>
					 				<option>金融</option>
					 				<option>法务</option>
					 				<option>银行</option>
					 				<option>教育</option>
					 				<option>互联网</option>
					 				<option>生命科学</option>
					 				<option>股权私募</option>
					 				<option>媒体</option>
					 				<option>电子通信</option>
					 				<option>保险</option>
					 				<option>零食</option>
					 				<option>个体经营</option>
					 				<option>服务</option>
					 				<option>医疗</option>
					 				<option>政府</option>
					 				<option>个人</option>
					 			</select>
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电话:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="phone" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">公司（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="company" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电子邮箱（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="email" />
					 		</div>	
					 	</div>
					</div>
					<div class="form-right">
						<h1>我要推荐</h1>
					 	<div class="infos">
					 		<div class="infos_label">姓名:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的姓名" name="tjusername" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">行业:</div>	
					 		<div class="infos_input">
					 			<select class="iselect" name="tjindustry">
					 				<option>工业</option>
					 				<option>地产</option>
					 				<option>金融</option>
					 				<option>法务</option>
					 				<option>银行</option>
					 				<option>教育</option>
					 				<option>互联网</option>
					 				<option>生命科学</option>
					 				<option>股权私募</option>
					 				<option>媒体</option>
					 				<option>电子通信</option>
					 				<option>保险</option>
					 				<option>零食</option>
					 				<option>个体经营</option>
					 				<option>服务</option>
					 				<option>医疗</option>
					 				<option>政府</option>
					 				<option>个人</option>
					 			</select>
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电话:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的电话" name="tjphone" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">公司（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的公司名称" name="tjcompany" />
					 		</div>	
					 	</div>
					 	<div class="infos">
					 		<div class="infos_label">电子邮箱（可选填）:</div>	
					 		<div class="infos_input">
					 			<input type="text" value="" class="itext"  placeholder="请输入您的email" name="tjemail" />
					 		</div>	
					 	</div>
					</div>
				 	<div class="infos">
				 		<input type="submit" value="提交" class="okbtn" />
				 	</div>
				</form>
			</div>
		</div>
		<section id="aboutus">
			<div id="aboutus-nav"></div>
			<div class="title">
					<h2>—&nbsp;&nbsp;ABOUT US 关于我们&nbsp;&nbsp;—</h2>
			</div>
			<div class="aboutus-inner">
				<div class="column">
					<div class="column-3  wow fadeInUp" data-wow-delay="0.05s">
						<img src="<%=res%>/images/icons/expert.png">
						<h2>50,000+的注册专家</h2>
						<p>覆盖100余个行业其中包括前任摩根斯坦利董事总经理、前任百胜中国区CEO、现任汇仁集团董事长、前任Nike 中国区CEO、前任浙江大学公管学院院长</p>
					</div>
					<div class="column-3  wow fadeInUp" data-wow-delay="0.10s">
						<img src="<%=res%>/images/icons/resume.png">
						<h2>1.6亿+个人简历</h2>
						<p>覆盖超过20个国家及地区的200余个行业其中包括小米、先锋集团、爱奇艺、Alibaba、Amazon、Tecent、Apple、Nike等国内外知名企业与机构。</p>
					</div>
					<div class="column-3  wow fadeInUp" data-wow-delay="0.15s">
						<img src="<%=res%>/images/icons/data.png">
						<h2>2000w企业级数据</h2>
						<p>我们与LinkedIn，猎聘，招聘及邓白氏建立深度战略合作关系，运用尖端的精算进行数据匹配，为客户精准定位行业专家，提供一手商业讯息。</p>
					</div>
				</div>
			</div>
		</section>
		<section id="team">
			<div id="team-nav"></div>
			<div class="title">
					<h2>—&nbsp;&nbsp;TEAM 核心团队&nbsp;&nbsp;—</h2>
			</div>
			<div class="team-inner">
				<div class="column">
					<div class="column-4 wow fadeInUp" data-wow-delay="0.05s">
						<img src="<%=res%>/images/photos/jasonchen.png">
						<h2>陈君宁 Jason Chen</h2>
						<h4>战略咨询项目负责人</h4>
						<p>硕士毕业于美国约翰霍普金斯[Johns Hopkins University]经济系原美国私募股权投资机构Icera Inc.投资分析师，Thirdbridge Consulting Group 项目经理。主要把控整体项目进度及人员调控,及公司战略规划。</p>
					</div>
					<div class="column-4 wow fadeInUp" data-wow-delay="0.10s">
						<img src="<%=res%>/images/photos/patrickli.png">
						<h2>李其祥 Patrick Li</h2>
						<h4>战略咨询顾问</h4>
						<p>硕士毕业于英国伦敦政治经济学院（London School of Economics and Political Science)管理学院原Thirdbridge Consulting Group 项目部经理主要负责公司组织架构建设及业务项目把控。</p>
					</div>
					<div class="column-4 wow fadeInUp" data-wow-delay="0.15s">
						<img src="<%=res%>/images/photos/timxu.png">
						<h2>许凌峰 Tim Xu</h2>
						<h4>渠道拓展负责人</h4>
						<p>毕业于美国明尼苏达大学（University of Minnesota, TwinCities）经济系原U.S.Bank投资分析师，Citibank业务拓展经理。主要负责咨询业务和品牌引进的渠道拓展，国内外投资机构的前期渠道铺垫。</p>
					</div>
					<div class="column-4 wow fadeInUp" data-wow-delay="0.20s">
						<img src="<%=res%>/images/photos/leewang.png">
						<h2>王立力 Lee Wang</h2>
						<h4>技术顾问</h4>
						<p>毕业于美国密歇根大学（University of Michigan, Ann Arbor）电子工程系原Patch.com 高级运营经理SalesForce(CRM)主管/数据分析主管，华为海外研发部硬件工程师负责公司IT部门运营，线上软件开发等各项技术支持。</p>
					</div>
				</div>
			</div>
		</section>
		<section id="service">
			<div id="service-nav"></div>
			<div class="title">
				<h2>—&nbsp;&nbsp;SERVICE 我们的服务&nbsp;&nbsp;—</h2>
			</div>
			<div class="service-inner">
				<div class="column">
					<div class="column-3 wow fadeInUp" data-wow-delay="0.05s">
						<div class="service-img-1"><h2>智囊报告</h2></div>
						<p class="service-p">我们根据客户的需求、结合市场热点，提供定制化的QA模式，邀请相关行业专家与我们的研究员进行问答式交流，并生成纪要。</p>
					</div>
					<div class="column-3 wow fadeInUp" data-wow-delay="0.10s">
						<div class="service-img-2"><h2>圆桌会议</h2></div>
						<p class="service-p">我们根据客户定制化的需求，在理解客户的问题与难点的基础上，精准定位相关行业专家，提供客户与专家间一对一的沟通与交流。</p>
					</div>
					<div class="column-3 wow fadeInUp" data-wow-delay="0.15s">
						<div class="service-img-3"><h2>线上分享</h2></div>
						<p class="service-p">通过我们线上平台与IT技术的结合，邀请行业专家在线影音视频直播，为客户提供针对性的服务及差异化的内容。</p>
					</div>
				</div>
			</div>
		</section>
		<section id="culture">
			<div id="culture-nav"></div>
			<div class="title">
				<h2>—&nbsp;&nbsp;CULTURE 我们的文化&nbsp;&nbsp;—</h2>
			</div>
			<div class="culture-inner">
				<div class="column" id="column-special">
					<div class="column-9 wow fadeInUp" data-wow-delay="0.05s" id="mobile-column-top">
						<img src="<%=res%>/images/icons/culture-1.svg">
						<p>All About Us的员工培养机制</p>
					</div>
					<div class="column-9" id="mobile-column-top">
					</div>
					<div class="column-9 wow fadeInUp" data-wow-delay="0.10s" id="mobile-column-top">
						<img src="<%=res%>/images/icons/culture-2.svg">
						<p>圆桌式沟通的企业文化理念</p>
					</div>
					<div class="column-9" id="mobile-column-top">
						<img class="culture-line" src="<%=res%>/images/icons/culture-line.svg">
					</div>
					<div class="column-9 wow fadeInUp" data-wow-delay="0.15s" id="mobile-column-top">
						<img src="<%=res%>/images/icons/culture-3.svg">
						<p>全球化企业文化</p>
					</div>
					<div class="column-9" id="column-9-special">
						<img class="culture-line" src="<%=res%>/images/icons/culture-line.svg">
					</div>
					<div class="column-9 wow fadeInUp" data-wow-delay="0.20s" id="mobile-column-bottom">
						<img src="<%=res%>/images/icons/culture-4.svg">
						<p>透明公正的职业道德和企业合规</p>
					</div>
					<div class="column-9" id="column-9-special">
						<img class="culture-line" src="<%=res%>/images/icons/culture-line.svg">
					</div>
					<div class="column-9 wow fadeInUp" data-wow-delay="0.25s" id="mobile-column-bottom">
						<img src="<%=res%>/images/icons/culture-5.svg">
						<p>Work With Boss的企业培养机制</p>
					</div>
				</div>
			</div>
		</section>
		<section id="contact">
			<div id="contact-nav"></div>
			<div class="title">
				<h2>—&nbsp;&nbsp;CONTACT 联系我们&nbsp;&nbsp;—</h2>
			</div>
			<div class="contact-inner">
				<div class="column" id="column-special">
					<div class="column-2-60 wow fadeInUp" data-wow-delay="0.05s">
						<div id="map"></div>
					</div>
					<div class="column-2-40 wow fadeInUp" data-wow-delay="0.20s">
						<h2 style="border-top: 1px solid #6e6e6e;border-bottom: 1px solid #6e6e6e;"><a href="tel:0571-85964415"><i class="fa fa-phone" aria-hidden="true"></i> 0571-87902187</h2></a>
						<h2 style="border-bottom: 1px solid #6e6e6e;"><i class="fa fa-map-marker" aria-hidden="true"></i> 杭州市西湖区文一西路西溪诚园中心2号楼一单元10楼</h2>
					</div>
				</div>
			</div>
		</section>
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
	<script src="http://webapi.amap.com/maps?v=1.3&amp;key=142c7c3ec454887de4a3d950c1d182c4&callback=init"></script>
	<script>
		$('.fa-weixin').click(function(){
		    $('.qr-code').fadeIn();
		});
		$('.qr-code').click(function(){
		    $(this).fadeOut();
		});
		var isMobile = {
		    Android: function() {
	        	return navigator.userAgent.match(/Android/i);
	    	},
		    any: function() {
		        return ( isMobile.Android());
		    }
		};
		if (isMobile.any()) {
			$('.header-info-text').css({'margin-top':'-150px'});
		}
	</script>
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
	<script>
		$(document).ready(function () {
    		$(document).on("scroll", onScroll);
    
		    //smoothscroll
		    $('a[href^="#"]').on('click', function (e) {
		        e.preventDefault();
		        $(document).off("scroll");
		        
		        $('a').each(function () {
		            $(this).removeClass('active');
		        })
		        $(this).addClass('active');
		      
		        var target = this.hash,
		            menu = target;
		        $target = $(target);
		        $('html, body').stop().animate({
		            'scrollTop': $target.offset().top+2
		        }, 500, 'swing', function () {
		            window.location.hash = target;
		            $(document).on("scroll", onScroll);
		        });
		    });
		});

		function onScroll(event){
		    var scrollPos = $(document).scrollTop();
		    $('.navigation nav a').each(function () {
		        var currLink = $(this);
		        var refElement = $(currLink.attr("href"));
		        if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
		            $('.navigation nav a').removeClass("active");
		            currLink.addClass("active");
		        }
		        else{
		            currLink.removeClass("active");
		        }
		    });
		}
	</script>
</body>
</html>