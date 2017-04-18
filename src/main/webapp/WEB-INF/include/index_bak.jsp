<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/common/uri.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>六度智囊</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="keywords" content="六度智囊 智囊 咨询 战略 行业" />
	<meta name="description"
		content="六度智囊 智囊 咨询 战略 行业" />
	<link rel="shortcut icon" type="image/x-icon"
	href="<%=res%>/images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="<%=res%>/css/base.css">
</head>
<body>
	<div id="header" class="header clearfix">
		<h1 class="logo fleft"></h1>
		<div class="menu fleft ml_25" id="menu">
				<a href="#home" title="" class="active">首页</a>
				<a href="#aboutus" title="" class="">关于我们</a>
				<a href="#team" title="" class="">核心团队</a>
				<a href="#service" title="" class="">我们的服务</a>
				<a href="#culture" title="" class="">我们的文化</a>
				<a href="#contact" title="" class="">联系我们</a>
		</div>
	</div>header end
	<div class="contentwrap" id="fullpage">
	<div class="content  tc relative section section1">
		<div class="banner flex2 relative tc">
			<svg id="tester" class="svgbg" >
				<!-- <g fill="none" stroke="#bc1515" stroke-width="2">
				    <path stroke-dasharray="6,6" d="M1034 143,965 433,827 82,621 367,440 17,407 104,182 186" />
				</g> -->
			</svg>
			<div class="f48 bold o1 ">六度分离</div>
			<div class="f48 pt_25 o2 ">“ 世界上每2个人之间只隔着6个人的距离 ”</div>
			<div class="f29 cbd pt_20 o3">	资讯源于分享，六度为您搭建信息的桥梁，帮助您每一次的投资与决策。
			</div>
			<div class="f29 abtnbox pt_20" style="z-index:9;">
				<a href="#" title="" class="abtn" index="1" data="加入我们">成为专家</a>
				<a href="#" title="" class="abtn" index="2" data="联系我们">成为客户</a>
				<a href="#" title="" class="abtn" index="3" data="推荐专家">推荐专家</a>
				<a href="#" title="" class="abtn abtnlast" index="4" data="推荐客户">推荐客户</a>
			</div>
		</div>
		<div class="gobox absolute"><a href="#aboutus" title="" class="icon icon_gobtn_white inlineblock "></a></div>
	</div><!-- content end end-->
	<div class="content content_mapbg_white tc relative section section2" >
		<div class="title tc">
			<div class="f36 title_i">关于我们</div>
			<span class="inlineblock titleline"></span>
		</div>
		<div class="content_i flex2">
			<div class="f36">我们为您配对全球资深专家，洞悉最真实的行业信息。</div>
			<div class="f24 pt_25 p2">六度的理念告诉我们每一个人要充分相信和利用自己的人脉。因为，</div>
			<div class="f24 pt_20 p3">只需要小小的六步，它可以让你认识每个行业的每个人。</div>
		</div>
		<div class="gobox absolute"><a href="#team" title="" class="icon icon_gobtn inlineblock "></a></div>
	</div><!-- content end end-->
	<div class="content content_mapbg tc relative section section3" >
		<div class="title tc" style="padding-top: 80px;">
			<div class="f36 title_i">核心团队</div>
			<span class="inlineblock titleline_white"></span>
		</div>
		<div class="content_ii tc">
			<ul class="tximgul">
				<li>
					<div class="tximg tximg1"></div>
					<p class="f14 yellow pt_20">陈君宁</p>
					<p class="f14 yellow pt_10">Jason Chen </p>
					<p class="f16 pt_10">战略咨询项目负责人</p>
					<p class="f12 pt_10">硕士毕业于美国约翰霍普金斯</p>
					<p class="f12 pt_10">（Johns Hopkins University）经济系</p>
					<p class="f12 pt_10">原美国私募股权投资机构Icera Inc.投资分析师，</p>
					<p class="f12 pt_10">Thirdbridge Consulting Group 项目经理。</p>
					<p class="f12 pt_10">主要把控整体项目进度及人员调控,及公司战略规划.</p>
				</li>
				<li>
					<div class="tximg tximg2"></div>
					<p class="f14 yellow pt_20">李其祥</p>
					<p class="f14 yellow pt_10">Patrick Li</p>
					<p class="f16 pt_10">战略咨询顾问</p>
					<p class="f12 pt_10">硕士毕业于英国伦敦政治经济学院</p>
					<p class="f12 pt_10">（London School of Economics and Political Science)管理学院</p>
					<p class="f12 pt_10">原Thirdbridge Consulting Group 项目部经理</p>
					<p class="f12 pt_10">Thirdbridge Consulting Group 项目经理。</p>
					<p class="f12 pt_10">主要负责公司组织架构建设及业务项目把控。</p>
				</li>
				<li>
					<div class="tximg tximg3"></div>
					<p class="f14 yellow pt_20">许凌峰</p>
					<p class="f14 yellow pt_10">Tim Xu</p>
					<p class="f16 pt_10">渠道拓展负责人</p>
					<p class="f12 pt_10">毕业于美国明尼苏达大学</p>
					<p class="f12 pt_10">（University of Minnesota, Twin Cities）经济系</p>
					<p class="f12 pt_10">原U.S.Bank投资分析师，Citibank业务拓展经理</p>
					<p class="f12 pt_10">主要负责咨询业务和品牌引进的渠道拓展，</p>
					<p class="f12 pt_10">国内外投资机构的前期渠道铺垫。</p>
				</li>
				<li class="last">
					<div class="tximg tximg4"></div>
					<p class="f14 yellow pt_20">王立力</p>
					<p class="f14 yellow pt_10">Lee Wang</p>
					<p class="f16 pt_10">技术顾问</p>
					<p class="f12 pt_10">毕业于美国密歇根大学</p>
					<p class="f12 pt_10">（University of Michigan, Ann Arbor）电子工程系</p>
					<p class="f12 pt_10">原Patch.com 高级运营经理</p>
					<p class="f12 pt_10">SalesForce(CRM)主管/数据分析主管，</p>
					<p class="f12 pt_10">华为海外研发部硬件工程师</p>
					<p class="f12 pt_10">负责公司IT部门运营，线上软件开发等各项技术支持。</p>
				</li>
			</ul>
		</div>
		<div class="gobox absolute"><a href="#service" title="" class="icon icon_gobtn_white inlineblock "></a></div>
	</div><!-- content end end-->
	
	<div class="content tc relative section section4 content_mapbg_white">
		<div class="title tc">
			<div class="f36 title_i">我们的服务</div>
			<span class="inlineblock titleline"></span>
		</div>
		<div class="content_i flex2 p1">
			<div class="f36">我们是分享经济的延伸 商业资讯行业的变革</div>
			<div class="f24 pt_25 p2">六度智囊通过创新式报告模式及线上直播分享模式与大数据技术的结合，</div>
			<div class="f24 pt_20 p3">精准定位本土及海外市场，致力于服务全行业机构及企业，</div>
			<div class="f24 pt_20 p4">以发展成为行业一流专家智囊机构为目标。</div>
		</div>
		<div class="gobox absolute"><a href="#culture" title="" class="icon icon_gobtn inlineblock "></a></div>
	</div><!-- content end end-->
	<div class="content content_mapbg relative section section5">
		<div class="title tc">
			<div class="f36 title_i">我们的文化</div>
			<span class="inlineblock titleline titleline_white"></span>
		</div>
		<ul class="cultureul tc">
			<li class="inlineblock">
				<div class="inlineblock icon_culture icon_culture1"></div>
				<p class="mt_20 f16">培养机制</p>
				<p class="pt_10">All About Us的员工</p>
				<p class="pt_10">培养机制</p>
			</li>
			<li class="inlineblock">
				<div class="inlineblock icon_culture icon_culture2"></div>
				<p class="mt_20 f16">文化理念</p>
				<p class="pt_10">圆桌式沟通的企业</p>
				<p class="pt_10">文化理念</p>
			</li>
			<li class="inlineblock">
				<div class="inlineblock icon_culture icon_culture3"></div>
				<p class="mt_20 f16">企业文化</p>
				<p class="pt_10">全球化多元化的</p>
				<p class="pt_10">企业文化</p>
			</li>
			<li class="inlineblock">
				<div class="inlineblock icon_culture icon_culture4"></div>
				<p class="mt_20 f16">企业合规</p>
				<p class="pt_10">透明公正的职业道德与企业</p>
				<p class="pt_10">合规</p>
			</li>
			<li class="inlineblock last">
				<div class="inlineblock icon_culture icon_culture5"></div>
				<p class="mt_20 f16">办公制度</p>
				<p class="pt_10">Work With Boss的企业</p>
				<p class="pt_10">办公制度</p>
			</li>
		</ul>
		<div class="gobox absolute tc"><a href="#contact" title="" class="icon icon_gobtn_white inlineblock "></a></div>
	</div><!-- content end end-->
	
	<div class="content content_mapbg2 content_mapbg_white relative section section6">
		<div class="title tc">
			<div class="f36 title_i">联系我们</div>
			<span class="inlineblock titleline"></span>
		</div>
		<div class="content_i content_i_f flex2">
			<div class="f32">杭州市西湖区文一西路西溪诚园中心2号楼10楼</div>
			<div class="f32 pt_15">0571-87902187</div>
		</div>
		<ul class="emailul tc">
			<li class="inlineblock">
				<p class="f20">咨询</p>
				<p class="f16 pt_15">info@6vidu.com</p>
			</li>
			<li class="inlineblock">
				<p class="f20">加入我们</p>
				<p class="f16 pt_15">career@6vidu.com</p>
			</li>
			<li class="inlineblock">
				<p class="f20">新闻</p>
				<p class="f16 pt_15">press@6vidu.com</p>
			</li>
			<li class="inlineblock last">
				<p class="f20">法律</p>
				<p class="f16 pt_15">compliance@6vidu.com</p>
			</li>
		</ul>
		<div class="gobox absolute"><a href="#culture" title="" class="icon icon_gobtn_white inlineblock "></a></div>
	</div><!-- content end end-->
	</div><!-- contentwrap end end-->
	 


	 <!--alert alert alert alert alert -->
	<!--成为专家 -->
	<div class="alert1 hiddens">
		<form action="/index/postData1" method="post" enctype="multipart/form-data" >
		 <div class="alert1_i">
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
		 				<span>+</span>
		 				<input type="file" name="file" class="ifiles absolute" value="">
		 			</div>
		 		</div>	
		 		<div class="ifilesname clearfix">
		 			<span class="fleft ifiles_text"></span>
		 			<span class="blue f32 ifiles_del fleft">_</span>
		 		</div>	
		 	</div>
		 	<div class="infos">
		 		<input type="submit" value="提交" class="okbtn" />
		 	</div>
		 </div>
		 </form>
	</div><!--alert1 end-->


	<!--成为客户 -->
	<div class="alert2 hiddens">
		<form action="/index/postData2" method="post" >
		 <div class="alert2_i">
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
		 </div>
		 </form>
	</div><!--alert2 end-->


	<!--推荐专家 -->
	<div class="alert3 hiddens">
		<form action="/index/postData3" method="post" >
		<div class="alert3_i clearfix">
		<div class="fleft pl_53">
			<div class="infos">
			我是
			</div>
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
		 <div class="fleft pl_53">
		 	<div class="infos">
			我要推荐
			</div>
		 	<div class="infos">
		 		<div class="infos_label">姓名:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的姓名" name="tjusername" />
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
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的电话" name="tjphone" />
		 		</div>	
		 	</div>
		 	<div class="infos">
		 		<div class="infos_label">公司（可选填）:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的公司名称" name="tjcompany" />
		 		</div>	
		 	</div>
		 	<div class="infos">
		 		<div class="infos_label">电子邮箱（可选填）:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的email" name="tjemail" />
		 		</div>	
		 	</div>
		 	
		 </div>
		 <div class="infos pl_53">
		 		<input type="submit" value="提交" class="okbtn" />
		 	</div>
		 </div><!--alert3_i end-->

		 </form>
	</div><!--alert3 end-->

	<!--推荐专家 -->
	<div class="alert4 hiddens">
		<form action="/index/postData4" method="post" >
		<div class="alert4_i clearfix">
		<div class="fleft pl_53">
			<div class="infos">
			我是
			</div>
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
		 <div class="fleft pl_53">
		 	<div class="infos">
			我要推荐
			</div>
		 	<div class="infos">
		 		<div class="infos_label">姓名:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的姓名" name="tjusername" />
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
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的电话" name="tjphone" />
		 		</div>	
		 	</div>
		 	<div class="infos">
		 		<div class="infos_label">公司（可选填）:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的公司名称" name="tjcompany" />
		 		</div>	
		 	</div>
		 	<div class="infos">
		 		<div class="infos_label">电子邮箱（可选填）:</div>	
		 		<div class="infos_input">
		 			<input type="text" value="" class="itext"  placeholder="请输入被推荐人的email" name="tjemail" />
		 		</div>	
		 	</div>
		 	
		 </div>
		 <div class="infos pl_53">
		 		<input type="submit" value="提交" class="okbtn" />
		 	</div>
		 </div><!--alert4_i end-->

		 </form>
	</div><!--alert4 end-->
</body>
<script type="text/javascript" src="<%=res%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=res%>/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=res%>/js/fullpage.js"></script>
<script type="text/javascript" src="<%=res%>/js/walkway.min.js"></script>
<script type="text/javascript" src="<%=res%>/js/default.js"></script>
<javascript>

</javascript>
</html>