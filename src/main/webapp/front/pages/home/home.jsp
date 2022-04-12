<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
		}
		#app {
			position: relative;
			z-index: 1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 30px;
			height: 6px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 6px;
			background-color: #f7f7f7;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv1 .box .list .list-item {
			flex: 0 0 ${var1}%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend .recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend .lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv2 .box .list .list-item {
			flex: 0 0 ${var2}%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	.line1 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.line2 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.line3 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0deg) skew(0deg, 1deg);
			transition: all 0.95s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.0) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 10px, 0px) scale(1.05) rotate(0deg) skew(-2deg, -1deg);
			transition: all 0.98s;
			z-index: 2;
			position: relative;
		}
		
		.index-pv1 .animation-box img:hover {
			transform: perspective($template2.front.index.recommend.imgAnimation.perspective) translate3d($template2.front.index.recommend.imgAnimation.translate3d) scale($template2.front.index.recommend.imgAnimation.scale) rotate($template2.front.index.recommend.imgAnimation.rotate) skew($template2.front.index.recommend.imgAnimation.skew);
			transition: all $template2.front.index.recommend.imgAnimation.time;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box img:hover {
			transform: perspective($template2.front.index.news.imgAnimation.perspective) translate3d($template2.front.index.news.imgAnimation.translate3d) scale($template2.front.index.news.imgAnimation.scale) rotate($template2.front.index.news.imgAnimation.rotate) skew($template2.front.index.news.imgAnimation.skew);
			transition: all $template2.front.index.news.imgAnimation.time;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box img:hover {
			transform: perspective($template2.front.index.lists.imgAnimation.perspective) translate3d($template2.front.index.lists.imgAnimation.translate3d) scale($template2.front.index.lists.imgAnimation.scale) rotate($template2.front.index.lists.imgAnimation.rotate) skew($template2.front.index.lists.imgAnimation.skew);
			transition: all $template2.front.index.lists.imgAnimation.time;
			z-index: 2;
			position: relative;
		}
	  
		.swiper-new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-10px auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="baseurl+item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->



            <!-- 推荐 -->
				<div class="recommend index-pv1" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0px  0 10px 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0px","borderWidth":"0","borderStyle":"solid"}'>
				  <div class="box" style='width:85%'>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"20px 0 20px 0px","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 1)","color":"rgba(255, 192, 1, 1)","borderRadius":"32px","alignItems":"center","borderWidth":"0 0px","fontSize":"18px","borderStyle":"solid"}'>
				      <span>Recommend</span><span>社区文化推荐</span>
				    </div>
					<div class="list-4" style="flex-direction: column;align-items: center;">
						<div class="list-4-body" style="display: flex;flex-direction: row;">
									<div v-if="shequwenhuaRecommend.length>0" @click="jump('../shequwenhua/detail.jsp?id='+shequwenhuaRecommend[0].id)" class="list-4-item animation-box item-1" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0 20px 20px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0 ","borderWidth":"0","width":"630px","borderStyle":"solid","height":"380px"}'>
									  <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shequwenhuaRecommend[0].fengmian?baseurl+shequwenhuaRecommend[0].fengmian.split(',')[0]:''" alt="" />
									  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0 -10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0px 0px 0px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 52, 114, 1)","textAlign":"center","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' class="list-4-item-title">{{shequwenhuaRecommend[0].biaoti}}</div>
									  </div>
									</div>
									<div v-if="shequwenhuaRecommend.length>1" @click="jump('../shequwenhua/detail.jsp?id='+shequwenhuaRecommend[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0 0 20px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"630px","borderStyle":"solid","height":"380px"}'>
									  <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shequwenhuaRecommend[1].fengmian?baseurl+shequwenhuaRecommend[1].fengmian.split(',')[0]:''" alt="" />
									  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0 -10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0px 0px 0px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 52, 114, 1)","textAlign":"center","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' class="list-4-item-title">{{shequwenhuaRecommend[1].biaoti}}</div>
									  </div>
									</div>
						</div>
					    <div class="list-4-body" style="display: flex;flex-direction: row;">
								<div v-if="shequwenhuaRecommend.length>2" @click="jump('../shequwenhua/detail.jsp?id='+shequwenhuaRecommend[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"420px","borderStyle":"solid","height":"300px"}'>
								  <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shequwenhuaRecommend[2].fengmian?baseurl+shequwenhuaRecommend[2].fengmian.split(',')[0]:''" alt="" />
								  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0 -10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
									<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0px 0px 0px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 52, 114, 1)","textAlign":"center","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' class="list-4-item-title">{{shequwenhuaRecommend[2].biaoti}}</div>
								  </div>
								</div>
					    			<div v-if="shequwenhuaRecommend.length>3" @click="jump('../shequwenhua/detail.jsp?id='+shequwenhuaRecommend[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"420px","borderStyle":"solid","height":"300px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shequwenhuaRecommend[3].fengmian?baseurl+shequwenhuaRecommend[3].fengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0 -10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0px 0px 0px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 52, 114, 1)","textAlign":"center","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' class="list-4-item-title">{{shequwenhuaRecommend[3].biaoti}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="shequwenhuaRecommend.length>4" @click="jump('../shequwenhua/detail.jsp?id='+shequwenhuaRecommend[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0, .3)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"400px","borderStyle":"solid","height":"300px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="shequwenhuaRecommend[4].fengmian?baseurl+shequwenhuaRecommend[4].fengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0 -10px 0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0px 0px 0px 0px","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 52, 114, 1)","textAlign":"center","borderRadius":"0 0 12px 12px","borderWidth":"0","width":"100%","lineHeight":"40px","fontSize":"16px","borderStyle":"solid"}' class="list-4-item-title">{{shequwenhuaRecommend[4].biaoti}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../shequwenhua/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 1px rgba(255,0,0,0)","margin":"15px auto","borderColor":"#ccc","backgroundColor":"rgba(14, 13, 13, 1)","color":"rgba(255, 192, 1, 1)","borderRadius":"6px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(255, 192, 1, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
				  </div>
				</div>
			<!-- 推荐 -->

            

			<!-- 新闻资讯 -->
				<div class="news index-pv2" style="display: flex;justify-content: center;width:100%" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-10px 0 0 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(14, 13, 13, 1)","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
				  <div class="box" style='width:85%'>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"20px 0 20px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(16, 15, 15, 1)","color":"rgba(255, 192, 1, 1)","borderRadius":"20px","alignItems":"center","borderWidth":"0px","fontSize":"18px","borderStyle":"solid"}'>
				      <span>HOME NEWS</span><span>通知公告</span>
				    </div>
					
					<div v-if="newsList.length" class="new-list-9" style="display: flex;flex-wrap: wrap;align-items: center;">
					  <div v-for="(item,index) in newsList" v-if="index<6" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"5px 2%","borderColor":"#fff","backgroundColor":"rgba(255, 192, 1, 1)","borderRadius":"20px","borderWidth":"0 0 1px 0","width":"46%","borderStyle":"solid","height":"120px"}' class="new9-list-item" style="box-sizing: border-box;cursor: pointer;display: flex;width: 50%;flex-direction: column;">
					    <div class="new9-list-body" style="display: flex;justify-content: space-between;align-items: center;">
					      <div :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":" 0","borderColor":"#ccc","backgroundColor":"rgba(255,0,0,0)","color":"rgba(141, 75, 187, 1)","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"28px","fontSize":"17px","borderStyle":"solid"}' style="box-sizing: border-box;flex: 1;" class="new9-list-item-title line1">{{ item.title }}</div>
					      <div :style='{"padding":"0 6px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(255, 192, 1, 1)","color":"rgba(141, 75, 187, 1)","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"21px","fontSize":"12px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
					    </div>
					    <div :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"12px 0 0 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(18, 17, 18, 1)","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new9-list-item-descript line2">{{ item.introduction }}</div>
					    <div style="display: flex">
					      <div :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,.3)","margin":"15px 0 0 0","borderColor":"#ccc","backgroundColor":"rgba(153,153,153,.5)","color":"#efefef","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"18px","fontSize":"12px","text":"","borderStyle":"solid"}' class="new9-list-item-identification"></div>
					    </div>
					  </div>
					</div>
					
				    <div class="clear"></div>
				    <div style="text-align: center;">
					<button @click="jump('../news/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 1px rgba(255,0,0,0)","margin":"15px auto","borderColor":"#ccc","backgroundColor":"rgba(14, 13, 13, 1)","color":"rgba(255, 192, 1, 1)","borderRadius":"6px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(255, 192, 1, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
				  </div>
				</div>
			<!-- 新闻资讯 -->

			

			<!-- 图文列表 -->


		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					shequwenhuaRecommend: [],





                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#swiper',
								width: '100%',
								height: '600px',
								arrow: 'always',
								anim: 'default',
								autoplay: 'true',
								interval: '3300',
								indicator: 'none'
							});
						})
					}
				});
                

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
						console.log('rightNewsList',rightNewsList,vue.rightNewsList)
					}
					
					let flag = 9;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					// options.on = {
					// 	click: function(e) {
					// 		let id = e.target.name
					// 		jump('../news/detail.jsp?id='+e.target.name)
					// 	}
					// }
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let sixSwiper = {
							loop: true,
							speed: 2500,
							slidesPerView: 3,
							spaceBetween: 10,
							centeredSlides: true,
							watchSlidesProgress: true,
							autoplay: {
							  delay: 0,
							  stopOnLastSlide: false,
							  disableOnInteraction: false
							}
						}
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', sixSwiper)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "shequwenhua/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
				}, function(res) {
					vue.shequwenhuaRecommend = res.data.list
					let flag = 9;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					
					// options.on = {
					// 	click: function(e) {
					// 		let id = e.target.name
					// 		jump('../shequwenhua/detail.jsp?id='+e.target.name)
					// 	}
					// }
					if(flag == 3) {
						vue.$nextTick(() => {
								new Swiper ('#recommendshequwenhua', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipershequwenhua', {
								loop: true,
								speed: 500,
								slidesPerView: 5,
								spaceBetween: 10,
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				


				
			});
		</script>
	</body>
</html>
