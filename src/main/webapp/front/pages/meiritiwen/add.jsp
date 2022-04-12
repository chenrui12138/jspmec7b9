<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
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
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
			margin: 0 auto;
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
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: rgba(255, 192, 1, 1);
			border-radius: 4px;
			border-width: 1px;
			border-style: solid;
			border-color: #DCDFE6;
			background-color: rgba(11, 11, 11, 1);
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
		}
	</style>
	<body>


		<div id="app">
		
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-10px auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container">
		
				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">账号：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhanghao" type="text" :readonly="ro.zhanghao" name="zhanghao" id="zhanghao" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">姓名：</label>
						<div class="layui-input-block">
							<input v-model="detail.xingming" type="text" :readonly="ro.xingming" name="xingming" id="xingming" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">身份证：</label>
						<div class="layui-input-block">
							<input v-model="detail.shenfenzheng" type="text" :readonly="ro.shenfenzheng" name="shenfenzheng" id="shenfenzheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">手机：</label>
						<div class="layui-input-block">
							<input v-model="detail.shouji" type="text" :readonly="ro.shouji" name="shouji" id="shouji" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">性别：</label>
						<div class="layui-input-block">
							<input v-model="detail.xingbie" type="text" :readonly="ro.xingbie" name="xingbie" id="xingbie" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">当前温度：</label>
						<div class="layui-input-block">
							<input v-model="detail.dangqianwendu" type="text" :readonly="ro.dangqianwendu" name="dangqianwendu" id="dangqianwendu" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">探测时间：</label>
						<div class="layui-input-block">
							<input type="text" name="tanceshijian" id="tanceshijian" autocomplete="off" class="layui-input" >
						</div>
					</div>
		            
		
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        zhanghao : false,
                                        xingming : false,
                                        shenfenzheng : false,
                                        shouji : false,
                                        xingbie : false,
                                        zhuzhi : false,
                                        dangqianwendu : false,
                                        tanceshijian : false,
                                        beizhu : false,
					},
                    detail: {
                        zhanghao: '',
                        xingming: '',
                        shenfenzheng: '',
                        shouji: '',
                        xingbie: '',
                        zhuzhi: '',
                        dangqianwendu: '',
                        tanceshijian: '',
                        beizhu: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
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

                                jquery('#tanceshijian').val(getCurDateTime());
				laydate.render({
					elem: '#tanceshijian',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='zhanghao'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.zhanghao = true;
                                continue;
                        }
                        if(key=='xingming'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.xingming = true;
                                continue;
                        }
                        if(key=='shenfenzheng'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.shenfenzheng = true;
                                continue;
                        }
                        if(key=='shouji'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.shouji = true;
                                continue;
                        }
                        if(key=='xingbie'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.xingbie = true;
                                continue;
                        }
                        if(key=='zhuzhi'){
                                vue.detail[`${key}`] = data[`${key}`]
                                vue.ro.zhuzhi = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='zhanghao'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zhanghao = true;
                                                continue;
                                        }
                                        if(o=='xingming'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xingming = true;
                                                continue;
                                        }
                                        if(o=='shenfenzheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shenfenzheng = true;
                                                continue;
                                        }
                                        if(o=='shouji'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shouji = true;
                                                continue;
                                        }
                                        if(o=='xingbie'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xingbie = true;
                                                continue;
                                        }
                                        if(o=='zhuzhi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zhuzhi = true;
                                                continue;
                                        }
                                        if(o=='dangqianwendu'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dangqianwendu = true;
                                                continue;
                                        }
                                        if(o=='tanceshijian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.tanceshijian = true;
                                                jquery('#tanceshijian').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='beizhu'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.beizhu = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('meiritiwen/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算
                                            // 提交数据
                                            http.requestJson('meiritiwen' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算
                                // 提交数据
                                http.requestJson('meiritiwen' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
